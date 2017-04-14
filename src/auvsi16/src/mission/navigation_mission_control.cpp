#include "../../include/auvsi16/basic_mission_function.hpp"
#include "../../include/auvsi16/auvsi16_general.hpp"
#include <std_msgs/String.h>
#include <std_msgs/Int16.h>
#include <auvsi16/ImageProcessing.h>
#include "mavros_msgs/State.h"

#define	 MIN_GROUND_SPEED 0.2

void nodeSelectCB(const std_msgs::String& msg);
void imageProcessingCB				(const auvsi16::ImageProcessing& msg);
void stateCB									(const mavros_msgs::State& msg);
bool checkAUTOCruise					();
void checkGroundSpeed					();
bool changeFlightModeDebug		(string fm);
void vfrHUDCB									(const mavros_msgs::VFR_HUD& msg);
void startAUTOandChecker			();
ros::Publisher pub_imgproc_select;

double	ground_speed = 0;
bool		imgproc_status = false;
int 		center_buoy_x	= 0;
int 		center_buoy_y = 0;
double	buoy_area			= 0;
double 	radius_buoy		= 0;
int 		buoy_number  	= 0;
int 	arena_distance	= 46;
double first_lat;
double first_long;
double second_lat;
double second_long;

std_msgs::String node_status;
std_msgs::String node_feedback;
string										state;
int main(int argc, char **argv){

	ros::init(argc, argv, "navigation_mission_simple");
	ros::NodeHandle nh("~");

	nh.getParam("arena_distance", arena_distance);
	nh.getParam("first_lat", first_lat);
	nh.getParam("first_long", first_long);
	nh.getParam("second_lat", second_lat);
	nh.getParam("second_long", second_long);
	image_transport::ImageTransport it(nh);
	setBMFConfiguration(nh);

	ImageProcessingInterface imgproc_interface;
	RoverAUTOConfiguration auto_speed_conf;

	changePID(0.3, 0, 0);

	ros::Subscriber 						sub_state 			= nh.subscribe("/mavros/state", 1, stateCB);
	ros::Subscriber 						sub_vfr_hud 		= nh.subscribe("/mavros/vfr_hud", 1, vfrHUDCB);

	ros::Publisher pub_run_status		= nh.advertise<std_msgs::String>("/auvsi16/mission/navigation/status", 16);
	ros::Publisher pub_node_select 	= nh.advertise<std_msgs::String>("/auvsi16/node/select", 16,true);
	ros::Subscriber sub_node_select = nh.subscribe("/auvsi16/node/select", 10, nodeSelectCB);

	ros::Subscriber sub_imgproc_data	= nh.subscribe("/auvsi16/node/image_processing/data", 10, imageProcessingCB);

	ROS_WARN_STREAM("Waiting for navigation mission selected.");
	while (ros::ok() && node_status.data != "nm:navigation.start"){
		ros::spinOnce();
	}
	imgproc_interface.setHSVRange(166,179,40,184,138,255);
	imgproc_interface.configuration(3);
	ROS_INFO("Waiting for Image Processing Node!");
	// this it to whether image_received is empty or not, move this to a function.
	// while (ros::ok() && front_image.empty() && right_image.empty()){
	while (ros::ok() && !imgproc_status){
		ros::spinOnce();
	}
	ROS_WARN_STREAM("Navigation mission selected.");

	auto_speed_conf.setNormalSpeed();
	if(auto_speed_conf.sendParameter()){
		ROS_INFO("Success change speed to Normal power");
	}
	else{

			ROS_INFO("Failed change speed to Normal power");
	}
	sleep(4);

	wp_sender->clearWaypointList();
	wp_sender->addWaypoint(first_lat, first_long);
	wp_sender->addWaypoint(second_lat, second_long);
	wp_sender->sendWaypointList();
	startAUTOandChecker();
	sleep(4);

	while (ros::ok()){

		ros::spinOnce();	// read frame
		double compass_hdg_at_capture = compass_hdg;
		ROS_INFO_STREAM("Compass Heading : " << compass_hdg);
		ROS_INFO_STREAM("Compass Heading Current: " << compass_hdg_at_capture);
		ROS_INFO_STREAM("Latitude : " << global_position.latitude);
		ROS_INFO_STREAM("Longitude : " <<  global_position.longitude);
		ROS_INFO_STREAM("X Position : " << center_buoy_x);
		//ROS_WARN_STREAM("Detected Red Buoy : " << red_buoy);
		if (areaCheck(center_buoy_x, 320, 2)){

			compass_hdg = compass_hdg_at_capture;

			if(moveForward(arena_distance)){
				ROS_WARN_STREAM("Set Waypoint Success!");
			}
			else {
				ROS_WARN_STREAM("Set Waypoint Failed!");
			}

			ROS_WARN_STREAM("Destination Set!");

			auto_speed_conf.setFullSpeed();
			if(auto_speed_conf.sendParameter()){
				ROS_INFO("Success change speed to Full power");
			}
			else{

					ROS_INFO("Failed change speed to Full power");
			}
			sleep(5);
			startAUTOandChecker();

			pub_node_select.publish(node_feedback);
			auto_speed_conf.setNormalSpeed();
			if(auto_speed_conf.sendParameter()){
				ROS_INFO("Success change speed to Normal power");
			}
			else{

					ROS_INFO("Failed change speed to Normal power");
			}
			sleep(5);
			node_feedback.data = "nc:navigation.end";
			ros::shutdown();
			// if flightmode is HOLD, continue code
		}
			overrideRCControl(320, center_buoy_x, BASESPEED, 0);
		}
}
void nodeSelectCB(const std_msgs::String& msg){

	node_status.data = msg.data;
}


void imageProcessingCB(const auvsi16::ImageProcessing& msg){

	center_buoy_x	= msg.center_buoy_x;
	center_buoy_y = msg.center_buoy_y;
	buoy_area			= msg.buoy_area;
	radius_buoy		= msg.radius_buoy;
	buoy_number  	= msg.buoy_number;
	imgproc_status = msg.detection_status;
}

void stateCB(const mavros_msgs::State& msg){
	state = msg.mode;
}

void 	vfrHUDCB	(const mavros_msgs::VFR_HUD& msg){

	ground_speed = msg.groundspeed;
}

bool checkAUTOCruise(){

	if(state == "AUTO"){

		return true;
	}

	else{

		return false;
	}

}
void checkGroundSpeed(){
	if(ground_speed < MIN_GROUND_SPEED && checkAUTOCruise() ){
		changeFlightModeDebug("MANUAL");
		sleep(5);
		changeFlightModeDebug("AUTO");
		sleep(5);
	}
}


bool changeFlightModeDebug(string fm){
	if(changeFlightMode(fm.c_str())){
		ROS_WARN_STREAM("Changed to " << fm);
	}
	else {

		ROS_ERROR_STREAM("Failed changing to " << fm);
	}
}

void startAUTOandChecker(){
	changeFlightModeDebug("AUTO");
	sleep(1);
	ros::spinOnce();
	ros::spinOnce();
	ros::spinOnce();
	ros::spinOnce();
	ros::spinOnce();
	while(checkAUTOCruise()) {
		checkGroundSpeed();
		ros::spinOnce();
	}
}
