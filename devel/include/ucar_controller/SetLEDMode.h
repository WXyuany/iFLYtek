// Generated by gencpp from file ucar_controller/SetLEDMode.msg
// DO NOT EDIT!


#ifndef UCAR_CONTROLLER_MESSAGE_SETLEDMODE_H
#define UCAR_CONTROLLER_MESSAGE_SETLEDMODE_H

#include <ros/service_traits.h>


#include <ucar_controller/SetLEDModeRequest.h>
#include <ucar_controller/SetLEDModeResponse.h>


namespace ucar_controller
{

struct SetLEDMode
{

typedef SetLEDModeRequest Request;
typedef SetLEDModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLEDMode
} // namespace ucar_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ucar_controller::SetLEDMode > {
  static const char* value()
  {
    return "4964a3b2c6e612338ad6fbc54b65501d";
  }

  static const char* value(const ::ucar_controller::SetLEDMode&) { return value(); }
};

template<>
struct DataType< ::ucar_controller::SetLEDMode > {
  static const char* value()
  {
    return "ucar_controller/SetLEDMode";
  }

  static const char* value(const ::ucar_controller::SetLEDMode&) { return value(); }
};


// service_traits::MD5Sum< ::ucar_controller::SetLEDModeRequest> should match
// service_traits::MD5Sum< ::ucar_controller::SetLEDMode >
template<>
struct MD5Sum< ::ucar_controller::SetLEDModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ucar_controller::SetLEDMode >::value();
  }
  static const char* value(const ::ucar_controller::SetLEDModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ucar_controller::SetLEDModeRequest> should match
// service_traits::DataType< ::ucar_controller::SetLEDMode >
template<>
struct DataType< ::ucar_controller::SetLEDModeRequest>
{
  static const char* value()
  {
    return DataType< ::ucar_controller::SetLEDMode >::value();
  }
  static const char* value(const ::ucar_controller::SetLEDModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ucar_controller::SetLEDModeResponse> should match
// service_traits::MD5Sum< ::ucar_controller::SetLEDMode >
template<>
struct MD5Sum< ::ucar_controller::SetLEDModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ucar_controller::SetLEDMode >::value();
  }
  static const char* value(const ::ucar_controller::SetLEDModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ucar_controller::SetLEDModeResponse> should match
// service_traits::DataType< ::ucar_controller::SetLEDMode >
template<>
struct DataType< ::ucar_controller::SetLEDModeResponse>
{
  static const char* value()
  {
    return DataType< ::ucar_controller::SetLEDMode >::value();
  }
  static const char* value(const ::ucar_controller::SetLEDModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UCAR_CONTROLLER_MESSAGE_SETLEDMODE_H
