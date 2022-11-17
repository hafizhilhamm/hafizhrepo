; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude OmnivisionInfo.msg.html

(cl:defclass <OmnivisionInfo> (roslisp-msg-protocol:ros-message)
  ((local_ball
    :reader local_ball
    :initarg :local_ball
    :type fukuro_common-msg:Point2d
    :initform (cl:make-instance 'fukuro_common-msg:Point2d))
   (ball_visible
    :reader ball_visible
    :initarg :ball_visible
    :type cl:boolean
    :initform cl:nil)
   (local_obstacle
    :reader local_obstacle
    :initarg :local_obstacle
    :type fukuro_common-msg:Point2d
    :initform (cl:make-instance 'fukuro_common-msg:Point2d))
   (obs_visible
    :reader obs_visible
    :initarg :obs_visible
    :type cl:boolean
    :initform cl:nil)
   (robot_friend_pos
    :reader robot_friend_pos
    :initarg :robot_friend_pos
    :type fukuro_common-msg:Point2d
    :initform (cl:make-instance 'fukuro_common-msg:Point2d))
   (friend_visible
    :reader friend_visible
    :initarg :friend_visible
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OmnivisionInfo (<OmnivisionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OmnivisionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OmnivisionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<OmnivisionInfo> is deprecated: use fukuro_common-msg:OmnivisionInfo instead.")))

(cl:ensure-generic-function 'local_ball-val :lambda-list '(m))
(cl:defmethod local_ball-val ((m <OmnivisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:local_ball-val is deprecated.  Use fukuro_common-msg:local_ball instead.")
  (local_ball m))

(cl:ensure-generic-function 'ball_visible-val :lambda-list '(m))
(cl:defmethod ball_visible-val ((m <OmnivisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ball_visible-val is deprecated.  Use fukuro_common-msg:ball_visible instead.")
  (ball_visible m))

(cl:ensure-generic-function 'local_obstacle-val :lambda-list '(m))
(cl:defmethod local_obstacle-val ((m <OmnivisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:local_obstacle-val is deprecated.  Use fukuro_common-msg:local_obstacle instead.")
  (local_obstacle m))

(cl:ensure-generic-function 'obs_visible-val :lambda-list '(m))
(cl:defmethod obs_visible-val ((m <OmnivisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obs_visible-val is deprecated.  Use fukuro_common-msg:obs_visible instead.")
  (obs_visible m))

(cl:ensure-generic-function 'robot_friend_pos-val :lambda-list '(m))
(cl:defmethod robot_friend_pos-val ((m <OmnivisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:robot_friend_pos-val is deprecated.  Use fukuro_common-msg:robot_friend_pos instead.")
  (robot_friend_pos m))

(cl:ensure-generic-function 'friend_visible-val :lambda-list '(m))
(cl:defmethod friend_visible-val ((m <OmnivisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:friend_visible-val is deprecated.  Use fukuro_common-msg:friend_visible instead.")
  (friend_visible m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OmnivisionInfo>) ostream)
  "Serializes a message object of type '<OmnivisionInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_ball) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ball_visible) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_obstacle) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obs_visible) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_friend_pos) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'friend_visible) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OmnivisionInfo>) istream)
  "Deserializes a message object of type '<OmnivisionInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_ball) istream)
    (cl:setf (cl:slot-value msg 'ball_visible) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_obstacle) istream)
    (cl:setf (cl:slot-value msg 'obs_visible) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_friend_pos) istream)
    (cl:setf (cl:slot-value msg 'friend_visible) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OmnivisionInfo>)))
  "Returns string type for a message object of type '<OmnivisionInfo>"
  "fukuro_common/OmnivisionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OmnivisionInfo)))
  "Returns string type for a message object of type 'OmnivisionInfo"
  "fukuro_common/OmnivisionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OmnivisionInfo>)))
  "Returns md5sum for a message object of type '<OmnivisionInfo>"
  "fba85346654e08337110412dda45e35e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OmnivisionInfo)))
  "Returns md5sum for a message object of type 'OmnivisionInfo"
  "fba85346654e08337110412dda45e35e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OmnivisionInfo>)))
  "Returns full string definition for message of type '<OmnivisionInfo>"
  (cl:format cl:nil "Point2d local_ball~%bool ball_visible~%Point2d local_obstacle~%bool obs_visible~%Point2d robot_friend_pos~%bool friend_visible~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OmnivisionInfo)))
  "Returns full string definition for message of type 'OmnivisionInfo"
  (cl:format cl:nil "Point2d local_ball~%bool ball_visible~%Point2d local_obstacle~%bool obs_visible~%Point2d robot_friend_pos~%bool friend_visible~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OmnivisionInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_ball))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_obstacle))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_friend_pos))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OmnivisionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OmnivisionInfo
    (cl:cons ':local_ball (local_ball msg))
    (cl:cons ':ball_visible (ball_visible msg))
    (cl:cons ':local_obstacle (local_obstacle msg))
    (cl:cons ':obs_visible (obs_visible msg))
    (cl:cons ':robot_friend_pos (robot_friend_pos msg))
    (cl:cons ':friend_visible (friend_visible msg))
))
