#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/Twist.h>

void callback(const std_msgs::BoolConstPtr& msg);

geometry_msgs::Twist cmd;
ros::Publisher pub;

int main(int argc, char **argv)
{

        ROS_INFO("Initialize node : IRdistanceSensors !");
        ros::init(argc, argv, "bumper");

        ros::NodeHandle n;

        ROS_INFO("Subscribe to bumper_sensors");
        ros::Subscriber sub = n.subscribe("bumper", 1, callback);
        ROS_INFO("Publish to cmd_vel");
        pub = n.advertise<geometry_msgs::Twist>("/cmd_vel_", 10);
        ros::spin();

        return 0;
}

void callback(const std_msgs::BoolConstPtr& msg)
{
	ROS_INFO("%d", msg->data);
       if( msg->data == 0)
        {
                ROS_INFO("Shutting down node! %d", msg->data);
		cmd.linear.x = 0.2;
	        cmd.linear.y = 0;
       	        cmd.angular.z = 0;

	        pub.publish(cmd);

                return;
        }
	else
	{
		cmd.linear.x=0;
		pub.publish(cmd);
		ros::shutdown();
		return;
	}
}


