//#include "rec/robotino/api2/DistanceSensorArray.h"

#include <ros/ros.h>
#include <sensor_msgs/PointCloud.h>
#include <geometry_msgs/Twist.h>
#include <ctime>

void callback(const sensor_msgs::PointCloudConstPtr &);

geometry_msgs::Twist cmd;
ros::Publisher pub;

#define DIST_0 0.35

int main(int argc, char **argv)
{

	ROS_INFO("Initialize node : fonce robot !");
	ros::init(argc, argv, "foncerobot");

	ros::NodeHandle n;

	ROS_INFO("Subscribe to distance_sensors");
	ros::Subscriber sub = n.subscribe("distance_sensors", 1, callback);
	ROS_INFO("Publish to cmd_vel");
	pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
	ros::spin();

	return 0;
}

void callback(const sensor_msgs::PointCloudConstPtr &msg)
{
	float distance[9];
	int numeroCapteur;
	float min;
	min = 0.5;
	for (int i = 0; i <= 8; i++)
	{
		distance[i] = msg->points[i].x * msg->points[i].x + msg->points[i].y * msg->points[i].y;
		distance[i] = sqrt(distance[i]) - 0.2;
		if (distance[i] < min) {
			ROS_INFO("coucou je suis rentre");
			min = distance[i];
			numeroCapteur = i;
		}
	}

	float cmd_y = 0;
	float cmd_x = 0;
	float cmd_z = 0;

	if (distance[0] < DIST_0 || distance[1] < DIST_0 || distance[2] < DIST_0 || distance[3] < DIST_0 ||  distance[4] < DIST_0 ||  distance[5] < DIST_0 ||  distance[6] < DIST_0 ||  distance[7] < DIST_0 || distance[8] < DIST_0)
	{
		cmd_x = 1 * cos(  (numeroCapteur * 2 * 3.14 / 9 ) );
                cmd_y = 1 * sin(  (numeroCapteur * 2 * 3.14 / 9 ) );
		cmd_x *= -1;
		cmd_y *=-1;

	}
	else
	{
		cmd_x = 0;
		cmd_z = 0;
		cmd_y = 0;
	}

        cmd.linear.x = cmd_x;
        cmd.linear.y = cmd_y;
        cmd.angular.z = cmd_z;

	numeroCapteur = -1;
	ROS_INFO("cmd_y : %f", cmd_y);
	ROS_INFO("cmd x [%f]", cmd_x);
	pub.publish(cmd);
}

