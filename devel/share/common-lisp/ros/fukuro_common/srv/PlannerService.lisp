; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude PlannerService-request.msg.html

(cl:defclass <PlannerService-request> (roslisp-msg-protocol:ros-message)
  ((goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:float
    :initform 0.0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlannerService-request (<PlannerService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<PlannerService-request> is deprecated: use fukuro_common-srv:PlannerService-request instead.")))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:goal_x-val is deprecated.  Use fukuro_common-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:goal_y-val is deprecated.  Use fukuro_common-srv:goal_y instead.")
  (goal_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerService-request>) ostream)
  "Serializes a message object of type '<PlannerService-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerService-request>) istream)
  "Deserializes a message object of type '<PlannerService-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerService-request>)))
  "Returns string type for a service object of type '<PlannerService-request>"
  "fukuro_common/PlannerServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService-request)))
  "Returns string type for a service object of type 'PlannerService-request"
  "fukuro_common/PlannerServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerService-request>)))
  "Returns md5sum for a message object of type '<PlannerService-request>"
  "5a5a6fb0e0f734584b61533ce0d0cbd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerService-request)))
  "Returns md5sum for a message object of type 'PlannerService-request"
  "5a5a6fb0e0f734584b61533ce0d0cbd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerService-request>)))
  "Returns full string definition for message of type '<PlannerService-request>"
  (cl:format cl:nil "float64 goal_x~%float64 goal_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerService-request)))
  "Returns full string definition for message of type 'PlannerService-request"
  (cl:format cl:nil "float64 goal_x~%float64 goal_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerService-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerService-request
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
))
;//! \htmlinclude PlannerService-response.msg.html

(cl:defclass <PlannerService-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlannerService-response (<PlannerService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<PlannerService-response> is deprecated: use fukuro_common-srv:PlannerService-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerService-response>) ostream)
  "Serializes a message object of type '<PlannerService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerService-response>) istream)
  "Deserializes a message object of type '<PlannerService-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerService-response>)))
  "Returns string type for a service object of type '<PlannerService-response>"
  "fukuro_common/PlannerServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService-response)))
  "Returns string type for a service object of type 'PlannerService-response"
  "fukuro_common/PlannerServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerService-response>)))
  "Returns md5sum for a message object of type '<PlannerService-response>"
  "5a5a6fb0e0f734584b61533ce0d0cbd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerService-response)))
  "Returns md5sum for a message object of type 'PlannerService-response"
  "5a5a6fb0e0f734584b61533ce0d0cbd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerService-response>)))
  "Returns full string definition for message of type '<PlannerService-response>"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerService-response)))
  "Returns full string definition for message of type 'PlannerService-response"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerService-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerService)))
  'PlannerService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerService)))
  'PlannerService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService)))
  "Returns string type for a service object of type '<PlannerService>"
  "fukuro_common/PlannerService")