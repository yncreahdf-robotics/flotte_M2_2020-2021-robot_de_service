// Generated by gencpp from file turtlebot2i_block_manipulation/BlockDetectionFeedback.msg
// DO NOT EDIT!


#ifndef TURTLEBOT2I_BLOCK_MANIPULATION_MESSAGE_BLOCKDETECTIONFEEDBACK_H
#define TURTLEBOT2I_BLOCK_MANIPULATION_MESSAGE_BLOCKDETECTIONFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtlebot2i_block_manipulation
{
template <class ContainerAllocator>
struct BlockDetectionFeedback_
{
  typedef BlockDetectionFeedback_<ContainerAllocator> Type;

  BlockDetectionFeedback_()
    {
    }
  BlockDetectionFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct BlockDetectionFeedback_

typedef ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<std::allocator<void> > BlockDetectionFeedback;

typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionFeedback > BlockDetectionFeedbackPtr;
typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionFeedback const> BlockDetectionFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtlebot2i_block_manipulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'turtlebot2i_block_manipulation': ['/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/msg', '/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlebot2i_block_manipulation/BlockDetectionFeedback";
  }

  static const char* value(const ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
\n\
";
  }

  static const char* value(const ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlockDetectionFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::turtlebot2i_block_manipulation::BlockDetectionFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TURTLEBOT2I_BLOCK_MANIPULATION_MESSAGE_BLOCKDETECTIONFEEDBACK_H
