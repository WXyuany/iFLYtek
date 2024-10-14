// Generated by gencpp from file xf_mic_api/Get_Wav_List_srvRequest.msg
// DO NOT EDIT!


#ifndef XF_MIC_API_MESSAGE_GET_WAV_LIST_SRVREQUEST_H
#define XF_MIC_API_MESSAGE_GET_WAV_LIST_SRVREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xf_mic_api
{
template <class ContainerAllocator>
struct Get_Wav_List_srvRequest_
{
  typedef Get_Wav_List_srvRequest_<ContainerAllocator> Type;

  Get_Wav_List_srvRequest_()
    : get_list(0)  {
    }
  Get_Wav_List_srvRequest_(const ContainerAllocator& _alloc)
    : get_list(0)  {
  (void)_alloc;
    }



   typedef int8_t _get_list_type;
  _get_list_type get_list;





  typedef boost::shared_ptr< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Get_Wav_List_srvRequest_

typedef ::xf_mic_api::Get_Wav_List_srvRequest_<std::allocator<void> > Get_Wav_List_srvRequest;

typedef boost::shared_ptr< ::xf_mic_api::Get_Wav_List_srvRequest > Get_Wav_List_srvRequestPtr;
typedef boost::shared_ptr< ::xf_mic_api::Get_Wav_List_srvRequest const> Get_Wav_List_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator1> & lhs, const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.get_list == rhs.get_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator1> & lhs, const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xf_mic_api

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7068c57d50cf3ab491adae2d8fea0cfa";
  }

  static const char* value(const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7068c57d50cf3ab4ULL;
  static const uint64_t static_value2 = 0x91adae2d8fea0cfaULL;
};

template<class ContainerAllocator>
struct DataType< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xf_mic_api/Get_Wav_List_srvRequest";
  }

  static const char* value(const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 get_list\n"
;
  }

  static const char* value(const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.get_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Get_Wav_List_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xf_mic_api::Get_Wav_List_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "get_list: ";
    Printer<int8_t>::stream(s, indent + "  ", v.get_list);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XF_MIC_API_MESSAGE_GET_WAV_LIST_SRVREQUEST_H
