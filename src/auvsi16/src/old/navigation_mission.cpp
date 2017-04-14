#include "../include/auvsi16/basic_mission_function.hpp"
#include <std_msgs/String.h>

void nodeSelectCB(const std_msgs::String& msg);
void 	gpsVelocityCB		(const geometry_msgs::TwistStamped& msg);
void 	sonarDataCB			(const auvsi16::sonarData& msg);
void 	imageReceiveCB	(const sensor_msgs::ImageConstPtr& msg);
int	 	imageProcessing	(Mat imgInput, int low_hue, int high_hue, int minimum_area, int *detected_center_x, int *detected_center_y, double *contour_area, double* detected_radius);

int			first_buoy_x				= 0;
int 		first_buoy_y 				= 0;
double	first_buoy_area			= 0;
double 	first_radius_buoy		= 0;
int 		second_buoy_x				= 0;
int			second_buoy_y 			= 0;
double 	second_buoy_area		= 0;
double 	second_buoy_radius	= 0;
std_msgs::String node_status;
std_msgs::String node_feedback;

double gps_vel_x;
double gps_vel_y;
double gps_vel_z;

int sonar_data[13];

int main(int argc, char **argv){

	ros::init(argc, argv, "navigation_mission");
	ros::NodeHandle nh;
	image_transport::ImageTransport it(nh);
	setBMFConfiguration(nh);

	usleep(100000);
	changePID(0.3, 0, 0);

	image_transport::Subscriber sub_video 	 = it.subscribe("/auvsi16/video/front", 1, imageReceiveCB); // Topik subscribe: auvsi16/video
	ros::Subscriber sub_sonar_data = nh.subscribe("auvsi16/sonar_data", 1, sonarDataCB);
	ros::Subscriber sub_gps_vel = nh.subscribe("/mavros/global_position/raw/gps_vel", 1, gpsVelocityCB);

	ros::Publisher pub_run_status		= nh.advertise<std_msgs::String>("/auvsi16/mission/navigation/status", 16);
	ros::Publisher pub_node_select 	= nh.advertise<std_msgs::String>("/auvsi16/node/select", 16,true);
	ros::Subscriber sub_node_select = nh.subscribe("/auvsi16/node/select", 10, nodeSelectCB);

	ROS_WARN_STREAM("Waiting for navigation mission selected.");
	while (ros::ok() && node_status.data != "nm:navigation.start"){
				ros::spinOnce();
	}

	// this it to whether image_received is empty or not, move this to a function.
	while (ros::ok() && image_received.empty()){
		ros::spinOnce();
	}

	while (ros::ok()){

		ros::spinOnce();	// read frame
		double compass_hdg_at_capture = compass_hdg;
		int red_buoy = imageProcessing(image_received, 166, 179,0, &second_buoy_x, &second_buoy_y, &second_buoy_area, &second_buoy_radius);
		ROS_INFO_STREAM("Compass Heading : " << compass_hdg);
		ROS_INFO_STREAM("Compass Heading Current: " << compass_hdg_at_capture);
		ROS_INFO_STREAM("Latitude : " << global_position.latitude);
		ROS_INFO_STREAM("Longitude : " <<  global_position.longitude);
		ROS_INFO_STREAM("X Position : " << second_buoy_x);
		//ROS_WARN_STREAM("Detected Red Buoy : " << red_buoy);
		if (areaCheck(second_buoy_x, 320, 2)){
			compass_hdg = compass_hdg_at_capture + 10;
			if (compass_hdg  > 360){
				compass_hdg = compass_hdg - 360;
			}

			if(moveForward(40)){
				ROS_WARN_STREAM("Set Waypoint Success!");
			}
			else {
				ROS_WARN_STREAM("Set Waypoint Failed!");
			}

			ROS_WARN_STREAM("Destination Set!");
			if(changeFlightMode("AUTO")){
				ROS_WARN_STREAM("Changed to AUTO!");
			}
			else {

				ROS_ERROR_STREAM("Failed changing to AUTO!");
			}


				node_feedback.data = "nc:navigation.end";
			  pub_node_select.publish(node_feedback);
				ros::shutdown();
			// if flightmode is HOLD, continue code
		}
		overrideRCControl(320, second_buoy_x, BASESPEED, 0);

	}
}

int imageProcessing(Mat imgInput, int low_hue, int high_hue, int minimum_area, int *detected_center_x, int *detected_center_y, double *contour_area, double* detected_radius){

	Mat imgOriginal = imgInput.clone();
	int iLowH 	= low_hue;	// yellow = 15, red = 166
	int iHighH 	= high_hue;	// yellow = 29, red = 179

	int iLowS	= 40; // lower this to allow more noise, 80 is normal
	int iHighS 	= 184;

	int iLowV 	= 138; // lower this to allow more noise
	int iHighV 	= 255;

	GaussianBlur( imgOriginal, imgOriginal, Size( 5, 5 ), 0, 0 );

	Mat imgHSV;
	cvtColor(imgOriginal, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV

	Mat imgThresholded;

	inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded); //Threshold the image

	//morphological opening (removes small objects from the foreground)
	erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
	dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

	//morphological closing (removes small holes from the foreground)
	dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) );
	erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;
	Point2f center;
	float radius;
	findContours(imgThresholded, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0,0));

	int largest_bouy_area = 0;
	int largest_bouy_id = 0;
	int number_of_detected_buoy = 0;
	for( int i = 0; i< contours.size(); i++ ){
		double a = contourArea( contours[i],false);  //  Find the area of contour
		if(a > largest_bouy_area && a > minimum_area){
			largest_bouy_area = a;
			largest_bouy_id = i;                //Store the index of largest contour
			minEnclosingCircle( contours[i], center, radius);
		}
		if(largest_bouy_area > minimum_area){
			number_of_detected_buoy++;
		}
	}

	if(largest_bouy_area > minimum_area){
		*detected_center_x	=	(int)center.x;
		*detected_center_y	=	(int)center.y;
		*contour_area		=	largest_bouy_area;
		*detected_radius	=	radius;
	}

	return number_of_detected_buoy;
}


void sonarDataCB(const auvsi16::sonarData& sonar_recv){

	for(int i=0; i < 13; i++) sonar_data[i] = sonar_recv.data[i];
}

void gpsVelocityCB(const geometry_msgs::TwistStamped& msg){

	gps_vel_x = msg.twist.linear.x;
	gps_vel_y = msg.twist.linear.y;
	gps_vel_z = msg.twist.linear.z;

}

void imageReceiveCB(const sensor_msgs::ImageConstPtr& msg){

	try {
		image_received  = cv_bridge::toCvCopy(msg, "bgr8")->image;		// use cv_bridge::toCvCopy instead of cv_bridge::toCvShare to process a mat data
	}

	catch (cv_bridge::Exception& e){
		ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
	}
}

void nodeSelectCB(const std_msgs::String& msg){

	node_status.data = msg.data;
}
