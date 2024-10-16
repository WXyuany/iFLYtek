// Generated by gencpp from file xf_mic_api/Play_Target_Wav_srv.msg
// DO NOT EDIT!


#ifndef XF_MIC_API_MESSAGE_PLAY_TARGET_WAV_SRV_H
#define XF_MIC_API_MESSAGE_PLAY_TARGET_WAV_SRV_H

#include <ros/service_traits.h>


#include <xf_mic_api/Play_Target_Wav_srvRequest.h>
#include <xf_mic_api/Play_Target_Wav_srvResponse.h>


namespace xf_mic_api
{

struct Play_Target_Wav_srv
{

typedef Play_Target_Wav_srvRequest Request;
typedef Play_Target_Wav_srvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Play_Target_Wav_srv
} // namespace xf_mic_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::xf_mic_api::Play_Target_Wav_srv > {
  static const char* value()
  {
    return "5aa99f2f28c1cb6aae94bf660532cf80";
  }

  static const char* value(const ::xf_mic_api::Play_Target_Wav_srv&) { return value(); }
};

template<>
struct DataType< ::xf_mic_api::Play_Target_Wav_srv > {
  static const char* value()
  {
    return "xf_mic_api/Play_Target_Wav_srv";
  }

  static const char* value(const ::xf_mic_api::Play_Target_Wav_srv&) { return value(); }
};


// service_traits::MD5Sum< ::xf_mic_api::Play_Target_Wav_srvRequest> should match
// service_traits::MD5Sum< ::xf_mic_api::Play_Target_Wav_srv >
template<>
struct MD5Sum< ::xf_mic_api::Play_Target_Wav_srvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::xf_mic_api::Play_Target_Wav_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Play_Target_Wav_srvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::xf_mic_api::Play_Target_Wav_srvRequest> should match
// service_traits::DataType< ::xf_mic_api::Play_Target_Wav_srv >
template<>
struct DataType< ::xf_mic_api::Play_Target_Wav_srvRequest>
{
  static const char* value()
  {
    return DataType< ::xf_mic_api::Play_Target_Wav_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Play_Target_Wav_srvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::xf_mic_api::Play_Target_Wav_srvResponse> should match
// service_traits::MD5Sum< ::xf_mic_api::Play_Target_Wav_srv >
template<>
struct MD5Sum< ::xf_mic_api::Play_Target_Wav_srvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::xf_mic_api::Play_Target_Wav_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Play_Target_Wav_srvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::xf_mic_api::Play_Target_Wav_srvResponse> should match
// service_traits::DataType< ::xf_mic_api::Play_Target_Wav_srv >
template<>
struct DataType< ::xf_mic_api::Play_Target_Wav_srvResponse>
{
  static const char* value()
  {
    return DataType< ::xf_mic_api::Play_Target_Wav_srv >::value();
  }
  static const char* value(const ::xf_mic_api::Play_Target_Wav_srvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // XF_MIC_API_MESSAGE_PLAY_TARGET_WAV_SRV_H
