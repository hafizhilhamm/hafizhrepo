; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude LocalizationSrv-request.msg.html

(cl:defclass <LocalizationSrv-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (initial_pos
    :reader initial_pos
    :initarg :initial_pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocalizationSrv-request (<LocalizationSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<LocalizationSrv-request> is deprecated: use fukuro_common-srv:LocalizationSrv-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LocalizationSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:x-val is deprecated.  Use fukuro_common-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LocalizationSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:y-val is deprecated.  Use fukuro_common-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <LocalizationSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:w-val is deprecated.  Use fukuro_common-srv:w instead.")
  (w m))

(cl:ensure-generic-function 'initial_pos-val :lambda-list '(m))
(cl:defmethod initial_pos-val ((m <LocalizationSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:initial_pos-val is deprecated.  Use fukuro_common-srv:initial_pos instead.")
  (initial_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationSrv-request>) ostream)
  "Serializes a message object of type '<LocalizationSrv-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'initial_pos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationSrv-request>) istream)
  "Deserializes a message object of type '<LocalizationSrv-request>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'initial_pos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationSrv-request>)))
  "Returns string type for a service object of type '<LocalizationSrv-request>"
  "fukuro_common/LocalizationSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationSrv-request)))
  "Returns string type for a service object of type 'LocalizationSrv-request"
  "fukuro_common/LocalizationSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationSrv-request>)))
  "Returns md5sum for a message object of type '<LocalizationSrv-request>"
  "3e656325d982b6bf93fe099b9e93f49c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationSrv-request)))
  "Returns md5sum for a message object of type 'LocalizationSrv-request"
  "3e656325d982b6bf93fe099b9e93f49c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationSrv-request>)))
  "Returns full string definition for message of type '<LocalizationSrv-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 w~%uint8 initial_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationSrv-request)))
  "Returns full string definition for message of type 'LocalizationSrv-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 w~%uint8 initial_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationSrv-request>))
  (cl:+ 0
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationSrv-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':w (w msg))
    (cl:cons ':initial_pos (initial_pos msg))
))
;//! \htmlinclude LocalizationSrv-response.msg.html

(cl:defclass <LocalizationSrv-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocalizationSrv-response (<LocalizationSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<LocalizationSrv-response> is deprecated: use fukuro_common-srv:LocalizationSrv-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <LocalizationSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationSrv-response>) ostream)
  "Serializes a message object of type '<LocalizationSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationSrv-response>) istream)
  "Deserializes a message object of type '<LocalizationSrv-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationSrv-response>)))
  "Returns string type for a service object of type '<LocalizationSrv-response>"
  "fukuro_common/LocalizationSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationSrv-response)))
  "Returns string type for a service object of type 'LocalizationSrv-response"
  "fukuro_common/LocalizationSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationSrv-response>)))
  "Returns md5sum for a message object of type '<LocalizationSrv-response>"
  "3e656325d982b6bf93fe099b9e93f49c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationSrv-response)))
  "Returns md5sum for a message object of type 'LocalizationSrv-response"
  "3e656325d982b6bf93fe099b9e93f49c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationSrv-response>)))
  "Returns full string definition for message of type '<LocalizationSrv-response>"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationSrv-response)))
  "Returns full string definition for message of type 'LocalizationSrv-response"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationSrv-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalizationSrv)))
  'LocalizationSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalizationSrv)))
  'LocalizationSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationSrv)))
  "Returns string type for a service object of type '<LocalizationSrv>"
  "fukuro_common/LocalizationSrv")