; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude Communication.msg.html

(cl:defclass <Communication> (roslisp-msg-protocol:ros-message)
  ((address
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

(cl:defclass Communication (<Communication>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Communication>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Communication)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<Communication> is deprecated: use fukuro_common-msg:Communication instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <Communication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:address-val is deprecated.  Use fukuro_common-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'tx_port-val :lambda-list '(m))
(cl:defmethod tx_port-val ((m <Communication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:tx_port-val is deprecated.  Use fukuro_common-msg:tx_port instead.")
  (tx_port m))

(cl:ensure-generic-function 'rx_port-val :lambda-list '(m))
(cl:defmethod rx_port-val ((m <Communication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:rx_port-val is deprecated.  Use fukuro_common-msg:rx_port instead.")
  (rx_port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Communication>) ostream)
  "Serializes a message object of type '<Communication>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Communication>) istream)
  "Deserializes a message object of type '<Communication>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Communication>)))
  "Returns string type for a message object of type '<Communication>"
  "fukuro_common/Communication")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Communication)))
  "Returns string type for a message object of type 'Communication"
  "fukuro_common/Communication")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Communication>)))
  "Returns md5sum for a message object of type '<Communication>"
  "3aa7881fa3e1c105fe7e3d5e50a57a0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Communication)))
  "Returns md5sum for a message object of type 'Communication"
  "3aa7881fa3e1c105fe7e3d5e50a57a0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Communication>)))
  "Returns full string definition for message of type '<Communication>"
  (cl:format cl:nil "string address~%int64 tx_port~%int64 rx_port~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Communication)))
  "Returns full string definition for message of type 'Communication"
  (cl:format cl:nil "string address~%int64 tx_port~%int64 rx_port~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Communication>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'address))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Communication>))
  "Converts a ROS message object to a list"
  (cl:list 'Communication
    (cl:cons ':address (address msg))
    (cl:cons ':tx_port (tx_port msg))
    (cl:cons ':rx_port (rx_port msg))
))
