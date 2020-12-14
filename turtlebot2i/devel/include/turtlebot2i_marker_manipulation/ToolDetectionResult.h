// Generated by gencpp from file turtlebot2i_marker_manipulation/ToolDetectionResult.msg
// DO NOT EDIT!


#ifndef TURTLEBOT2I_MARKER_MANIPULATION_MESSAGE_TOOLDETECTIONRESULT_H
#define TURTLEBOT2I_MARKER_MANIPULATION_MESSAGE_TOOLDETECTIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseArray.h>
#include <turtlebot2i_marker_manipulation/BlockPoseArray.h>

namespace turtlebot2i_marker_manipulation
{
template <class ContainerAllocator>
struct ToolDetectionResult_
{
  typedef ToolDetectionResult_<ContainerAllocator> Type;

  ToolDetectionResult_()
    : blocks()
    , colored_blocks()  {
    }
  ToolDetectionResult_(const ContainerAllocator& _alloc)
    : blocks(_alloc)
    , colored_blocks(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseArray_<ContainerAllocator>  _blocks_type;
  _blocks_type blocks;

   typedef  ::turtlebot2i_marker_manipulation::BlockPoseArray_<ContainerAllocator>  _colored_blocks_type;
  _colored_blocks_type colored_blocks;





  typedef boost::shared_ptr< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> const> ConstPtr;

}; // struct ToolDetectionResult_

typedef ::turtlebot2i_marker_manipulation::ToolDetectionResult_<std::allocator<void> > ToolDetectionResult;

typedef boost::shared_ptr< ::turtlebot2i_marker_manipulation::ToolDetectionResult > ToolDetectionResultPtr;
typedef boost::shared_ptr< ::turtlebot2i_marker_manipulation::ToolDetectionResult const> ToolDetectionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtlebot2i_marker_manipulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'turtlebot2i_marker_manipulation': ['/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg', '/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e2b26cd9a6d99274f271f331a7d27da";
  }

  static const char* value(const ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e2b26cd9a6d9927ULL;
  static const uint64_t static_value2 = 0x4f271f331a7d27daULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlebot2i_marker_manipulation/ToolDetectionResult";
  }

  static const char* value(const ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
geometry_msgs/PoseArray blocks\n\
turtlebot2i_marker_manipulation/BlockPoseArray colored_blocks\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseArray\n\
# An array of poses with a header for global reference.\n\
\n\
Header header\n\
\n\
Pose[] poses\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: turtlebot2i_marker_manipulation/BlockPoseArray\n\
std_msgs/Header header\n\
turtlebot2i_marker_manipulation/BlockPose[] poses\n\
================================================================================\n\
MSG: turtlebot2i_marker_manipulation/BlockPose\n\
geometry_msgs/Point position\n\
geometry_msgs/Quaternion orientation\n\
std_msgs/ColorRGBA color\n\
================================================================================\n\
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
";
  }

  static const char* value(const ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.blocks);
      stream.next(m.colored_blocks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ToolDetectionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtlebot2i_marker_manipulation::ToolDetectionResult_<ContainerAllocator>& v)
  {
    s << indent << "blocks: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.blocks);
    s << indent << "colored_blocks: ";
    s << std::endl;
    Printer< ::turtlebot2i_marker_manipulation::BlockPoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.colored_blocks);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLEBOT2I_MARKER_MANIPULATION_MESSAGE_TOOLDETECTIONRESULT_H
