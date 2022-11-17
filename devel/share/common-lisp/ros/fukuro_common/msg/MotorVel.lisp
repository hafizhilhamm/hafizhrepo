; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude MotorVel.msg.html

(cl:defclass <MotorVel> (roslisp-msg-protocol:ros-message)
  ((m1
    :reader m1
    :initarg :m1
    :type cl:float
    :initform 0.0)
   (m2
    :reader m2
    :initarg :m2
    :type cl:float
    :initform 0.0)
   (m3
    :reader m3
    :initarg :m3
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorVel (<MotorVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<MotorVel> is deprecated: use fukuro_common-msg:MotorVel instead.")))

(cl:ensure-generic-function 'm1-val :lambda-list '(m))
(cl:defmethod m1-val ((m <MotorVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:m1-val is deprecated.  Use fukuro_common-msg:m1 instead.")
  (m1 m))

(cl:ensure-generic-function 'm2-val :lambda-list '(m))
(cl:defmethod m2-val ((m <MotorVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:m2-val is deprecated.  Use fukuro_common-msg:m2 instead.")
  (m2 m))

(cl:ensure-generic-function 'm3-val :lambda-list '(m))
(cl:defmethod m3-val ((m <MotorVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:m3-val is deprecated.  Use fukuro_common-msg:m3 instead.")
  (m3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorVel>) ostream)
  "Serializes a message object of type '<MotorVel>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorVel>) istream)
  "Deserializes a message object of type '<MotorVel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorVel>)))
  "Returns string type for a message object of type '<MotorVel>"
  "fukuro_common/MotorVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorVel)))
  "Returns string type for a message object of type 'MotorVel"
  "fukuro_common/MotorVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorVel>)))
  "Returns md5sum for a message object of type '<MotorVel>"
  "a86e25d23be69cefa1d2e044fba11b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorVel)))
  "Returns md5sum for a message object of type 'MotorVel"
  "a86e25d23be69cefa1d2e044fba11b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorVel>)))
  "Returns full string definition for message of type '<MotorVel>"
  (cl:format cl:nil "float32 m1~%float32 m2~%float32 m3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorVel)))
  "Returns full string definition for message of type 'MotorVel"
  (cl:format cl:nil "float32 m1~%float32 m2~%float32 m3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorVel>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorVel>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorVel
    (cl:cons ':m1 (m1 msg))
    (cl:cons ':m2 (m2 msg))
    (cl:cons ':m3 (m3 msg))
))
