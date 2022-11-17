// Generated by gencpp from file fukuro_common/Communication.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_COMMUNICATION_H
#define FUKURO_COMMON_MESSAGE_COMMUNICATION_H


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
struct Communication_
{
  typedef Communication_<ContainerAllocator> Type;

  Communication_()
    : address()
    , tx_port(0)
    , rx_port(0)  {
    }
  Communication_(const ContainerAllocator& _alloc)
    : address(_alloc)
    , tx_port(0)
    , rx_port(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _address_type;
  _address_type address;

   typedef int64_t _tx_port_type;
  _tx_port_type tx_port;

   typedef int64_t _rx_port_type;
  _rx_port_type rx_port;





  typedef boost::shared_ptr< ::fukuro_common::Communication_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fukuro_common::Communication_<ContainerAllocator> const> ConstPtr;

}; // struct Communication_

typedef ::fukuro_common::Communication_<std::allocator<void> > Communication;

typedef boost::shared_ptr< ::fukuro_common::Communication > CommunicationPtr;
typedef boost::shared_ptr< ::fukuro_common::Communication const> CommunicationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fukuro_common::Communication_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fukuro_common::Communication_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fukuro_common::Communication_<ContainerAllocator1> & lhs, const ::fukuro_common::Communication_<ContainerAllocator2> & rhs)
{
  return lhs.address == rhs.address &&
    lhs.tx_port == rhs.tx_port &&
    lhs.rx_port == rhs.rx_port;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fukuro_common::Communication_<ContainerAllocator1> & lhs, const ::fukuro_common::Communication_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fukuro_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fukuro_common::Communication_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fukuro_common::Communication_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fukuro_common::Communication_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fukuro_common::Communication_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fukuro_common::Communication_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fukuro_common::Communication_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fukuro_common::Communication_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3aa7881fa3e1c105fe7e3d5e50a57a0f";
  }

  static const char* value(const ::fukuro_common::Communication_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3aa7881fa3e1c105ULL;
  static const uint64_t static_value2 = 0xfe7e3d5e50a57a0fULL;
};

template<class ContainerAllocator>
struct DataType< ::fukuro_common::Communication_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fukuro_common/Communication";
  }

  static const char* value(const ::fukuro_common::Communication_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fukuro_common::Communication_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string address\n"
"int64 tx_port\n"
"int64 rx_port\n"
;
  }

  static const char* value(const ::fukuro_common::Communication_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fukuro_common::Communication_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.address);
      stream.next(m.tx_port);
      stream.next(m.rx_port);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Communication_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fukuro_common::Communication_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fukuro_common::Communication_<ContainerAllocator>& v)
  {
    s << indent << "address: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.address);
    s << indent << "tx_port: ";
    Printer<int64_t>::stream(s, indent + "  ", v.tx_port);
    s << indent << "rx_port: ";
    Printer<int64_t>::stream(s, indent + "  ", v.rx_port);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_COMMUNICATION_H
