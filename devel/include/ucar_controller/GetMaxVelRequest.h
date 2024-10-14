// Generated by gencpp from file ucar_controller/GetMaxVelRequest.msg
// DO NOT EDIT!


#ifndef UCAR_CONTROLLER_MESSAGE_GETMAXVELREQUEST_H
#define UCAR_CONTROLLER_MESSAGE_GETMAXVELREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ucar_controller
{
template <class ContainerAllocator>
struct GetMaxVelRequest_
{
  typedef GetMaxVelRequest_<ContainerAllocator> Type;

  GetMaxVelRequest_()
    {
    }
  GetMaxVelRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetMaxVelRequest_

typedef ::ucar_controller::GetMaxVelRequest_<std::allocator<void> > GetMaxVelRequest;

typedef boost::shared_ptr< ::ucar_controller::GetMaxVelRequest > GetMaxVelRequestPtr;
typedef boost::shared_ptr< ::ucar_controller::GetMaxVelRequest const> GetMaxVelRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ucar_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ucar_controller::GetMaxVelRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ucar_controller/GetMaxVelRequest";
  }

  static const char* value(const ::ucar_controller::GetMaxVelRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::ucar_controller::GetMaxVelRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMaxVelRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ucar_controller::GetMaxVelRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ucar_controller::GetMaxVelRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // UCAR_CONTROLLER_MESSAGE_GETMAXVELREQUEST_H
