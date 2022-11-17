; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude HWControllerCommand.msg.html

(cl:defclass <HWControllerCommand> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type fukuro_common-msg:VelCmd
    :initform (cl:make-instance 'fukuro_common-msg:VelCmd))
   (dribbler
    :reader dribbler
    :initarg :dribbler
    :type fukuro_common-msg:DribblerControl
    :initform (cl:make-instance 'fukuro_common-msg:DribblerControl))
   (motor
    :reader motor
    :initarg :motor
    :type fukuro_common-msg:MotorVel
    :initform (cl:make-instance 'fukuro_common-msg:MotorVel))
   (kick
    :reader kick
    :initarg :kick
    :type cl:integer
    :initform 0)
   (pwm_test
    :reader pwm_test
    :initarg :pwm_test
    :type cl:boolean
    :initform cl:nil)
   (motor_brake
    :reader motor_brake
    :initarg :motor_brake
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HWControllerCommand (<HWControllerCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<HWControllerCommand> is deprecated: use fukuro_common-msg:HWControllerCommand instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <HWControllerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:vel-val is deprecated.  Use fukuro_common-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'dribbler-val :lambda-list '(m))
(cl:defmethod dribbler-val ((m <HWControllerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:dribbler-val is deprecated.  Use fukuro_common-msg:dribbler instead.")
  (dribbler m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <HWControllerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:motor-val is deprecated.  Use fukuro_common-msg:motor instead.")
  (motor m))

(cl:ensure-generic-function 'kick-val :lambda-list '(m))
(cl:defmethod kick-val ((m <HWControllerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:kick-val is deprecated.  Use fukuro_common-msg:kick instead.")
  (kick m))

(cl:ensure-generic-function 'pwm_test-val :lambda-list '(m))
(cl:defmethod pwm_test-val ((m <HWControllerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:pwm_test-val is deprecated.  Use fukuro_common-msg:pwm_test instead.")
  (pwm_test m))

(cl:ensure-generic-function 'motor_brake-val :lambda-list '(m))
(cl:defmethod motor_brake-val ((m <HWControllerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:motor_brake-val is deprecated.  Use fukuro_common-msg:motor_brake instead.")
  (motor_brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerCommand>) ostream)
  "Serializes a message object of type '<HWControllerCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dribbler) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor) ostream)
  (cl:let* ((signed (cl:slot-value msg 'kick)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pwm_test) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_brake) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerCommand>) istream)
  "Deserializes a message object of type '<HWControllerCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dribbler) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kick) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'pwm_test) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_brake) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerCommand>)))
  "Returns string type for a message object of type '<HWControllerCommand>"
  "fukuro_common/HWControllerCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerCommand)))
  "Returns string type for a message object of type 'HWControllerCommand"
  "fukuro_common/HWControllerCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerCommand>)))
  "Returns md5sum for a message object of type '<HWControllerCommand>"
  "8649b21cff79d6ff662fd81507c1f841")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerCommand)))
  "Returns md5sum for a message object of type 'HWControllerCommand"
  "8649b21cff79d6ff662fd81507c1f841")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerCommand>)))
  "Returns full string definition for message of type '<HWControllerCommand>"
  (cl:format cl:nil "VelCmd vel~%DribblerControl dribbler~%MotorVel motor~%int32 kick~%bool pwm_test~%bool motor_brake~%================================================================================~%MSG: fukuro_common/VelCmd~%float64 vx~%float64 vy~%float64 w~%================================================================================~%MSG: fukuro_common/DribblerControl~%uint8 dir_in~%float32 speed~%================================================================================~%MSG: fukuro_common/MotorVel~%float32 m1~%float32 m2~%float32 m3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerCommand)))
  "Returns full string definition for message of type 'HWControllerCommand"
  (cl:format cl:nil "VelCmd vel~%DribblerControl dribbler~%MotorVel motor~%int32 kick~%bool pwm_test~%bool motor_brake~%================================================================================~%MSG: fukuro_common/VelCmd~%float64 vx~%float64 vy~%float64 w~%================================================================================~%MSG: fukuro_common/DribblerControl~%uint8 dir_in~%float32 speed~%================================================================================~%MSG: fukuro_common/MotorVel~%float32 m1~%float32 m2~%float32 m3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dribbler))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerCommand
    (cl:cons ':vel (vel msg))
    (cl:cons ':dribbler (dribbler msg))
    (cl:cons ':motor (motor msg))
    (cl:cons ':kick (kick msg))
    (cl:cons ':pwm_test (pwm_test msg))
    (cl:cons ':motor_brake (motor_brake msg))
))
