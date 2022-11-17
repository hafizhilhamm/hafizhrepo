; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude HWControllerAutotuning-request.msg.html

(cl:defclass <HWControllerAutotuning-request> (roslisp-msg-protocol:ros-message)
  ((setpoint
    :reader setpoint
    :initarg :setpoint
    :type cl:float
    :initform 0.0))
)

(cl:defclass HWControllerAutotuning-request (<HWControllerAutotuning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerAutotuning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerAutotuning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerAutotuning-request> is deprecated: use fukuro_common-srv:HWControllerAutotuning-request instead.")))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <HWControllerAutotuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:setpoint-val is deprecated.  Use fukuro_common-srv:setpoint instead.")
  (setpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerAutotuning-request>) ostream)
  "Serializes a message object of type '<HWControllerAutotuning-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'setpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerAutotuning-request>) istream)
  "Deserializes a message object of type '<HWControllerAutotuning-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerAutotuning-request>)))
  "Returns string type for a service object of type '<HWControllerAutotuning-request>"
  "fukuro_common/HWControllerAutotuningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerAutotuning-request)))
  "Returns string type for a service object of type 'HWControllerAutotuning-request"
  "fukuro_common/HWControllerAutotuningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerAutotuning-request>)))
  "Returns md5sum for a message object of type '<HWControllerAutotuning-request>"
  "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerAutotuning-request)))
  "Returns md5sum for a message object of type 'HWControllerAutotuning-request"
  "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerAutotuning-request>)))
  "Returns full string definition for message of type '<HWControllerAutotuning-request>"
  (cl:format cl:nil "float64 setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerAutotuning-request)))
  "Returns full string definition for message of type 'HWControllerAutotuning-request"
  (cl:format cl:nil "float64 setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerAutotuning-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerAutotuning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerAutotuning-request
    (cl:cons ':setpoint (setpoint msg))
))
;//! \htmlinclude HWControllerAutotuning-response.msg.html

(cl:defclass <HWControllerAutotuning-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:integer
    :initform 0))
)

(cl:defclass HWControllerAutotuning-response (<HWControllerAutotuning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerAutotuning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerAutotuning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerAutotuning-response> is deprecated: use fukuro_common-srv:HWControllerAutotuning-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <HWControllerAutotuning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerAutotuning-response>) ostream)
  "Serializes a message object of type '<HWControllerAutotuning-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerAutotuning-response>) istream)
  "Deserializes a message object of type '<HWControllerAutotuning-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerAutotuning-response>)))
  "Returns string type for a service object of type '<HWControllerAutotuning-response>"
  "fukuro_common/HWControllerAutotuningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerAutotuning-response)))
  "Returns string type for a service object of type 'HWControllerAutotuning-response"
  "fukuro_common/HWControllerAutotuningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerAutotuning-response>)))
  "Returns md5sum for a message object of type '<HWControllerAutotuning-response>"
  "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerAutotuning-response)))
  "Returns md5sum for a message object of type 'HWControllerAutotuning-response"
  "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerAutotuning-response>)))
  "Returns full string definition for message of type '<HWControllerAutotuning-response>"
  (cl:format cl:nil "int64 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerAutotuning-response)))
  "Returns full string definition for message of type 'HWControllerAutotuning-response"
  (cl:format cl:nil "int64 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerAutotuning-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerAutotuning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerAutotuning-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HWControllerAutotuning)))
  'HWControllerAutotuning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HWControllerAutotuning)))
  'HWControllerAutotuning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerAutotuning)))
  "Returns string type for a service object of type '<HWControllerAutotuning>"
  "fukuro_common/HWControllerAutotuning")