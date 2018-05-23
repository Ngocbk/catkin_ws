; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude GoToCertainCell-request.msg.html

(cl:defclass <GoToCertainCell-request> (roslisp-msg-protocol:ros-message)
  ((cells
    :reader cells
    :initarg :cells
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GoToCertainCell-request (<GoToCertainCell-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToCertainCell-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToCertainCell-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<GoToCertainCell-request> is deprecated: use beginner_tutorials-srv:GoToCertainCell-request instead.")))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <GoToCertainCell-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:cells-val is deprecated.  Use beginner_tutorials-srv:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToCertainCell-request>) ostream)
  "Serializes a message object of type '<GoToCertainCell-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
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
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToCertainCell-request>) istream)
  "Deserializes a message object of type '<GoToCertainCell-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToCertainCell-request>)))
  "Returns string type for a service object of type '<GoToCertainCell-request>"
  "beginner_tutorials/GoToCertainCellRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToCertainCell-request)))
  "Returns string type for a service object of type 'GoToCertainCell-request"
  "beginner_tutorials/GoToCertainCellRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToCertainCell-request>)))
  "Returns md5sum for a message object of type '<GoToCertainCell-request>"
  "aa6b69e8b39989866911686884f64e70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToCertainCell-request)))
  "Returns md5sum for a message object of type 'GoToCertainCell-request"
  "aa6b69e8b39989866911686884f64e70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToCertainCell-request>)))
  "Returns full string definition for message of type '<GoToCertainCell-request>"
  (cl:format cl:nil "int32[] cells~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToCertainCell-request)))
  "Returns full string definition for message of type 'GoToCertainCell-request"
  (cl:format cl:nil "int32[] cells~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToCertainCell-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToCertainCell-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToCertainCell-request
    (cl:cons ':cells (cells msg))
))
;//! \htmlinclude GoToCertainCell-response.msg.html

(cl:defclass <GoToCertainCell-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoToCertainCell-response (<GoToCertainCell-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToCertainCell-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToCertainCell-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<GoToCertainCell-response> is deprecated: use beginner_tutorials-srv:GoToCertainCell-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GoToCertainCell-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:result-val is deprecated.  Use beginner_tutorials-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToCertainCell-response>) ostream)
  "Serializes a message object of type '<GoToCertainCell-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToCertainCell-response>) istream)
  "Deserializes a message object of type '<GoToCertainCell-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToCertainCell-response>)))
  "Returns string type for a service object of type '<GoToCertainCell-response>"
  "beginner_tutorials/GoToCertainCellResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToCertainCell-response)))
  "Returns string type for a service object of type 'GoToCertainCell-response"
  "beginner_tutorials/GoToCertainCellResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToCertainCell-response>)))
  "Returns md5sum for a message object of type '<GoToCertainCell-response>"
  "aa6b69e8b39989866911686884f64e70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToCertainCell-response)))
  "Returns md5sum for a message object of type 'GoToCertainCell-response"
  "aa6b69e8b39989866911686884f64e70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToCertainCell-response>)))
  "Returns full string definition for message of type '<GoToCertainCell-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToCertainCell-response)))
  "Returns full string definition for message of type 'GoToCertainCell-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToCertainCell-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToCertainCell-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToCertainCell-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToCertainCell)))
  'GoToCertainCell-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToCertainCell)))
  'GoToCertainCell-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToCertainCell)))
  "Returns string type for a service object of type '<GoToCertainCell>"
  "beginner_tutorials/GoToCertainCell")