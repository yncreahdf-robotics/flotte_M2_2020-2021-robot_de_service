/*
 * GrapplerROS.h
 *
 *  Created on: 08.12.2011
 *      Author: indorewala@servicerobotics.eu
 */

#ifndef GRAPPLERROS_H_
#define GRAPPLERROS_H_

#include "rec/robotino/api2/Grappler.h"
#include "rec/robotino/api2/GrapplerReadings.h"

#include <ros/ros.h>
#include "robotino_msgs/GrapplerReadings.h"
#include "robotino_msgs/SetGrapplerAxes.h"
#include "robotino_msgs/SetGrapplerAxis.h"

class GrapplerROS : public rec::robotino::api2::Grappler
{
public:
	GrapplerROS();
	~GrapplerROS();

	void setTimeStamp(ros::Time stamp);

private:
	ros::NodeHandle nh_;

	ros::Subscriber grappler_axes_sub_;
	ros::Subscriber grappler_axis_sub_;

	ros::Publisher grappler_readings_pub_;
	ros::Publisher grappler_store_pub_;

	robotino_msgs::GrapplerReadings grappler_readings_msg_;
	robotino_msgs::GrapplerReadings grappler_store_msg_;

	ros::Time stamp_;

	void readingsEvent( const rec::robotino::api2::GrapplerReadings& readings );
	void storePositionsEvent( const rec::robotino::api2::GrapplerReadings& readings );
	void setGrapplerAxes( const robotino_msgs::SetGrapplerAxesConstPtr& msg);
	void setGrapplerAxis( const robotino_msgs::SetGrapplerAxisConstPtr& msg);
};


#endif /* GRAPPLERROS_H_ */
