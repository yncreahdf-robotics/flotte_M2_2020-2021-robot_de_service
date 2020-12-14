// Generated by gencpp from file turtlebot2i_block_manipulation/BlockDetectionGoal.msg
// DO NOT EDIT!


#ifndef TURTLEBOT2I_BLOCK_MANIPULATION_MESSAGE_BLOCKDETECTIONGOAL_H
#define TURTLEBOT2I_BLOCK_MANIPULATION_MESSAGE_BLOCKDETECTIONGOAL_H


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
struct BlockDetectionGoal_
{
  typedef BlockDetectionGoal_<ContainerAllocator> Type;

  BlockDetectionGoal_()
    : frame()
    , table_height(0.0)
    , block_size(0.0)  {
    }
  BlockDetectionGoal_(const ContainerAllocator& _alloc)
    : frame(_alloc)
    , table_height(0.0)
    , block_size(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_type;
  _frame_type frame;

   typedef float _table_height_type;
  _table_height_type table_height;

   typedef float _block_size_type;
  _block_size_type block_size;





  typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct BlockDetectionGoal_

typedef ::turtlebot2i_block_manipulation::BlockDetectionGoal_<std::allocator<void> > BlockDetectionGoal;

typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionGoal > BlockDetectionGoalPtr;
typedef boost::shared_ptr< ::turtlebot2i_block_manipulation::BlockDetectionGoal const> BlockDetectionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtlebot2i_block_manipulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'turtlebot2i_block_manipulation': ['/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/msg', '/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55e74460cfe309311425690ecb457a45";
  }

  static const char* value(const ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55e74460cfe30931ULL;
  static const uint64_t static_value2 = 0x1425690ecb457a45ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlebot2i_block_manipulation/BlockDetectionGoal";
  }

  static const char* value(const ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
string frame\n\
float32 table_height\n\
float32 block_size\n\
";
  }

  static const char* value(const ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame);
      stream.next(m.table_height);
      stream.next(m.block_size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlockDetectionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtlebot2i_block_manipulation::BlockDetectionGoal_<ContainerAllocator>& v)
  {
    s << indent << "frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame);
    s << indent << "table_height: ";
    Printer<float>::stream(s, indent + "  ", v.table_height);
    s << indent << "block_size: ";
    Printer<float>::stream(s, indent + "  ", v.block_size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLEBOT2I_BLOCK_MANIPULATION_MESSAGE_BLOCKDETECTIONGOAL_H
