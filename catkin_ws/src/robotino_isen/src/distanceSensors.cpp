//#include "rec/robotino/api2/DistanceSensorArray.h"

#include <ros/ros.h>
#include <sensor_msgs/PointCloud.h>
#include <geometry_msgs/Twist.h>
#include <ctime>

void callback(const sensor_msgs::PointCloudConstPtr &);

geometry_msgs::Twist cmd;
ros::Publisher pub;

#define DIST_0 0.30
#define DIST_1 0.10
#define DIST_2 0.08
#define K_ROTATION 2
std::time_t prevTime = 0;
std::time_t t = 0.2;
float prevCmd = 0;

int main(int argc, char **argv)
{

	ROS_INFO("Initialize node : IRdistanceSensors !");
	ros::init(argc, argv, "IRdistanceSensors");

	ros::NodeHandle n;

	ROS_INFO("Subscribe to distance_sensors");
	ros::Subscriber sub = n.subscribe("distance_sensors", 1, callback);
	ROS_INFO("Publish to cmd_vel");
	pub = n.advertise<geometry_msgs::Twist>("/cmd_vel_", 10);
	ros::spin();

	return 0;
}

void callback(const sensor_msgs::PointCloudConstPtr &msg)
{
	float distance[9];
	for (int i = 0; i <= 8; i++)
	{
		distance[i] = msg->points[i].x * msg->points[i].x + msg->points[i].y * msg->points[i].y;
		distance[i] = sqrt(distance[i]) - 0.2;
		//ROS_INFO("capteur : [%d], distance : [%f]", i, distance[i]);
	}

	float cmd_y = 0;
	float cmd_x = 0;
	float cmd_z = 0;

	if (distance[0] < DIST_0 || distance[1] < DIST_1 || distance[8] < DIST_1 || distance[2] < DIST_2 || distance[7] < DIST_2)
	{
		cmd_x = -0.3;
		cmd_y = 0.4;
		cmd_z = 1;

		if (distance[1] < 0.25 && distance[8] < 0.25)
		{
                        cmd_x = 0;
			cmd_y = 0;
			cmd_z = 1;
		}

		if (std::time(NULL) > prevTime + t)
		{
			prevTime = std::time(NULL);
			if (distance[2] < distance[7] || distance[1] < distance[8] || distance[3] < distance[6])
			{
                                cmd_x = -cmd_x;
				cmd_y = -cmd_y;
				cmd_z = -cmd_z;
			}

			if (cmd_y > 0 || cmd_z > 0)
			{
				prevCmd = 1;
			}
			else
			{
				prevCmd = -1;
			}
		}
		else
		{
                        cmd_x *= prevCmd;
			cmd_y *= prevCmd;
			cmd_z *= prevCmd;
		}
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

	//ROS_INFO("cmd [%f]", cmd_y);
	//ROS_INFO("dist [%f]", distance[0]);

	pub.publish(cmd);
}

