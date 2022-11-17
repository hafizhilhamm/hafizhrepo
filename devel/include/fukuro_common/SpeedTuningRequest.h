// Generated by gencpp from file fukuro_common/SpeedTuningRequest.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_SPEEDTUNINGREQUEST_H
#define FUKURO_COMMON_MESSAGE_SPEEDTUNINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <fukuro_common/Parameter.h>
#include <fukuro_common/Parameter.h>

namespace fukuro_common
{
template <class ContainerAllocator>
struct SpeedTuningRequest_
{
  typedef SpeedTuningRequest_<ContainerAllocator> Type;

  SpeedTuningRequest_()
    : linear()
    , angular()  {
    }
  SpeedTuningRequest_(const ContainerAllocator& _alloc)
    : linear(_alloc)
    , angular(_alloc)  {
  (void)_alloc;
    }



   typedef  ::fukuro_common::Parameter_<ContainerAllocator>  _linear_type;
  _linear_type linear;

   typedef  ::fukuro_common::Parameter_<ContainerAllocator>  _angular_type;
  _angular_type angular;





  typedef boost::shared_ptr< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SpeedTuningRequest_

typedef ::fukuro_common::SpeedTuningRequest_<std::allocator<void> > SpeedTuningRequest;

typedef boost::shared_ptr< ::fukuro_common::SpeedTuningRequest > SpeedTuningRequestPtr;
typedef boost::shared_ptr< ::fukuro_common::SpeedTuningRequest const> SpeedTuningRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator1> & lhs, const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator2> & rhs)
{
  return lhs.linear == rhs.linear &&
    lhs.angular == rhs.angular;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator1> & lhs, const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fukuro_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3094cde591fc0e253ec2416e29f6fff2";
  }

  static const char* value(const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3094cde591fc0e25ULL;
  static const uint64_t static_value2 = 0x3ec2416e29f6fff2ULL;
};

template<class ContainerAllocator>
struct DataType< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fukuro_common/SpeedTuningRequest";
  }

  static const char* value(const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Parameter linear\n"
"Parameter angular\n"
"\n"
"================================================================================\n"
"MSG: fukuro_common/Parameter\n"
"float64 kp\n"
"float64 ki\n"
"float64 kd\n"
;
  }

  static const char* value(const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear);
      stream.next(m.angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeedTuningRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fukuro_common::SpeedTuningRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fukuro_common::SpeedTuningRequest_<ContainerAllocator>& v)
  {
    s << indent << "linear: ";
    s << std::endl;
    Printer< ::fukuro_common::Parameter_<ContainerAllocator> >::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    s << std::endl;
    Printer< ::fukuro_common::Parameter_<ContainerAllocator> >::stream(s, indent + "  ", v.angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_SPEEDTUNINGREQUEST_H
