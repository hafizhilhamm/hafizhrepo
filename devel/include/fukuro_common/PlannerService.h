// Generated by gencpp from file fukuro_common/PlannerService.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_PLANNERSERVICE_H
#define FUKURO_COMMON_MESSAGE_PLANNERSERVICE_H

#include <ros/service_traits.h>


#include <fukuro_common/PlannerServiceRequest.h>
#include <fukuro_common/PlannerServiceResponse.h>


namespace fukuro_common
{

struct PlannerService
{

typedef PlannerServiceRequest Request;
typedef PlannerServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PlannerService
} // namespace fukuro_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fukuro_common::PlannerService > {
  static const char* value()
  {
    return "5a5a6fb0e0f734584b61533ce0d0cbd4";
  }

  static const char* value(const ::fukuro_common::PlannerService&) { return value(); }
};

template<>
struct DataType< ::fukuro_common::PlannerService > {
  static const char* value()
  {
    return "fukuro_common/PlannerService";
  }

  static const char* value(const ::fukuro_common::PlannerService&) { return value(); }
};


// service_traits::MD5Sum< ::fukuro_common::PlannerServiceRequest> should match
// service_traits::MD5Sum< ::fukuro_common::PlannerService >
template<>
struct MD5Sum< ::fukuro_common::PlannerServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::PlannerService >::value();
  }
  static const char* value(const ::fukuro_common::PlannerServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::PlannerServiceRequest> should match
// service_traits::DataType< ::fukuro_common::PlannerService >
template<>
struct DataType< ::fukuro_common::PlannerServiceRequest>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::PlannerService >::value();
  }
  static const char* value(const ::fukuro_common::PlannerServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fukuro_common::PlannerServiceResponse> should match
// service_traits::MD5Sum< ::fukuro_common::PlannerService >
template<>
struct MD5Sum< ::fukuro_common::PlannerServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::PlannerService >::value();
  }
  static const char* value(const ::fukuro_common::PlannerServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::PlannerServiceResponse> should match
// service_traits::DataType< ::fukuro_common::PlannerService >
template<>
struct DataType< ::fukuro_common::PlannerServiceResponse>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::PlannerService >::value();
  }
  static const char* value(const ::fukuro_common::PlannerServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_PLANNERSERVICE_H
