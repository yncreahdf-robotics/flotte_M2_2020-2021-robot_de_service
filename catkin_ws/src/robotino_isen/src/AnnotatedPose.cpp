//This node permits to activate 3 services : storeCurrentPose, poses and goToPose

//To call one of these services, open a terminal and launch AnnotatedPose_server with rosrun

//With an other terminal, call rosservice for one of the 3 services

//Please be sure to open roscore, ssh to control the turtlebot, and roslaunch navigation... to launch RviZ



//Librairies



#include "ros/ros.h"

#include <sstream>

#include "std_msgs/String.h"

#include "time.h"

#include <ctime>

#include <time.h>

#include <string>

#include <iostream>

#include <fstream>

#include <vector>
#include "ros/ros.h"


#include "robotino_isen/AnnotatedPose.h"

#include "robotino_isen/AnnotatedPoses.h"

using namespace std;



//Patch for string function



namespace patch

{

    template < typename T > std::string to_string( const T& n )

    {

        std::ostringstream stm ;

        stm << n ;

        return stm.str() ;

    }

}





//We create a dynamic tab (a vector) to store the name and coordinates of the pose 



vector<robotino_isen::AnnotatedPoses> MyTab;



//Definition of the first service : storeCurrentPose



bool storeCurrentPose(robotino_isen::AnnotatedPose::Request &req, robotino_isen::AnnotatedPose::Response &res) {



  ROS_INFO("Request to store the pose");  



  //First solution : We store the coordinates x, y and z in a Vector

MyTab.push_back(req.annotatedPose);



  //Second solution : We store the coordinates x, y and z in a file

  std::ofstream monFlux("/home/robotino/catkin_ws/src/robotino_isen/storeCurrentPose.txt", std::ofstream::app);



  if(monFlux) {  

    monFlux << req.annotatedPose.name << endl << req.annotatedPose.pose << "---" << endl;

    monFlux.close();    

    ROS_INFO("Sending back response: Current pose stored !");

    return true;

  }



  else {

    ROS_INFO("Error : impossible to open the file and store the pose");

    return false;

  }



  return true;



}



//Definition of the second service : goToPose



bool goToPose(robotino_isen::AnnotatedPose::Request &req, robotino_isen::AnnotatedPose::Response &res)

{



  ROS_INFO("Request to go somewhere with a name");



  //We are looking if the name is stored in the tab

  float x(0), y(0), z(0);

  bool exist = false;

  ROS_INFO("Searching coordinates for %s...",  req.annotatedPose.name.c_str());

  

  for(int i = 0 ; i < MyTab.size() ; i++)

  {



  	if(req.annotatedPose.name.compare(MyTab[i].name) == 0)

  	{



      exist = true;

  		x = MyTab[i].pose.x;

  		y = MyTab[i].pose.y;

  		z = MyTab[i].pose.z;



      ROS_INFO("Found coordinates for %s ! x = %f, y = %f, z = %f", req.annotatedPose.name.c_str(), x, y, z);



      //We launch the bash command to move the robot



      std::string cmd("rostopic pub /move_base/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: \"map\"}, pose: { position: {x: ");

      cmd += patch::to_string(x);

      cmd += ", y: ";

      cmd += patch::to_string(y);

      cmd += ", z: ";

      cmd += patch::to_string(z);

      cmd += "}, orientation: {w: 1.0}}}'";

  

      system(cmd.c_str());

  		break;



  	}



  }



  if (exist == false)

  {



    ROS_INFO("Impossible to find coordinates for %s ! This name has not been stored with storecurrentPose service", req.annotatedPose.name.c_str());

    return false;



  }



  return true;



}



//Definition of the third service : poses



bool poses(robotino_isen::AnnotatedPose::Request  &req, robotino_isen::AnnotatedPose::Response &res)

{



  ROS_INFO("Request to return a list of AnnotatedPose");  



  //We print the list of AnnotatedPose which has been created

	for (int i = 0 ; i < MyTab.size() ; ++i) 

	{



    ROS_INFO("Pose number %d :", i+1);

  	ROS_INFO("Name = [%s]", MyTab[i].name.c_str());

  	ROS_INFO("x : [%f]", MyTab[i].pose.x);

  	ROS_INFO("y : [%f]", MyTab[i].pose.y);

  	ROS_INFO("z : [%f]", MyTab[i].pose.z);



  }



  return true;



}



int main(int argc, char **argv)

{



  ros::init(argc, argv, "storeCurrentPose_server");

  ros::init(argc, argv, "goToPose_server");

  ros::init(argc, argv, "poses_server");

  ros::NodeHandle n;

  ros::ServiceServer PosesService = n.advertiseService("poses", poses);

  ros::ServiceServer GoToPoseService = n.advertiseService("goToPose", goToPose);

  ros::ServiceServer StoreCurrentPoseService = n.advertiseService("storeCurrentPose", storeCurrentPose);

  ROS_INFO("Ready to launch a service");

  ros::spin();



  return 0;



}
