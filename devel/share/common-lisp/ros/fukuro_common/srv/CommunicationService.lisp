; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude CommunicationService-request.msg.html

(cl:defclass <CommunicationService-request> (roslisp-msg-protocol:ros-message)
  ((connect
    :reader connect
    :initarg :connect
    :type cl:fixnum
    :initform 0)
   (address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (tx_port
    :reader tx_port
    :initarg :tx_port
    :type cl:integer
    :initform 0)
   (rx_port
    :reader rx_port
    :initarg :rx_port
    :type cl:integer
    :initform 0))
)

(cl:defclass CommunicationService-request (<CommunicationService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommunicationService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommunicationService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<CommunicationService-request> is deprecated: use fukuro_common-srv:CommunicationService-request instead.")))

(cl:ensure-generic-function 'connect-val :lambda-list '(m))
(cl:defmethod connect-val ((m <CommunicationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:connect-val is deprecated.  Use fukuro_common-srv:connect instead.")
  (connect m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <CommunicationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:address-val is deprecated.  Use fukuro_common-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'tx_port-val :lambda-list '(m))
(cl:defmethod tx_port-val ((m <CommunicationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:tx_port-val is deprecated.  Use fukuro_common-srv:tx_port instead.")
  (tx_port m))

(cl:ensure-generic-function 'rx_port-val :lambda-list '(m))
(cl:defmethod rx_port-val ((m <CommunicationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:rx_port-val is deprecated.  Use fukuro_common-srv:rx_port instead.")
  (rx_port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommunicationService-request>) ostream)
  "Serializes a message object of type '<CommunicationService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connect)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
  (cl:let* ((signed (cl:slot-value msg 'tx_port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rx_port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommunicationService-request>) istream)
  "Deserializes a message object of type '<CommunicationService-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connect)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tx_port) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rx_port) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommunicationService-request>)))
  "Returns string type for a service object of type '<CommunicationService-request>"
  "fukuro_common/CommunicationServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommunicationService-request)))
  "Returns string type for a service object of type 'CommunicationService-request"
  "fukuro_common/CommunicationServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommunicationService-request>)))
  "Returns md5sum for a message object of type '<CommunicationService-request>"
  "59e80fb04ed5834efebecd78c5beaed9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommunicationService-request)))
  "Returns md5sum for a message object of type 'CommunicationService-request"
  "59e80fb04ed5834efebecd78c5beaed9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommunicationService-request>)))
  "Returns full string definition for message of type '<CommunicationService-request>"
  (cl:format cl:nil "uint8 connect~%string address~%int64 tx_port~%int64 rx_port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommunicationService-request)))
  "Returns full string definition for message of type 'CommunicationService-request"
  (cl:format cl:nil "uint8 connect~%string address~%int64 tx_port~%int64 rx_port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommunicationService-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'address))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommunicationService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommunicationService-request
    (cl:cons ':connect (connect msg))
    (cl:cons ':address (address msg))
    (cl:cons ':tx_port (tx_port msg))
    (cl:cons ':rx_port (rx_port msg))
))
;//! \htmlinclude CommunicationService-response.msg.html

(cl:defclass <CommunicationService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommunicationService-response (<CommunicationService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommunicationService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommunicationService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<CommunicationService-response> is deprecated: use fukuro_common-srv:CommunicationService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommunicationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:success-val is deprecated.  Use fukuro_common-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommunicationService-response>) ostream)
  "Serializes a message object of type '<CommunicationService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'success)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommunicationService-response>) istream)
  "Deserializes a message object of type '<CommunicationService-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'success)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommunicationService-response>)))
  "Returns string type for a service object of type '<CommunicationService-response>"
  "fukuro_common/CommunicationServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommunicationService-response)))
  "Returns string type for a service object of type 'CommunicationService-response"
  "fukuro_common/CommunicationServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommunicationService-response>)))
  "Returns md5sum for a message object of type '<CommunicationService-response>"
  "59e80fb04ed5834efebecd78c5beaed9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommunicationService-response)))
  "Returns md5sum for a message object of type 'CommunicationService-response"
  "59e80fb04ed5834efebecd78c5beaed9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommunicationService-response>)))
  "Returns full string definition for message of type '<CommunicationService-response>"
  (cl:format cl:nil "uint8 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommunicationService-response)))
  "Returns full string definition for message of type 'CommunicationService-response"
  (cl:format cl:nil "uint8 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommunicationService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommunicationService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommunicationService-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommunicationService)))
  'CommunicationService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommunicationService)))
  'CommunicationService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommunicationService)))
  "Returns string type for a service object of type '<CommunicationService>"
  "fukuro_common/CommunicationService")