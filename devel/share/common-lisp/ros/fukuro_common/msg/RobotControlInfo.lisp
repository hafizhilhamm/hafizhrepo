; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude RobotControlInfo.msg.html

(cl:defclass <RobotControlInfo> (roslisp-msg-protocol:ros-message)
  ((error_radius
    :reader error_radius
    :initarg :error_radius
    :type cl:float
    :initform 0.0)
   (error_angle
    :reader error_angle
    :initarg :error_angle
    :type cl:float
    :initform 0.0)
   (setpoint
    :reader setpoint
    :initarg :setpoint
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (plan
    :reader plan
    :initarg :plan
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotControlInfo (<RobotControlInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControlInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControlInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<RobotControlInfo> is deprecated: use fukuro_common-msg:RobotControlInfo instead.")))

(cl:ensure-generic-function 'error_radius-val :lambda-list '(m))
(cl:defmethod error_radius-val ((m <RobotControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:error_radius-val is deprecated.  Use fukuro_common-msg:error_radius instead.")
  (error_radius m))

(cl:ensure-generic-function 'error_angle-val :lambda-list '(m))
(cl:defmethod error_angle-val ((m <RobotControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:error_angle-val is deprecated.  Use fukuro_common-msg:error_angle instead.")
  (error_angle m))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <RobotControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:setpoint-val is deprecated.  Use fukuro_common-msg:setpoint instead.")
  (setpoint m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <RobotControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:plan-val is deprecated.  Use fukuro_common-msg:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControlInfo>) ostream)
  "Serializes a message object of type '<RobotControlInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'setpoint) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plan) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControlInfo>) istream)
  "Deserializes a message object of type '<RobotControlInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_angle) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'setpoint) istream)
    (cl:setf (cl:slot-value msg 'plan) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControlInfo>)))
  "Returns string type for a message object of type '<RobotControlInfo>"
  "fukuro_common/RobotControlInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControlInfo)))
  "Returns string type for a message object of type 'RobotControlInfo"
  "fukuro_common/RobotControlInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControlInfo>)))
  "Returns md5sum for a message object of type '<RobotControlInfo>"
  "3d219701cbb4b4f70bacc052c397c3a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControlInfo)))
  "Returns md5sum for a message object of type 'RobotControlInfo"
  "3d219701cbb4b4f70bacc052c397c3a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControlInfo>)))
  "Returns full string definition for message of type '<RobotControlInfo>"
  (cl:format cl:nil "float64 error_radius~%float64 error_angle~%geometry_msgs/Pose2D setpoint~%bool plan~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControlInfo)))
  "Returns full string definition for message of type 'RobotControlInfo"
  (cl:format cl:nil "float64 error_radius~%float64 error_angle~%geometry_msgs/Pose2D setpoint~%bool plan~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControlInfo>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'setpoint))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControlInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControlInfo
    (cl:cons ':error_radius (error_radius msg))
    (cl:cons ':error_angle (error_angle msg))
    (cl:cons ':setpoint (setpoint msg))
    (cl:cons ':plan (plan msg))
))
