// Generated by gencpp from file robotino_msgs/EncoderReadings.msg
// DO NOT EDIT!


#ifndef ROBOTINO_MSGS_MESSAGE_ENCODERREADINGS_H
#define ROBOTINO_MSGS_MESSAGE_ENCODERREADINGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotino_msgs
{
template <class ContainerAllocator>
struct EncoderReadings_
{
  typedef EncoderReadings_<ContainerAllocator> Type;

  EncoderReadings_()
    : stamp()
    , velocity(0)
    , position(0)
    , current(0)  {
    }
  EncoderReadings_(const ContainerAllocator& _alloc)
    : stamp()
    , velocity(0)
    , position(0)
    , current(0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint32_t _velocity_type;
  _velocity_type velocity;

   typedef uint32_t _position_type;
  _position_type position;

   typedef uint32_t _current_type;
  _current_type current;





  typedef boost::shared_ptr< ::robotino_msgs::EncoderReadings_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotino_msgs::EncoderReadings_<ContainerAllocator> const> ConstPtr;

}; // struct EncoderReadings_

typedef ::robotino_msgs::EncoderReadings_<std::allocator<void> > EncoderReadings;

typedef boost::shared_ptr< ::robotino_msgs::EncoderReadings > EncoderReadingsPtr;
typedef boost::shared_ptr< ::robotino_msgs::EncoderReadings const> EncoderReadingsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotino_msgs::EncoderReadings_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotino_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'robotino_msgs': ['/home/robotino/catkin_ws/src/robotino_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::EncoderReadings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::EncoderReadings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::EncoderReadings_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0b4033dda61bb04d3e2ea6c671f26183";
  }

  static const char* value(const ::robotino_msgs::EncoderReadings_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0b4033dda61bb04dULL;
  static const uint64_t static_value2 = 0x3e2ea6c671f26183ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotino_msgs/EncoderReadings";
  }

  static const char* value(const ::robotino_msgs::EncoderReadings_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n\
uint32 velocity		# actual velocity in ticks/s\n\
uint32 position		# actual position in ticks\n\
uint32 current		# in A\n\
";
  }

  static const char* value(const ::robotino_msgs::EncoderReadings_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.velocity);
      stream.next(m.position);
      stream.next(m.current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EncoderReadings_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotino_msgs::EncoderReadings_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotino_msgs::EncoderReadings_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "velocity: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.velocity);
    s << indent << "position: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.position);
    s << indent << "current: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTINO_MSGS_MESSAGE_ENCODERREADINGS_H
