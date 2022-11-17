; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude Localization.msg.html

(cl:defclass <Localization> (roslisp-msg-protocol:ros-message)
  ((estimate_pos
    :reader estimate_pos
    :initarg :estimate_pos
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (estimate_pos_descrete
    :reader estimate_pos_descrete
    :initarg :estimate_pos_descrete
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (particles
    :reader particles
    :initarg :particles
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (best_estimation
    :reader best_estimation
    :initarg :best_estimation
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (weights
    :reader weights
    :initarg :weights
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (best_estimation_weight
    :reader best_estimation_weight
    :initarg :best_estimation_weight
    :type cl:float
    :initform 0.0)
   (grid_size
    :reader grid_size
    :initarg :grid_size
    :type cl:integer
    :initform 0))
)

(cl:defclass Localization (<Localization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<Localization> is deprecated: use fukuro_common-msg:Localization instead.")))

(cl:ensure-generic-function 'estimate_pos-val :lambda-list '(m))
(cl:defmethod estimate_pos-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:estimate_pos-val is deprecated.  Use fukuro_common-msg:estimate_pos instead.")
  (estimate_pos m))

(cl:ensure-generic-function 'estimate_pos_descrete-val :lambda-list '(m))
(cl:defmethod estimate_pos_descrete-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:estimate_pos_descrete-val is deprecated.  Use fukuro_common-msg:estimate_pos_descrete instead.")
  (estimate_pos_descrete m))

(cl:ensure-generic-function 'particles-val :lambda-list '(m))
(cl:defmethod particles-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:particles-val is deprecated.  Use fukuro_common-msg:particles instead.")
  (particles m))

(cl:ensure-generic-function 'best_estimation-val :lambda-list '(m))
(cl:defmethod best_estimation-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:best_estimation-val is deprecated.  Use fukuro_common-msg:best_estimation instead.")
  (best_estimation m))

(cl:ensure-generic-function 'weights-val :lambda-list '(m))
(cl:defmethod weights-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:weights-val is deprecated.  Use fukuro_common-msg:weights instead.")
  (weights m))

(cl:ensure-generic-function 'best_estimation_weight-val :lambda-list '(m))
(cl:defmethod best_estimation_weight-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:best_estimation_weight-val is deprecated.  Use fukuro_common-msg:best_estimation_weight instead.")
  (best_estimation_weight m))

(cl:ensure-generic-function 'grid_size-val :lambda-list '(m))
(cl:defmethod grid_size-val ((m <Localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:grid_size-val is deprecated.  Use fukuro_common-msg:grid_size instead.")
  (grid_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localization>) ostream)
  "Serializes a message object of type '<Localization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimate_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimate_pos_descrete) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'particles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'particles))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'best_estimation) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'weights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'weights))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'best_estimation_weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'grid_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localization>) istream)
  "Deserializes a message object of type '<Localization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimate_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimate_pos_descrete) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'particles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'particles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'best_estimation) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'weights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'best_estimation_weight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grid_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localization>)))
  "Returns string type for a message object of type '<Localization>"
  "fukuro_common/Localization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localization)))
  "Returns string type for a message object of type 'Localization"
  "fukuro_common/Localization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localization>)))
  "Returns md5sum for a message object of type '<Localization>"
  "d25fba6248365fe1c093e492c489b9fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localization)))
  "Returns md5sum for a message object of type 'Localization"
  "d25fba6248365fe1c093e492c489b9fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localization>)))
  "Returns full string definition for message of type '<Localization>"
  (cl:format cl:nil "geometry_msgs/Pose2D estimate_pos~%geometry_msgs/Pose2D estimate_pos_descrete~%geometry_msgs/Pose2D[] particles~%geometry_msgs/Pose2D best_estimation~%float64[] weights~%float64 best_estimation_weight~%int32 grid_size~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localization)))
  "Returns full string definition for message of type 'Localization"
  (cl:format cl:nil "geometry_msgs/Pose2D estimate_pos~%geometry_msgs/Pose2D estimate_pos_descrete~%geometry_msgs/Pose2D[] particles~%geometry_msgs/Pose2D best_estimation~%float64[] weights~%float64 best_estimation_weight~%int32 grid_size~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimate_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimate_pos_descrete))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'particles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'best_estimation))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localization>))
  "Converts a ROS message object to a list"
  (cl:list 'Localization
    (cl:cons ':estimate_pos (estimate_pos msg))
    (cl:cons ':estimate_pos_descrete (estimate_pos_descrete msg))
    (cl:cons ':particles (particles msg))
    (cl:cons ':best_estimation (best_estimation msg))
    (cl:cons ':weights (weights msg))
    (cl:cons ':best_estimation_weight (best_estimation_weight msg))
    (cl:cons ':grid_size (grid_size msg))
))
