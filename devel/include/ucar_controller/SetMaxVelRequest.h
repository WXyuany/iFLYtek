// Generated by gencpp from file ucar_controller/SetMaxVelRequest.msg
// DO NOT EDIT!


#ifndef UCAR_CONTROLLER_MESSAGE_SETMAXVELREQUEST_H
#define UCAR_CONTROLLER_MESSAGE_SETMAXVELREQUEST_H


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
struct SetMaxVelRequest_
{
  typedef SetMaxVelRequest_<ContainerAllocator> Type;

  SetMaxVelRequest_()
    : max_linear_velocity(0.0)
    , max_angular_velocity(0.0)  {
    }
  SetMaxVelRequest_(const ContainerAllocator& _alloc)
    : max_linear_velocity(0.0)
    , max_angular_velocity(0.0)  {
  (void)_alloc;
    }



   typedef double _max_linear_velocity_type;
  _max_linear_velocity_type max_linear_velocity;

   typedef double _max_angular_velocity_type;
  _max_angular_velocity_type max_angular_velocity;





  typedef boost::shared_ptr< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetMaxVelRequest_

typedef ::ucar_controller::SetMaxVelRequest_<std::allocator<void> > SetMaxVelRequest;

typedef boost::shared_ptr< ::ucar_controller::SetMaxVelRequest > SetMaxVelRequestPtr;
typedef boost::shared_ptr< ::ucar_controller::SetMaxVelRequest const> SetMaxVelRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator1> & lhs, const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator2> & rhs)
{
  return lhs.max_linear_velocity == rhs.max_linear_velocity &&
    lhs.max_angular_velocity == rhs.max_angular_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator1> & lhs, const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ucar_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c3d002ed0ab158592aaa625149bc3810";
  }

  static const char* value(const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc3d002ed0ab15859ULL;
  static const uint64_t static_value2 = 0x2aaa625149bc3810ULL;
};

template<class ContainerAllocator>
struct DataType< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ucar_controller/SetMaxVelRequest";
  }

  static const char* value(const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 max_linear_velocity\n"
"float64 max_angular_velocity\n"
;
  }

  static const char* value(const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max_linear_velocity);
      stream.next(m.max_angular_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMaxVelRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ucar_controller::SetMaxVelRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ucar_controller::SetMaxVelRequest_<ContainerAllocator>& v)
  {
    s << indent << "max_linear_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.max_linear_velocity);
    s << indent << "max_angular_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.max_angular_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UCAR_CONTROLLER_MESSAGE_SETMAXVELREQUEST_H
