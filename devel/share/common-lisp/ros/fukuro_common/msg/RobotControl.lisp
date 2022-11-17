; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude RobotControl.msg.html

(cl:defclass <RobotControl> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (option
    :reader option
    :initarg :option
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (control
    :reader control
    :initarg :control
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (dribbler_speed
    :reader dribbler_speed
    :initarg :dribbler_speed
    :type cl:float
    :initform 0.0)
   (plan
    :reader plan
    :initarg :plan
    :type cl:boolean
    :initform cl:nil)
   (approach_ball
    :reader approach_ball
    :initarg :approach_ball
    :type cl:boolean
    :initform cl:nil)
   (motor_brake
    :reader motor_brake
    :initarg :motor_brake
    :type cl:boolean
    :initform cl:nil)
   (absolute_move
    :reader absolute_move
    :initarg :absolute_move
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotControl (<RobotControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<RobotControl> is deprecated: use fukuro_common-msg:RobotControl instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:target_pose-val is deprecated.  Use fukuro_common-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:option-val is deprecated.  Use fukuro_common-msg:option instead.")
  (option m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:control-val is deprecated.  Use fukuro_common-msg:control instead.")
  (control m))

(cl:ensure-generic-function 'dribbler_speed-val :lambda-list '(m))
(cl:defmethod dribbler_speed-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:dribbler_speed-val is deprecated.  Use fukuro_common-msg:dribbler_speed instead.")
  (dribbler_speed m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:plan-val is deprecated.  Use fukuro_common-msg:plan instead.")
  (plan m))

(cl:ensure-generic-function 'approach_ball-val :lambda-list '(m))
(cl:defmethod approach_ball-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:approach_ball-val is deprecated.  Use fukuro_common-msg:approach_ball instead.")
  (approach_ball m))

(cl:ensure-generic-function 'motor_brake-val :lambda-list '(m))
(cl:defmethod motor_brake-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:motor_brake-val is deprecated.  Use fukuro_common-msg:motor_brake instead.")
  (motor_brake m))

(cl:ensure-generic-function 'absolute_move-val :lambda-list '(m))
(cl:defmethod absolute_move-val ((m <RobotControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:absolute_move-val is deprecated.  Use fukuro_common-msg:absolute_move instead.")
  (absolute_move m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControl>) ostream)
  "Serializes a message object of type '<RobotControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'option) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dribbler_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plan) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'approach_ball) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'absolute_move) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControl>) istream)
  "Deserializes a message object of type '<RobotControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'option) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dribbler_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'plan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'approach_ball) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'absolute_move) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControl>)))
  "Returns string type for a message object of type '<RobotControl>"
  "fukuro_common/RobotControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControl)))
  "Returns string type for a message object of type 'RobotControl"
  "fukuro_common/RobotControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControl>)))
  "Returns md5sum for a message object of type '<RobotControl>"
  "d1cd8f601a5db7d70afbd3196ead46cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControl)))
  "Returns md5sum for a message object of type 'RobotControl"
  "d1cd8f601a5db7d70afbd3196ead46cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControl>)))
  "Returns full string definition for message of type '<RobotControl>"
  (cl:format cl:nil "geometry_msgs/Pose2D target_pose~%std_msgs/String option~%std_msgs/String control~%float64 dribbler_speed~%bool plan~%bool approach_ball~%bool motor_brake~%bool absolute_move~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControl)))
  "Returns full string definition for message of type 'RobotControl"
  (cl:format cl:nil "geometry_msgs/Pose2D target_pose~%std_msgs/String option~%std_msgs/String control~%float64 dribbler_speed~%bool plan~%bool approach_ball~%bool motor_brake~%bool absolute_move~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'option))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
     8
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControl>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControl
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':option (option msg))
    (cl:cons ':control (control msg))
    (cl:cons ':dribbler_speed (dribbler_speed msg))
    (cl:cons ':plan (plan msg))
    (cl:cons ':approach_ball (approach_ball msg))
    (cl:cons ':motor_brake (motor_brake msg))
    (cl:cons ':absolute_move (absolute_move msg))
))
