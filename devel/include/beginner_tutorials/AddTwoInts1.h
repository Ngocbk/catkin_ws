// Generated by gencpp from file beginner_tutorials/AddTwoInts1.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_ADDTWOINTS1_H
#define BEGINNER_TUTORIALS_MESSAGE_ADDTWOINTS1_H

#include <ros/service_traits.h>


#include <beginner_tutorials/AddTwoInts1Request.h>
#include <beginner_tutorials/AddTwoInts1Response.h>


namespace beginner_tutorials
{

struct AddTwoInts1
{

typedef AddTwoInts1Request Request;
typedef AddTwoInts1Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts1
} // namespace beginner_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beginner_tutorials::AddTwoInts1 > {
  static const char* value()
  {
    return "8a9e1e5bc988d0dde955e4f126cb8ace";
  }

  static const char* value(const ::beginner_tutorials::AddTwoInts1&) { return value(); }
};

template<>
struct DataType< ::beginner_tutorials::AddTwoInts1 > {
  static const char* value()
  {
    return "beginner_tutorials/AddTwoInts1";
  }

  static const char* value(const ::beginner_tutorials::AddTwoInts1&) { return value(); }
};


// service_traits::MD5Sum< ::beginner_tutorials::AddTwoInts1Request> should match 
// service_traits::MD5Sum< ::beginner_tutorials::AddTwoInts1 > 
template<>
struct MD5Sum< ::beginner_tutorials::AddTwoInts1Request>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::AddTwoInts1 >::value();
  }
  static const char* value(const ::beginner_tutorials::AddTwoInts1Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::AddTwoInts1Request> should match 
// service_traits::DataType< ::beginner_tutorials::AddTwoInts1 > 
template<>
struct DataType< ::beginner_tutorials::AddTwoInts1Request>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::AddTwoInts1 >::value();
  }
  static const char* value(const ::beginner_tutorials::AddTwoInts1Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beginner_tutorials::AddTwoInts1Response> should match 
// service_traits::MD5Sum< ::beginner_tutorials::AddTwoInts1 > 
template<>
struct MD5Sum< ::beginner_tutorials::AddTwoInts1Response>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::AddTwoInts1 >::value();
  }
  static const char* value(const ::beginner_tutorials::AddTwoInts1Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::AddTwoInts1Response> should match 
// service_traits::DataType< ::beginner_tutorials::AddTwoInts1 > 
template<>
struct DataType< ::beginner_tutorials::AddTwoInts1Response>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::AddTwoInts1 >::value();
  }
  static const char* value(const ::beginner_tutorials::AddTwoInts1Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_ADDTWOINTS1_H
