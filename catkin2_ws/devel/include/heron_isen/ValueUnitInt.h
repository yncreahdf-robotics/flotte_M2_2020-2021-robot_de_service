// Generated by gencpp from file heron_isen/ValueUnitInt.msg
// DO NOT EDIT!


#ifndef HERON_ISEN_MESSAGE_VALUEUNITINT_H
#define HERON_ISEN_MESSAGE_VALUEUNITINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace heron_isen
{
template <class ContainerAllocator>
struct ValueUnitInt_
{
  typedef ValueUnitInt_<ContainerAllocator> Type;

  ValueUnitInt_()
    : value(0)
    , unit()  {
    }
  ValueUnitInt_(const ContainerAllocator& _alloc)
    : value(0)
    , unit(_alloc)  {
  (void)_alloc;
    }



   typedef uint64_t _value_type;
  _value_type value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unit_type;
  _unit_type unit;





  typedef boost::shared_ptr< ::heron_isen::ValueUnitInt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::heron_isen::ValueUnitInt_<ContainerAllocator> const> ConstPtr;

}; // struct ValueUnitInt_

typedef ::heron_isen::ValueUnitInt_<std::allocator<void> > ValueUnitInt;

typedef boost::shared_ptr< ::heron_isen::ValueUnitInt > ValueUnitIntPtr;
typedef boost::shared_ptr< ::heron_isen::ValueUnitInt const> ValueUnitIntConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::heron_isen::ValueUnitInt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::heron_isen::ValueUnitInt_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace heron_isen

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'heron_isen': ['/home/nvidia/catkin2_ws/src/heron_isen/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::heron_isen::ValueUnitInt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heron_isen::ValueUnitInt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heron_isen::ValueUnitInt_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32ce32447b073bfe214d2602da608273";
  }

  static const char* value(const ::heron_isen::ValueUnitInt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32ce32447b073bfeULL;
  static const uint64_t static_value2 = 0x214d2602da608273ULL;
};

template<class ContainerAllocator>
struct DataType< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "heron_isen/ValueUnitInt";
  }

  static const char* value(const ::heron_isen::ValueUnitInt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 value\n\
string unit\n\
";
  }

  static const char* value(const ::heron_isen::ValueUnitInt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.unit);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ValueUnitInt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::heron_isen::ValueUnitInt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::heron_isen::ValueUnitInt_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.value);
    s << indent << "unit: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unit);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HERON_ISEN_MESSAGE_VALUEUNITINT_H
