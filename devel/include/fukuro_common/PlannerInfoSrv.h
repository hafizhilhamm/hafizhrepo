// Generated by gencpp from file fukuro_common/PlannerInfoSrv.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_PLANNERINFOSRV_H
#define FUKURO_COMMON_MESSAGE_PLANNERINFOSRV_H

#include <ros/service_traits.h>


#include <fukuro_common/PlannerInfoSrvRequest.h>
#include <fukuro_common/PlannerInfoSrvResponse.h>


namespace fukuro_common
{

struct PlannerInfoSrv
{

typedef PlannerInfoSrvRequest Request;
typedef PlannerInfoSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PlannerInfoSrv
} // namespace fukuro_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fukuro_common::PlannerInfoSrv > {
  static const char* value()
  {
    return "1be42ff1b6414a6f4a0eb49fbae122a7";
  }

  static const char* value(const ::fukuro_common::PlannerInfoSrv&) { return value(); }
};

template<>
struct DataType< ::fukuro_common::PlannerInfoSrv > {
  static const char* value()
  {
    return "fukuro_common/PlannerInfoSrv";
  }

  static const char* value(const ::fukuro_common::PlannerInfoSrv&) { return value(); }
};


// service_traits::MD5Sum< ::fukuro_common::PlannerInfoSrvRequest> should match
// service_traits::MD5Sum< ::fukuro_common::PlannerInfoSrv >
template<>
struct MD5Sum< ::fukuro_common::PlannerInfoSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::PlannerInfoSrv >::value();
  }
  static const char* value(const ::fukuro_common::PlannerInfoSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::PlannerInfoSrvRequest> should match
// service_traits::DataType< ::fukuro_common::PlannerInfoSrv >
template<>
struct DataType< ::fukuro_common::PlannerInfoSrvRequest>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::PlannerInfoSrv >::value();
  }
  static const char* value(const ::fukuro_common::PlannerInfoSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fukuro_common::PlannerInfoSrvResponse> should match
// service_traits::MD5Sum< ::fukuro_common::PlannerInfoSrv >
template<>
struct MD5Sum< ::fukuro_common::PlannerInfoSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::PlannerInfoSrv >::value();
  }
  static const char* value(const ::fukuro_common::PlannerInfoSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::PlannerInfoSrvResponse> should match
// service_traits::DataType< ::fukuro_common::PlannerInfoSrv >
template<>
struct DataType< ::fukuro_common::PlannerInfoSrvResponse>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::PlannerInfoSrv >::value();
  }
  static const char* value(const ::fukuro_common::PlannerInfoSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_PLANNERINFOSRV_H
