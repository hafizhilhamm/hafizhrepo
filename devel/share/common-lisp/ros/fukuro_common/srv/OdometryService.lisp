; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude OdometryService-request.msg.html

(cl:defclass <OdometryService-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass OdometryService-request (<OdometryService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<OdometryService-request> is deprecated: use fukuro_common-srv:OdometryService-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <OdometryService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:x-val is deprecated.  Use fukuro_common-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <OdometryService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:y-val is deprecated.  Use fukuro_common-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <OdometryService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:w-val is deprecated.  Use fukuro_common-srv:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryService-request>) ostream)
  "Serializes a message object of type '<OdometryService-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryService-request>) istream)
  "Deserializes a message object of type '<OdometryService-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryService-request>)))
  "Returns string type for a service object of type '<OdometryService-request>"
  "fukuro_common/OdometryServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryService-request)))
  "Returns string type for a service object of type 'OdometryService-request"
  "fukuro_common/OdometryServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryService-request>)))
  "Returns md5sum for a message object of type '<OdometryService-request>"
  "53452fdf3dd1b1dec99dc1c69895e9cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryService-request)))
  "Returns md5sum for a message object of type 'OdometryService-request"
  "53452fdf3dd1b1dec99dc1c69895e9cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryService-request>)))
  "Returns full string definition for message of type '<OdometryService-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryService-request)))
  "Returns full string definition for message of type 'OdometryService-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryService-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryService-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':w (w msg))
))
;//! \htmlinclude OdometryService-response.msg.html

(cl:defclass <OdometryService-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:integer
    :initform 0))
)

(cl:defclass OdometryService-response (<OdometryService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<OdometryService-response> is deprecated: use fukuro_common-srv:OdometryService-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <OdometryService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryService-response>) ostream)
  "Serializes a message object of type '<OdometryService-response>"
  (cl:let* ((signed (cl:slot-value msg 'ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryService-response>) istream)
  "Deserializes a message object of type '<OdometryService-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ok) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryService-response>)))
  "Returns string type for a service object of type '<OdometryService-response>"
  "fukuro_common/OdometryServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryService-response)))
  "Returns string type for a service object of type 'OdometryService-response"
  "fukuro_common/OdometryServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryService-response>)))
  "Returns md5sum for a message object of type '<OdometryService-response>"
  "53452fdf3dd1b1dec99dc1c69895e9cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryService-response)))
  "Returns md5sum for a message object of type 'OdometryService-response"
  "53452fdf3dd1b1dec99dc1c69895e9cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryService-response>)))
  "Returns full string definition for message of type '<OdometryService-response>"
  (cl:format cl:nil "int64 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryService-response)))
  "Returns full string definition for message of type 'OdometryService-response"
  (cl:format cl:nil "int64 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryService-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryService-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OdometryService)))
  'OdometryService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OdometryService)))
  'OdometryService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryService)))
  "Returns string type for a service object of type '<OdometryService>"
  "fukuro_common/OdometryService")