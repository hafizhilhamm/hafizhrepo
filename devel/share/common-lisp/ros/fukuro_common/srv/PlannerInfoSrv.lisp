; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude PlannerInfoSrv-request.msg.html

(cl:defclass <PlannerInfoSrv-request> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (grid_size
    :reader grid_size
    :initarg :grid_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlannerInfoSrv-request (<PlannerInfoSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerInfoSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerInfoSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<PlannerInfoSrv-request> is deprecated: use fukuro_common-srv:PlannerInfoSrv-request instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <PlannerInfoSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:width-val is deprecated.  Use fukuro_common-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <PlannerInfoSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:height-val is deprecated.  Use fukuro_common-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'grid_size-val :lambda-list '(m))
(cl:defmethod grid_size-val ((m <PlannerInfoSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:grid_size-val is deprecated.  Use fukuro_common-srv:grid_size instead.")
  (grid_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerInfoSrv-request>) ostream)
  "Serializes a message object of type '<PlannerInfoSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'grid_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerInfoSrv-request>) istream)
  "Deserializes a message object of type '<PlannerInfoSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_size) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerInfoSrv-request>)))
  "Returns string type for a service object of type '<PlannerInfoSrv-request>"
  "fukuro_common/PlannerInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerInfoSrv-request)))
  "Returns string type for a service object of type 'PlannerInfoSrv-request"
  "fukuro_common/PlannerInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerInfoSrv-request>)))
  "Returns md5sum for a message object of type '<PlannerInfoSrv-request>"
  "1be42ff1b6414a6f4a0eb49fbae122a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerInfoSrv-request)))
  "Returns md5sum for a message object of type 'PlannerInfoSrv-request"
  "1be42ff1b6414a6f4a0eb49fbae122a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerInfoSrv-request>)))
  "Returns full string definition for message of type '<PlannerInfoSrv-request>"
  (cl:format cl:nil "float64 width~%float64 height~%float64 grid_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerInfoSrv-request)))
  "Returns full string definition for message of type 'PlannerInfoSrv-request"
  (cl:format cl:nil "float64 width~%float64 height~%float64 grid_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerInfoSrv-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerInfoSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerInfoSrv-request
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':grid_size (grid_size msg))
))
;//! \htmlinclude PlannerInfoSrv-response.msg.html

(cl:defclass <PlannerInfoSrv-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlannerInfoSrv-response (<PlannerInfoSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerInfoSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerInfoSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<PlannerInfoSrv-response> is deprecated: use fukuro_common-srv:PlannerInfoSrv-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <PlannerInfoSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerInfoSrv-response>) ostream)
  "Serializes a message object of type '<PlannerInfoSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerInfoSrv-response>) istream)
  "Deserializes a message object of type '<PlannerInfoSrv-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerInfoSrv-response>)))
  "Returns string type for a service object of type '<PlannerInfoSrv-response>"
  "fukuro_common/PlannerInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerInfoSrv-response)))
  "Returns string type for a service object of type 'PlannerInfoSrv-response"
  "fukuro_common/PlannerInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerInfoSrv-response>)))
  "Returns md5sum for a message object of type '<PlannerInfoSrv-response>"
  "1be42ff1b6414a6f4a0eb49fbae122a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerInfoSrv-response)))
  "Returns md5sum for a message object of type 'PlannerInfoSrv-response"
  "1be42ff1b6414a6f4a0eb49fbae122a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerInfoSrv-response>)))
  "Returns full string definition for message of type '<PlannerInfoSrv-response>"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerInfoSrv-response)))
  "Returns full string definition for message of type 'PlannerInfoSrv-response"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerInfoSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerInfoSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerInfoSrv-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerInfoSrv)))
  'PlannerInfoSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerInfoSrv)))
  'PlannerInfoSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerInfoSrv)))
  "Returns string type for a service object of type '<PlannerInfoSrv>"
  "fukuro_common/PlannerInfoSrv")