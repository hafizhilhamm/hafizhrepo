; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude StrategyInfo.msg.html

(cl:defclass <StrategyInfo> (roslisp-msg-protocol:ros-message)
  ((strategy_state
    :reader strategy_state
    :initarg :strategy_state
    :type cl:string
    :initform "")
   (role
    :reader role
    :initarg :role
    :type cl:string
    :initform "")
   (option
    :reader option
    :initarg :option
    :type cl:string
    :initform "")
   (ball_passed
    :reader ball_passed
    :initarg :ball_passed
    :type cl:boolean
    :initform cl:nil)
   (ready_receive
    :reader ready_receive
    :initarg :ready_receive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StrategyInfo (<StrategyInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrategyInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrategyInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<StrategyInfo> is deprecated: use fukuro_common-msg:StrategyInfo instead.")))

(cl:ensure-generic-function 'strategy_state-val :lambda-list '(m))
(cl:defmethod strategy_state-val ((m <StrategyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:strategy_state-val is deprecated.  Use fukuro_common-msg:strategy_state instead.")
  (strategy_state m))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <StrategyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:role-val is deprecated.  Use fukuro_common-msg:role instead.")
  (role m))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <StrategyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:option-val is deprecated.  Use fukuro_common-msg:option instead.")
  (option m))

(cl:ensure-generic-function 'ball_passed-val :lambda-list '(m))
(cl:defmethod ball_passed-val ((m <StrategyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ball_passed-val is deprecated.  Use fukuro_common-msg:ball_passed instead.")
  (ball_passed m))

(cl:ensure-generic-function 'ready_receive-val :lambda-list '(m))
(cl:defmethod ready_receive-val ((m <StrategyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ready_receive-val is deprecated.  Use fukuro_common-msg:ready_receive instead.")
  (ready_receive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrategyInfo>) ostream)
  "Serializes a message object of type '<StrategyInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strategy_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strategy_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'role))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'role))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'option))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'option))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ball_passed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready_receive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrategyInfo>) istream)
  "Deserializes a message object of type '<StrategyInfo>"
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
      (cl:setf (cl:slot-value msg 'role) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'role) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'option) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'option) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'ball_passed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready_receive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrategyInfo>)))
  "Returns string type for a message object of type '<StrategyInfo>"
  "fukuro_common/StrategyInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrategyInfo)))
  "Returns string type for a message object of type 'StrategyInfo"
  "fukuro_common/StrategyInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrategyInfo>)))
  "Returns md5sum for a message object of type '<StrategyInfo>"
  "b91c76e9e4337807ddef2cd407b15d2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrategyInfo)))
  "Returns md5sum for a message object of type 'StrategyInfo"
  "b91c76e9e4337807ddef2cd407b15d2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrategyInfo>)))
  "Returns full string definition for message of type '<StrategyInfo>"
  (cl:format cl:nil "string strategy_state~%string role~%string option~%bool ball_passed~%bool ready_receive~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrategyInfo)))
  "Returns full string definition for message of type 'StrategyInfo"
  (cl:format cl:nil "string strategy_state~%string role~%string option~%bool ball_passed~%bool ready_receive~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrategyInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strategy_state))
     4 (cl:length (cl:slot-value msg 'role))
     4 (cl:length (cl:slot-value msg 'option))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrategyInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'StrategyInfo
    (cl:cons ':strategy_state (strategy_state msg))
    (cl:cons ':role (role msg))
    (cl:cons ':option (option msg))
    (cl:cons ':ball_passed (ball_passed msg))
    (cl:cons ':ready_receive (ready_receive msg))
))
