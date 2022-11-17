; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude Compass.msg.html

(cl:defclass <Compass> (roslisp-msg-protocol:ros-message)
  ((cmps
    :reader cmps
    :initarg :cmps
    :type cl:float
    :initform 0.0))
)

(cl:defclass Compass (<Compass>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Compass>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Compass)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<Compass> is deprecated: use fukuro_common-msg:Compass instead.")))

(cl:ensure-generic-function 'cmps-val :lambda-list '(m))
(cl:defmethod cmps-val ((m <Compass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:cmps-val is deprecated.  Use fukuro_common-msg:cmps instead.")
  (cmps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Compass>) ostream)
  "Serializes a message object of type '<Compass>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cmps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Compass>) istream)
  "Deserializes a message object of type '<Compass>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmps) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Compass>)))
  "Returns string type for a message object of type '<Compass>"
  "fukuro_common/Compass")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Compass)))
  "Returns string type for a message object of type 'Compass"
  "fukuro_common/Compass")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Compass>)))
  "Returns md5sum for a message object of type '<Compass>"
  "9fef2f746f54270aba8e56b443ad3f25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Compass)))
  "Returns md5sum for a message object of type 'Compass"
  "9fef2f746f54270aba8e56b443ad3f25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Compass>)))
  "Returns full string definition for message of type '<Compass>"
  (cl:format cl:nil "float64 cmps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Compass)))
  "Returns full string definition for message of type 'Compass"
  (cl:format cl:nil "float64 cmps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Compass>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Compass>))
  "Converts a ROS message object to a list"
  (cl:list 'Compass
    (cl:cons ':cmps (cmps msg))
))
