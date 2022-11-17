// Generated by gencpp from file fukuro_common/SpeedTuning.msg
// DO NOT EDIT!


#ifndef FUKURO_COMMON_MESSAGE_SPEEDTUNING_H
#define FUKURO_COMMON_MESSAGE_SPEEDTUNING_H

#include <ros/service_traits.h>


#include <fukuro_common/SpeedTuningRequest.h>
#include <fukuro_common/SpeedTuningResponse.h>


namespace fukuro_common
{

struct SpeedTuning
{

typedef SpeedTuningRequest Request;
typedef SpeedTuningResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SpeedTuning
} // namespace fukuro_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fukuro_common::SpeedTuning > {
  static const char* value()
  {
    return "cd170060ae0088446fa7f04a91313ea5";
  }

  static const char* value(const ::fukuro_common::SpeedTuning&) { return value(); }
};

template<>
struct DataType< ::fukuro_common::SpeedTuning > {
  static const char* value()
  {
    return "fukuro_common/SpeedTuning";
  }

  static const char* value(const ::fukuro_common::SpeedTuning&) { return value(); }
};


// service_traits::MD5Sum< ::fukuro_common::SpeedTuningRequest> should match
// service_traits::MD5Sum< ::fukuro_common::SpeedTuning >
template<>
struct MD5Sum< ::fukuro_common::SpeedTuningRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::SpeedTuning >::value();
  }
  static const char* value(const ::fukuro_common::SpeedTuningRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::SpeedTuningRequest> should match
// service_traits::DataType< ::fukuro_common::SpeedTuning >
template<>
struct DataType< ::fukuro_common::SpeedTuningRequest>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::SpeedTuning >::value();
  }
  static const char* value(const ::fukuro_common::SpeedTuningRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fukuro_common::SpeedTuningResponse> should match
// service_traits::MD5Sum< ::fukuro_common::SpeedTuning >
template<>
struct MD5Sum< ::fukuro_common::SpeedTuningResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fukuro_common::SpeedTuning >::value();
  }
  static const char* value(const ::fukuro_common::SpeedTuningResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fukuro_common::SpeedTuningResponse> should match
// service_traits::DataType< ::fukuro_common::SpeedTuning >
template<>
struct DataType< ::fukuro_common::SpeedTuningResponse>
{
  static const char* value()
  {
    return DataType< ::fukuro_common::SpeedTuning >::value();
  }
  static const char* value(const ::fukuro_common::SpeedTuningResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FUKURO_COMMON_MESSAGE_SPEEDTUNING_H
