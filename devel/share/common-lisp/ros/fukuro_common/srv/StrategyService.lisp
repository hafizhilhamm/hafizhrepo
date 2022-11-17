; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude StrategyService-request.msg.html

(cl:defclass <StrategyService-request> (roslisp-msg-protocol:ros-message)
  ((strategy_state
    :reader strategy_state
    :initarg :strategy_state
    :type cl:string
    :initform "")
   (strategy_option
    :reader strategy_option
    :initarg :strategy_option
    :type cl:string
    :initform "")
   (role
    :reader role
    :initarg :role
    :type cl:string
    :initform "")
   (obs1_pos
    :reader obs1_pos
    :initarg :obs1_pos
    :type cl:integer
    :initform 0)
   (obs2_pos
    :reader obs2_pos
    :initarg :obs2_pos
    :type cl:integer
    :initform 0)
   (kiper_pos
    :reader kiper_pos
    :initarg :kiper_pos
    :type cl:integer
    :initform 0)
   (option
    :reader option
    :initarg :option
    :type cl:string
    :initform "")
   (home_pos
    :reader home_pos
    :initarg :home_pos
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (kick_pos
    :reader kick_pos
    :initarg :kick_pos
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass StrategyService-request (<StrategyService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrategyService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrategyService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<StrategyService-request> is deprecated: use fukuro_common-srv:StrategyService-request instead.")))

(cl:ensure-generic-function 'strategy_state-val :lambda-list '(m))
(cl:defmethod strategy_state-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:strategy_state-val is deprecated.  Use fukuro_common-srv:strategy_state instead.")
  (strategy_state m))

(cl:ensure-generic-function 'strategy_option-val :lambda-list '(m))
(cl:defmethod strategy_option-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:strategy_option-val is deprecated.  Use fukuro_common-srv:strategy_option instead.")
  (strategy_option m))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:role-val is deprecated.  Use fukuro_common-srv:role instead.")
  (role m))

(cl:ensure-generic-function 'obs1_pos-val :lambda-list '(m))
(cl:defmethod obs1_pos-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obs1_pos-val is deprecated.  Use fukuro_common-srv:obs1_pos instead.")
  (obs1_pos m))

(cl:ensure-generic-function 'obs2_pos-val :lambda-list '(m))
(cl:defmethod obs2_pos-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obs2_pos-val is deprecated.  Use fukuro_common-srv:obs2_pos instead.")
  (obs2_pos m))

(cl:ensure-generic-function 'kiper_pos-val :lambda-list '(m))
(cl:defmethod kiper_pos-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:kiper_pos-val is deprecated.  Use fukuro_common-srv:kiper_pos instead.")
  (kiper_pos m))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:option-val is deprecated.  Use fukuro_common-srv:option instead.")
  (option m))

(cl:ensure-generic-function 'home_pos-val :lambda-list '(m))
(cl:defmethod home_pos-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:home_pos-val is deprecated.  Use fukuro_common-srv:home_pos instead.")
  (home_pos m))

(cl:ensure-generic-function 'kick_pos-val :lambda-list '(m))
(cl:defmethod kick_pos-val ((m <StrategyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:kick_pos-val is deprecated.  Use fukuro_common-srv:kick_pos instead.")
  (kick_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrategyService-request>) ostream)
  "Serializes a message object of type '<StrategyService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strategy_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strategy_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strategy_option))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strategy_option))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'role))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'role))
  (cl:let* ((signed (cl:slot-value msg 'obs1_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'obs2_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kiper_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'option))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'option))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'home_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kick_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrategyService-request>) istream)
  "Deserializes a message object of type '<StrategyService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strategy_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strategy_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strategy_option) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strategy_option) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'role) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'role) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obs1_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obs2_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kiper_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'option) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'option) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'home_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kick_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrategyService-request>)))
  "Returns string type for a service object of type '<StrategyService-request>"
  "fukuro_common/StrategyServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrategyService-request)))
  "Returns string type for a service object of type 'StrategyService-request"
  "fukuro_common/StrategyServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrategyService-request>)))
  "Returns md5sum for a message object of type '<StrategyService-request>"
  "2db2786a5ed05eb6930ecf6644f9e863")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrategyService-request)))
  "Returns md5sum for a message object of type 'StrategyService-request"
  "2db2786a5ed05eb6930ecf6644f9e863")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrategyService-request>)))
  "Returns full string definition for message of type '<StrategyService-request>"
  (cl:format cl:nil "string strategy_state~%string strategy_option~%string role~%int32 obs1_pos~%int32 obs2_pos~%int32 kiper_pos~%string option~%geometry_msgs/Pose2D home_pos~%geometry_msgs/Pose2D kick_pos~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrategyService-request)))
  "Returns full string definition for message of type 'StrategyService-request"
  (cl:format cl:nil "string strategy_state~%string strategy_option~%string role~%int32 obs1_pos~%int32 obs2_pos~%int32 kiper_pos~%string option~%geometry_msgs/Pose2D home_pos~%geometry_msgs/Pose2D kick_pos~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrategyService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strategy_state))
     4 (cl:length (cl:slot-value msg 'strategy_option))
     4 (cl:length (cl:slot-value msg 'role))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'option))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'home_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kick_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrategyService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StrategyService-request
    (cl:cons ':strategy_state (strategy_state msg))
    (cl:cons ':strategy_option (strategy_option msg))
    (cl:cons ':role (role msg))
    (cl:cons ':obs1_pos (obs1_pos msg))
    (cl:cons ':obs2_pos (obs2_pos msg))
    (cl:cons ':kiper_pos (kiper_pos msg))
    (cl:cons ':option (option msg))
    (cl:cons ':home_pos (home_pos msg))
    (cl:cons ':kick_pos (kick_pos msg))
))
;//! \htmlinclude StrategyService-response.msg.html

(cl:defclass <StrategyService-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StrategyService-response (<StrategyService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrategyService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrategyService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<StrategyService-response> is deprecated: use fukuro_common-srv:StrategyService-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <StrategyService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrategyService-response>) ostream)
  "Serializes a message object of type '<StrategyService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrategyService-response>) istream)
  "Deserializes a message object of type '<StrategyService-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrategyService-response>)))
  "Returns string type for a service object of type '<StrategyService-response>"
  "fukuro_common/StrategyServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrategyService-response)))
  "Returns string type for a service object of type 'StrategyService-response"
  "fukuro_common/StrategyServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrategyService-response>)))
  "Returns md5sum for a message object of type '<StrategyService-response>"
  "2db2786a5ed05eb6930ecf6644f9e863")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrategyService-response)))
  "Returns md5sum for a message object of type 'StrategyService-response"
  "2db2786a5ed05eb6930ecf6644f9e863")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrategyService-response>)))
  "Returns full string definition for message of type '<StrategyService-response>"
  (cl:format cl:nil "uint8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrategyService-response)))
  "Returns full string definition for message of type 'StrategyService-response"
  (cl:format cl:nil "uint8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrategyService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrategyService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StrategyService-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StrategyService)))
  'StrategyService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StrategyService)))
  'StrategyService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrategyService)))
  "Returns string type for a service object of type '<StrategyService>"
  "fukuro_common/StrategyService")