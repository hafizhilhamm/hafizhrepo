; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude RobotUtility.msg.html

(cl:defclass <RobotUtility> (roslisp-msg-protocol:ros-message)
  ((ball_engage
    :reader ball_engage
    :initarg :ball_engage
    :type cl:boolean
    :initform cl:nil)
   (collision
    :reader collision
    :initarg :collision
    :type cl:boolean
    :initform cl:nil)
   (ready_kick
    :reader ready_kick
    :initarg :ready_kick
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotUtility (<RobotUtility>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotUtility>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotUtility)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<RobotUtility> is deprecated: use fukuro_common-msg:RobotUtility instead.")))

(cl:ensure-generic-function 'ball_engage-val :lambda-list '(m))
(cl:defmethod ball_engage-val ((m <RobotUtility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ball_engage-val is deprecated.  Use fukuro_common-msg:ball_engage instead.")
  (ball_engage m))

(cl:ensure-generic-function 'collision-val :lambda-list '(m))
(cl:defmethod collision-val ((m <RobotUtility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:collision-val is deprecated.  Use fukuro_common-msg:collision instead.")
  (collision m))

(cl:ensure-generic-function 'ready_kick-val :lambda-list '(m))
(cl:defmethod ready_kick-val ((m <RobotUtility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ready_kick-val is deprecated.  Use fukuro_common-msg:ready_kick instead.")
  (ready_kick m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotUtility>) ostream)
  "Serializes a message object of type '<RobotUtility>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ball_engage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready_kick) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotUtility>) istream)
  "Deserializes a message object of type '<RobotUtility>"
    (cl:setf (cl:slot-value msg 'ball_engage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collision) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready_kick) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotUtility>)))
  "Returns string type for a message object of type '<RobotUtility>"
  "fukuro_common/RobotUtility")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotUtility)))
  "Returns string type for a message object of type 'RobotUtility"
  "fukuro_common/RobotUtility")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotUtility>)))
  "Returns md5sum for a message object of type '<RobotUtility>"
  "06d17b852ebfd0c52f93f85e39a6a1ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotUtility)))
  "Returns md5sum for a message object of type 'RobotUtility"
  "06d17b852ebfd0c52f93f85e39a6a1ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotUtility>)))
  "Returns full string definition for message of type '<RobotUtility>"
  (cl:format cl:nil "bool ball_engage~%bool collision~%bool ready_kick~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotUtility)))
  "Returns full string definition for message of type 'RobotUtility"
  (cl:format cl:nil "bool ball_engage~%bool collision~%bool ready_kick~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotUtility>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotUtility>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotUtility
    (cl:cons ':ball_engage (ball_engage msg))
    (cl:cons ':collision (collision msg))
    (cl:cons ':ready_kick (ready_kick msg))
))
