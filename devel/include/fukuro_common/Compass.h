// Generated by gencpp from file fukuro_common/Compass.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_COMPASS_H
#define FUKURO_COMMON_MESSAGE_COMPASS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fukuro_common
{
template <class ContainerAllocator>
struct Compass_
{
  typedef Compass_<ContainerAllocator> Type;

  Compass_()
    : cmps(0.0)  {
    }
  Compass_(const ContainerAllocator& _alloc)
    : cmps(0.0)  {
  (void)_alloc;
    }



   typedef double _cmps_type;
  _cmps_type cmps;





  typedef boost::shared_ptr< ::fukuro_common::Compass_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fukuro_common::Compass_<ContainerAllocator> const> ConstPtr;

}; // struct Compass_

typedef ::fukuro_common::Compass_<std::allocator<void> > Compass;

typedef boost::shared_ptr< ::fukuro_common::Compass > CompassPtr;
typedef boost::shared_ptr< ::fukuro_common::Compass const> CompassConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fukuro_common::Compass_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fukuro_common::Compass_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fukuro_common::Compass_<ContainerAllocator1> & lhs, const ::fukuro_common::Compass_<ContainerAllocator2> & rhs)
{
  return lhs.cmps == rhs.cmps;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fukuro_common::Compass_<ContainerAllocator1> & lhs, const ::fukuro_common::Compass_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fukuro_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fukuro_common::Compass_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fukuro_common::Compass_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fukuro_common::Compass_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fukuro_common::Compass_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fukuro_common::Compass_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fukuro_common::Compass_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fukuro_common::Compass_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9fef2f746f54270aba8e56b443ad3f25";
  }

  static const char* value(const ::fukuro_common::Compass_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9fef2f746f54270aULL;
  static const uint64_t static_value2 = 0xba8e56b443ad3f25ULL;
};

template<class ContainerAllocator>
struct DataType< ::fukuro_common::Compass_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fukuro_common/Compass";
  }

  static const char* value(const ::fukuro_common::Compass_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fukuro_common::Compass_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 cmps\n"
;
  }

  static const char* value(const ::fukuro_common::Compass_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fukuro_common::Compass_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Compass_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fukuro_common::Compass_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fukuro_common::Compass_<ContainerAllocator>& v)
  {
    s << indent << "cmps: ";
    Printer<double>::stream(s, indent + "  ", v.cmps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_COMPASS_H
