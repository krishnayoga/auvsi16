/****************************************************************************************
 * Nama Program	:	image_listener														*
 * Last editor	:	Arief Purnama Muharram												*
 * Last edit	:	21/01/2016															*
 * Referensi	:	http://wiki.ros.org/image_transport/Tutorials/SubscribingToImages	*
 * **************************************************************************************/
 
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  try
  {
    cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
    cv::waitKey(30);
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
  }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_listener"); // Nama program: image_listener
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();
  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("AUVSI16/media/image", 1, imageCallback); // Topik subscribe: AUVSI16/media/image
  ros::spin();
  cv::destroyWindow("view");
}
