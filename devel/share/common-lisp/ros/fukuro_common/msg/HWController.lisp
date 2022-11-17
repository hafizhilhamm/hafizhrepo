; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude HWController.msg.html

(cl:defclass <HWController> (roslisp-msg-protocol:ros-message)
  ((encoder
    :reader encoder
    :initarg :encoder
    :type fukuro_common-msg:Encoder
    :initform (cl:make-instance 'fukuro_common-msg:Encoder))
   (freewheel
    :reader freewheel
    :initarg :freewheel
    :type fukuro_common-msg:Encoder
    :initform (cl:make-instance 'fukuro_common-msg:Encoder))
   (pwm
    :reader pwm
    :initarg :pwm
    :type fukuro_common-msg:PWM
    :initform (cl:make-instance 'fukuro_common-msg:PWM))
   (compass
    :reader compass
    :initarg :compass
    :type fukuro_common-msg:Compass
    :initform (cl:make-instance 'fukuro_common-msg:Compass))
   (ir
    :reader ir
    :initarg :ir
    :type cl:fixnum
    :initform 0)
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (vel_cmd
    :reader vel_cmd
    :initarg :vel_cmd
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass HWController (<HWController>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWController>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWController)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<HWController> is deprecated: use fukuro_common-msg:HWController instead.")))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:encoder-val is deprecated.  Use fukuro_common-msg:encoder instead.")
  (encoder m))

(cl:ensure-generic-function 'freewheel-val :lambda-list '(m))
(cl:defmethod freewheel-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:freewheel-val is deprecated.  Use fukuro_common-msg:freewheel instead.")
  (freewheel m))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:pwm-val is deprecated.  Use fukuro_common-msg:pwm instead.")
  (pwm m))

(cl:ensure-generic-function 'compass-val :lambda-list '(m))
(cl:defmethod compass-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:compass-val is deprecated.  Use fukuro_common-msg:compass instead.")
  (compass m))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ir-val is deprecated.  Use fukuro_common-msg:ir instead.")
  (ir m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:vel-val is deprecated.  Use fukuro_common-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'vel_cmd-val :lambda-list '(m))
(cl:defmethod vel_cmd-val ((m <HWController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:vel_cmd-val is deprecated.  Use fukuro_common-msg:vel_cmd instead.")
  (vel_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWController>) ostream)
  "Serializes a message object of type '<HWController>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'encoder) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'freewheel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pwm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'compass) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWController>) istream)
  "Deserializes a message object of type '<HWController>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'encoder) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'freewheel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pwm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'compass) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ir) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWController>)))
  "Returns string type for a message object of type '<HWController>"
  "fukuro_common/HWController")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWController)))
  "Returns string type for a message object of type 'HWController"
  "fukuro_common/HWController")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWController>)))
  "Returns md5sum for a message object of type '<HWController>"
  "5b17edd995ef9a46dfd3ca5601a27eaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWController)))
  "Returns md5sum for a message object of type 'HWController"
  "5b17edd995ef9a46dfd3ca5601a27eaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWController>)))
  "Returns full string definition for message of type '<HWController>"
  (cl:format cl:nil "Encoder encoder~%Encoder freewheel~%PWM pwm~%Compass compass~%int8 ir~%geometry_msgs/Pose2D vel~%geometry_msgs/Pose2D vel_cmd~%================================================================================~%MSG: fukuro_common/Encoder~%int32 m1~%int32 m2~%int32 m3~%================================================================================~%MSG: fukuro_common/PWM~%float64 m1~%float64 m2~%float64 m3~%================================================================================~%MSG: fukuro_common/Compass~%float64 cmps~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWController)))
  "Returns full string definition for message of type 'HWController"
  (cl:format cl:nil "Encoder encoder~%Encoder freewheel~%PWM pwm~%Compass compass~%int8 ir~%geometry_msgs/Pose2D vel~%geometry_msgs/Pose2D vel_cmd~%================================================================================~%MSG: fukuro_common/Encoder~%int32 m1~%int32 m2~%int32 m3~%================================================================================~%MSG: fukuro_common/PWM~%float64 m1~%float64 m2~%float64 m3~%================================================================================~%MSG: fukuro_common/Compass~%float64 cmps~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWController>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'encoder))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'freewheel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pwm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'compass))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWController>))
  "Converts a ROS message object to a list"
  (cl:list 'HWController
    (cl:cons ':encoder (encoder msg))
    (cl:cons ':freewheel (freewheel msg))
    (cl:cons ':pwm (pwm msg))
    (cl:cons ':compass (compass msg))
    (cl:cons ':ir (ir msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':vel_cmd (vel_cmd msg))
))
