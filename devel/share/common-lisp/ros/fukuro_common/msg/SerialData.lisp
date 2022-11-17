; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude SerialData.msg.html

(cl:defclass <SerialData> (roslisp-msg-protocol:ros-message)
  ((motor
    :reader motor
    :initarg :motor
    :type fukuro_common-msg:MotorVel
    :initform (cl:make-instance 'fukuro_common-msg:MotorVel))
   (kecepatan
    :reader kecepatan
    :initarg :kecepatan
    :type fukuro_common-msg:DribblerControl
    :initform (cl:make-instance 'fukuro_common-msg:DribblerControl))
   (motor_brake
    :reader motor_brake
    :initarg :motor_brake
    :type cl:boolean
    :initform cl:nil)
   (kick
    :reader kick
    :initarg :kick
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SerialData (<SerialData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<SerialData> is deprecated: use fukuro_common-msg:SerialData instead.")))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <SerialData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:motor-val is deprecated.  Use fukuro_common-msg:motor instead.")
  (motor m))

(cl:ensure-generic-function 'kecepatan-val :lambda-list '(m))
(cl:defmethod kecepatan-val ((m <SerialData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:kecepatan-val is deprecated.  Use fukuro_common-msg:kecepatan instead.")
  (kecepatan m))

(cl:ensure-generic-function 'motor_brake-val :lambda-list '(m))
(cl:defmethod motor_brake-val ((m <SerialData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:motor_brake-val is deprecated.  Use fukuro_common-msg:motor_brake instead.")
  (motor_brake m))

(cl:ensure-generic-function 'kick-val :lambda-list '(m))
(cl:defmethod kick-val ((m <SerialData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:kick-val is deprecated.  Use fukuro_common-msg:kick instead.")
  (kick m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialData>) ostream)
  "Serializes a message object of type '<SerialData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kecepatan) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_brake) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'kick)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialData>) istream)
  "Deserializes a message object of type '<SerialData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kecepatan) istream)
    (cl:setf (cl:slot-value msg 'motor_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kick) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialData>)))
  "Returns string type for a message object of type '<SerialData>"
  "fukuro_common/SerialData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialData)))
  "Returns string type for a message object of type 'SerialData"
  "fukuro_common/SerialData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialData>)))
  "Returns md5sum for a message object of type '<SerialData>"
  "e79ea646426556a7d54f50fe79c0de3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialData)))
  "Returns md5sum for a message object of type 'SerialData"
  "e79ea646426556a7d54f50fe79c0de3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialData>)))
  "Returns full string definition for message of type '<SerialData>"
  (cl:format cl:nil "MotorVel motor~%DribblerControl kecepatan~%bool motor_brake~%int8 kick~%================================================================================~%MSG: fukuro_common/MotorVel~%float32 m1~%float32 m2~%float32 m3~%================================================================================~%MSG: fukuro_common/DribblerControl~%uint8 dir_in~%float32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialData)))
  "Returns full string definition for message of type 'SerialData"
  (cl:format cl:nil "MotorVel motor~%DribblerControl kecepatan~%bool motor_brake~%int8 kick~%================================================================================~%MSG: fukuro_common/MotorVel~%float32 m1~%float32 m2~%float32 m3~%================================================================================~%MSG: fukuro_common/DribblerControl~%uint8 dir_in~%float32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kecepatan))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialData>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialData
    (cl:cons ':motor (motor msg))
    (cl:cons ':kecepatan (kecepatan msg))
    (cl:cons ':motor_brake (motor_brake msg))
    (cl:cons ':kick (kick msg))
))
