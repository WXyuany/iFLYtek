// Generated by gencpp from file ucar_controller/GetSensorTF.msg
// DO NOT EDIT!


#ifndef UCAR_CONTROLLER_MESSAGE_GETSENSORTF_H
#define UCAR_CONTROLLER_MESSAGE_GETSENSORTF_H

#include <ros/service_traits.h>


#include <ucar_controller/GetSensorTFRequest.h>
#include <ucar_controller/GetSensorTFResponse.h>


namespace ucar_controller
{

struct GetSensorTF
{

typedef GetSensorTFRequest Request;
typedef GetSensorTFResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetSensorTF
} // namespace ucar_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ucar_controller::GetSensorTF > {
  static const char* value()
  {
    return "c539823f1bf23f7b686643f4bd7617b3";
  }

  static const char* value(const ::ucar_controller::GetSensorTF&) { return value(); }
};

template<>
struct DataType< ::ucar_controller::GetSensorTF > {
  static const char* value()
  {
    return "ucar_controller/GetSensorTF";
  }

  static const char* value(const ::ucar_controller::GetSensorTF&) { return value(); }
};


// service_traits::MD5Sum< ::ucar_controller::GetSensorTFRequest> should match
// service_traits::MD5Sum< ::ucar_controller::GetSensorTF >
template<>
struct MD5Sum< ::ucar_controller::GetSensorTFRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ucar_controller::GetSensorTF >::value();
  }
  static const char* value(const ::ucar_controller::GetSensorTFRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ucar_controller::GetSensorTFRequest> should match
// service_traits::DataType< ::ucar_controller::GetSensorTF >
template<>
struct DataType< ::ucar_controller::GetSensorTFRequest>
{
  static const char* value()
  {
    return DataType< ::ucar_controller::GetSensorTF >::value();
  }
  static const char* value(const ::ucar_controller::GetSensorTFRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ucar_controller::GetSensorTFResponse> should match
// service_traits::MD5Sum< ::ucar_controller::GetSensorTF >
template<>
struct MD5Sum< ::ucar_controller::GetSensorTFResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ucar_controller::GetSensorTF >::value();
  }
  static const char* value(const ::ucar_controller::GetSensorTFResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ucar_controller::GetSensorTFResponse> should match
// service_traits::DataType< ::ucar_controller::GetSensorTF >
template<>
struct DataType< ::ucar_controller::GetSensorTFResponse>
{
  static const char* value()
  {
    return DataType< ::ucar_controller::GetSensorTF >::value();
  }
  static const char* value(const ::ucar_controller::GetSensorTFResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UCAR_CONTROLLER_MESSAGE_GETSENSORTF_H
