; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude AddTwoInts1-request.msg.html

(cl:defclass <AddTwoInts1-request> (roslisp-msg-protocol:ros-message)
  ((duongdi
    :reader duongdi
    :initarg :duongdi
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AddTwoInts1-request (<AddTwoInts1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInts1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInts1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<AddTwoInts1-request> is deprecated: use beginner_tutorials-srv:AddTwoInts1-request instead.")))

(cl:ensure-generic-function 'duongdi-val :lambda-list '(m))
(cl:defmethod duongdi-val ((m <AddTwoInts1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:duongdi-val is deprecated.  Use beginner_tutorials-srv:duongdi instead.")
  (duongdi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInts1-request>) ostream)
  "Serializes a message object of type '<AddTwoInts1-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'duongdi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'duongdi))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoInts1-request>) istream)
  "Deserializes a message object of type '<AddTwoInts1-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'duongdi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'duongdi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoInts1-request>)))
  "Returns string type for a service object of type '<AddTwoInts1-request>"
  "beginner_tutorials/AddTwoInts1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInts1-request)))
  "Returns string type for a service object of type 'AddTwoInts1-request"
  "beginner_tutorials/AddTwoInts1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoInts1-request>)))
  "Returns md5sum for a message object of type '<AddTwoInts1-request>"
  "8a9e1e5bc988d0dde955e4f126cb8ace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInts1-request)))
  "Returns md5sum for a message object of type 'AddTwoInts1-request"
  "8a9e1e5bc988d0dde955e4f126cb8ace")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInts1-request>)))
  "Returns full string definition for message of type '<AddTwoInts1-request>"
  (cl:format cl:nil "int32[] duongdi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInts1-request)))
  "Returns full string definition for message of type 'AddTwoInts1-request"
  (cl:format cl:nil "int32[] duongdi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInts1-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'duongdi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInts1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInts1-request
    (cl:cons ':duongdi (duongdi msg))
))
;//! \htmlinclude AddTwoInts1-response.msg.html

(cl:defclass <AddTwoInts1-response> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass AddTwoInts1-response (<AddTwoInts1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInts1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInts1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<AddTwoInts1-response> is deprecated: use beginner_tutorials-srv:AddTwoInts1-response instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddTwoInts1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:a-val is deprecated.  Use beginner_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddTwoInts1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:b-val is deprecated.  Use beginner_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInts1-response>) ostream)
  "Serializes a message object of type '<AddTwoInts1-response>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoInts1-response>) istream)
  "Deserializes a message object of type '<AddTwoInts1-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoInts1-response>)))
  "Returns string type for a service object of type '<AddTwoInts1-response>"
  "beginner_tutorials/AddTwoInts1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInts1-response)))
  "Returns string type for a service object of type 'AddTwoInts1-response"
  "beginner_tutorials/AddTwoInts1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoInts1-response>)))
  "Returns md5sum for a message object of type '<AddTwoInts1-response>"
  "8a9e1e5bc988d0dde955e4f126cb8ace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInts1-response)))
  "Returns md5sum for a message object of type 'AddTwoInts1-response"
  "8a9e1e5bc988d0dde955e4f126cb8ace")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInts1-response>)))
  "Returns full string definition for message of type '<AddTwoInts1-response>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInts1-response)))
  "Returns full string definition for message of type 'AddTwoInts1-response"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInts1-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInts1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInts1-response
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTwoInts1)))
  'AddTwoInts1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTwoInts1)))
  'AddTwoInts1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInts1)))
  "Returns string type for a service object of type '<AddTwoInts1>"
  "beginner_tutorials/AddTwoInts1")