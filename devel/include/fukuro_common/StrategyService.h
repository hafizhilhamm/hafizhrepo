// Generated by gencpp from file fukuro_common/StrategyService.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_STRATEGYSERVICE_H
#define FUKURO_COMMON_MESSAGE_STRATEGYSERVICE_H

#include <ros/service_traits.h>


#include <fukuro_common/StrategyServiceRequest.h>
#include <fukuro_common/StrategyServiceResponse.h>


namespace fukuro_common
{

struct StrategyService
{

typedef StrategyServiceRequest Request;
typedef StrategyServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StrategyService
} // namespace fukuro_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fukuro_common::StrategyService > {
  static const char* value()
  {
    return "2db2786a5ed05eb6930ecf6644f9e863";
  }

  static const char* value(const ::fukuro_common::StrategyService&) { return value(); }
};

template<>
struct DataType< ::fukuro_common::StrategyService > {
  static const char* value()
  {
    return "fukuro_common/StrategyService";
  }

  static const char* value(const ::fukuro_common::StrategyService&) { return value(); }
};


// service_traits::MD5Sum< ::fukuro_common::StrategyServiceRequest> should match
// service_traits::MD5Sum< ::fukuro_common::StrategyService >
template<>
struct MD5Sum< ::fukuro_common::StrategyServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::StrategyService >::value();
  }
  static const char* value(const ::fukuro_common::StrategyServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::StrategyServiceRequest> should match
// service_traits::DataType< ::fukuro_common::StrategyService >
template<>
struct DataType< ::fukuro_common::StrategyServiceRequest>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::StrategyService >::value();
  }
  static const char* value(const ::fukuro_common::StrategyServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fukuro_common::StrategyServiceResponse> should match
// service_traits::MD5Sum< ::fukuro_common::StrategyService >
template<>
struct MD5Sum< ::fukuro_common::StrategyServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::StrategyService >::value();
  }
  static const char* value(const ::fukuro_common::StrategyServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::StrategyServiceResponse> should match
// service_traits::DataType< ::fukuro_common::StrategyService >
template<>
struct DataType< ::fukuro_common::StrategyServiceResponse>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::StrategyService >::value();
  }
  static const char* value(const ::fukuro_common::StrategyServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_STRATEGYSERVICE_H
