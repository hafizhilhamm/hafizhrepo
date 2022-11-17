; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude RobotVel.msg.html

(cl:defclass <RobotVel> (roslisp-msg-protocol:ros-message)
  ((free1
    :reader free1
    :initarg :free1
    :type cl:float
    :initform 0.0)
   (free2
    :reader free2
    :initarg :free2
    :type cl:float
    :initform 0.0)
   (free3
    :reader free3
    :initarg :free3
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotVel (<RobotVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<RobotVel> is deprecated: use fukuro_common-msg:RobotVel instead.")))

(cl:ensure-generic-function 'free1-val :lambda-list '(m))
(cl:defmethod free1-val ((m <RobotVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:free1-val is deprecated.  Use fukuro_common-msg:free1 instead.")
  (free1 m))

(cl:ensure-generic-function 'free2-val :lambda-list '(m))
(cl:defmethod free2-val ((m <RobotVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:free2-val is deprecated.  Use fukuro_common-msg:free2 instead.")
  (free2 m))

(cl:ensure-generic-function 'free3-val :lambda-list '(m))
(cl:defmethod free3-val ((m <RobotVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:free3-val is deprecated.  Use fukuro_common-msg:free3 instead.")
  (free3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotVel>) ostream)
  "Serializes a message object of type '<RobotVel>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'free1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'free2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'free3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotVel>) istream)
  "Deserializes a message object of type '<RobotVel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'free1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'free2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'free3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotVel>)))
  "Returns string type for a message object of type '<RobotVel>"
  "fukuro_common/RobotVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotVel)))
  "Returns string type for a message object of type 'RobotVel"
  "fukuro_common/RobotVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotVel>)))
  "Returns md5sum for a message object of type '<RobotVel>"
  "5c8b02a70b5431ee21c709a8d3e87494")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotVel)))
  "Returns md5sum for a message object of type 'RobotVel"
  "5c8b02a70b5431ee21c709a8d3e87494")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotVel>)))
  "Returns full string definition for message of type '<RobotVel>"
  (cl:format cl:nil "float32 free1~%float32 free2~%float32 free3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotVel)))
  "Returns full string definition for message of type 'RobotVel"
  (cl:format cl:nil "float32 free1~%float32 free2~%float32 free3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotVel>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotVel>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotVel
    (cl:cons ':free1 (free1 msg))
    (cl:cons ':free2 (free2 msg))
    (cl:cons ':free3 (free3 msg))
))
