// Generated by gencpp from file xf_mic_api/Get_Wav_List_srv.msg
// DO NOT EDIT!


#ifndef XF_MIC_API_MESSAGE_GET_WAV_LIST_SRV_H
#define XF_MIC_API_MESSAGE_GET_WAV_LIST_SRV_H

#include <ros/service_traits.h>


#include <xf_mic_api/Get_Wav_List_srvRequest.h>
#include <xf_mic_api/Get_Wav_List_srvResponse.h>


namespace xf_mic_api
{

struct Get_Wav_List_srv
{

typedef Get_Wav_List_srvRequest Request;
typedef Get_Wav_List_srvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Get_Wav_List_srv
} // namespace xf_mic_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::xf_mic_api::Get_Wav_List_srv > {
  static const char* value()
  {
    return "b9fb17ba35cb24b08a954cbed3a86ace";
  }

  static const char* value(const ::xf_mic_api::Get_Wav_List_srv&) { return value(); }
};

template<>
struct DataType< ::xf_mic_api::Get_Wav_List_srv > {
  static const char* value()
  {
    return "xf_mic_api/Get_Wav_List_srv";
  }

  static const char* value(const ::xf_mic_api::Get_Wav_List_srv&) { return value(); }
};


// service_traits::MD5Sum< ::xf_mic_api::Get_Wav_List_srvRequest> should match
// service_traits::MD5Sum< ::xf_mic_api::Get_Wav_List_srv >
template<>
struct MD5Sum< ::xf_mic_api::Get_Wav_List_srvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::xf_mic_api::Get_Wav_List_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Get_Wav_List_srvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::xf_mic_api::Get_Wav_List_srvRequest> should match
// service_traits::DataType< ::xf_mic_api::Get_Wav_List_srv >
template<>
struct DataType< ::xf_mic_api::Get_Wav_List_srvRequest>
{
  static const char* value()
  {
    return DataType< ::xf_mic_api::Get_Wav_List_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Get_Wav_List_srvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::xf_mic_api::Get_Wav_List_srvResponse> should match
// service_traits::MD5Sum< ::xf_mic_api::Get_Wav_List_srv >
template<>
struct MD5Sum< ::xf_mic_api::Get_Wav_List_srvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::xf_mic_api::Get_Wav_List_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Get_Wav_List_srvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::xf_mic_api::Get_Wav_List_srvResponse> should match
// service_traits::DataType< ::xf_mic_api::Get_Wav_List_srv >
template<>
struct DataType< ::xf_mic_api::Get_Wav_List_srvResponse>
{
  static const char* value()
  {
    return DataType< ::xf_mic_api::Get_Wav_List_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Get_Wav_List_srvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // XF_MIC_API_MESSAGE_GET_WAV_LIST_SRV_H
