/*
 * OmniDriveROS.cpp
 *
 *  Created on: 07.12.2011
 *      Author: indorewala@servicerobotics.eu
 */

#include "OmniDriveROS.h"
#include <iomanip>
#include <iostream>
#include <stdlib.h>
#include <unistd.h>


double linearObstacle_x;
double linearObstacle_y;
double angularObstacle_z;

void cmdVelObstacleCallback(const geometry_msgs::TwistConstPtr&);

OmniDriveROS::OmniDriveROS()
{
	cmd_vel_sub_ = nh_.subscribe("cmd_vel", 10, &OmniDriveROS::cmdVelCallback, this);
	cmd_vel_obstacle_sub_ = nh_.subscribe("cmd_vel_", 10, cmdVelObstacleCallback);
}

OmniDriveROS::~OmniDriveROS()
{
	cmd_vel_sub_.shutdown();
	cmd_vel_obstacle_sub_.shutdown();
}

void cmdVelObstacleCallback(const geometry_msgs::TwistConstPtr& msgObstacle)
{
	linearObstacle_x = msgObstacle->linear.x;
	linearObstacle_y = msgObstacle->linear.y;
	angularObstacle_z = msgObstacle->angular.z;

	//ROS_INFO("[%f]",  linearObstacle_x);
}

void OmniDriveROS::cmdVelCallback(const geometry_msgs::TwistConstPtr& msg)
{
	double linear_x;
	double linear_y;
	double angular;

	if(linearObstacle_x != 0 || linearObstacle_y != 0 || angularObstacle_z != 0)
	{
		linear_x = linearObstacle_x;
		linear_y = linearObstacle_y;
		angular = angularObstacle_z;
	}
	else
	{
		linear_x = msg->linear.x;
		linear_y = msg->linear.y;
		angular = msg->angular.z;
	}
	if ( fabs( linear_x ) > max_linear_vel_ )
	{
		if( linear_x > 0.0 )
			linear_x = max_linear_vel_;
		else
			linear_x = -max_linear_vel_;
	}
	else if( fabs( linear_x ) <  min_linear_vel_ && fabs( linear_x ) > 0.0 )
	{
		if( linear_x > 0.0 )
			linear_x = min_linear_vel_;
		else
			linear_x = -min_linear_vel_;
	}

	if ( fabs( linear_y ) > max_linear_vel_ )
	{
		if( linear_y > 0.0 )
			linear_y = max_linear_vel_;
		else
			linear_y = -max_linear_vel_;
	}
	else if( fabs( linear_y ) <  min_linear_vel_ && fabs( linear_y ) > 0.0 )
	{
		if( linear_y > 0.0 )
			linear_y = min_linear_vel_;
		else
			linear_y = -min_linear_vel_;
	}

	if ( fabs( angular ) > max_angular_vel_ )
	{
		if( angular > 0.0 )
			angular = max_angular_vel_;
		else
			angular = -max_angular_vel_;
	}
	else if( fabs( angular ) <  min_angular_vel_ && fabs( angular ) > 0.0 )
	{
		if( angular > 0.0 )
			angular = min_angular_vel_;
		else
			angular = -min_angular_vel_;
	}
	//ROS_INFO("[%f]",  linear_x);
	setVelocity( linear_x, linear_y, angular);
}

void OmniDriveROS::setMaxMin( double max_linear_vel, double min_linear_vel,
		double max_angular_vel, double min_angular_vel )
{
	max_linear_vel_ = max_linear_vel;
	min_linear_vel_ = min_linear_vel;
	max_angular_vel_ = max_angular_vel;
	min_angular_vel_ = min_angular_vel;
}
