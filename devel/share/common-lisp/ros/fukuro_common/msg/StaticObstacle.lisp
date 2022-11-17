; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude StaticObstacle.msg.html

(cl:defclass <StaticObstacle> (roslisp-msg-protocol:ros-message)
  ((obstacle1
    :reader obstacle1
    :initarg :obstacle1
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle2
    :reader obstacle2
    :initarg :obstacle2
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle3
    :reader obstacle3
    :initarg :obstacle3
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle4
    :reader obstacle4
    :initarg :obstacle4
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle5
    :reader obstacle5
    :initarg :obstacle5
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle6
    :reader obstacle6
    :initarg :obstacle6
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle7
    :reader obstacle7
    :initarg :obstacle7
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle8
    :reader obstacle8
    :initarg :obstacle8
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle)))
)

(cl:defclass StaticObstacle (<StaticObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<StaticObstacle> is deprecated: use fukuro_common-msg:StaticObstacle instead.")))

(cl:ensure-generic-function 'obstacle1-val :lambda-list '(m))
(cl:defmethod obstacle1-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle1-val is deprecated.  Use fukuro_common-msg:obstacle1 instead.")
  (obstacle1 m))

(cl:ensure-generic-function 'obstacle2-val :lambda-list '(m))
(cl:defmethod obstacle2-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle2-val is deprecated.  Use fukuro_common-msg:obstacle2 instead.")
  (obstacle2 m))

(cl:ensure-generic-function 'obstacle3-val :lambda-list '(m))
(cl:defmethod obstacle3-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle3-val is deprecated.  Use fukuro_common-msg:obstacle3 instead.")
  (obstacle3 m))

(cl:ensure-generic-function 'obstacle4-val :lambda-list '(m))
(cl:defmethod obstacle4-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle4-val is deprecated.  Use fukuro_common-msg:obstacle4 instead.")
  (obstacle4 m))

(cl:ensure-generic-function 'obstacle5-val :lambda-list '(m))
(cl:defmethod obstacle5-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle5-val is deprecated.  Use fukuro_common-msg:obstacle5 instead.")
  (obstacle5 m))

(cl:ensure-generic-function 'obstacle6-val :lambda-list '(m))
(cl:defmethod obstacle6-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle6-val is deprecated.  Use fukuro_common-msg:obstacle6 instead.")
  (obstacle6 m))

(cl:ensure-generic-function 'obstacle7-val :lambda-list '(m))
(cl:defmethod obstacle7-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle7-val is deprecated.  Use fukuro_common-msg:obstacle7 instead.")
  (obstacle7 m))

(cl:ensure-generic-function 'obstacle8-val :lambda-list '(m))
(cl:defmethod obstacle8-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle8-val is deprecated.  Use fukuro_common-msg:obstacle8 instead.")
  (obstacle8 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticObstacle>) ostream)
  "Serializes a message object of type '<StaticObstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle7) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle8) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticObstacle>) istream)
  "Deserializes a message object of type '<StaticObstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle7) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle8) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticObstacle>)))
  "Returns string type for a message object of type '<StaticObstacle>"
  "fukuro_common/StaticObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticObstacle)))
  "Returns string type for a message object of type 'StaticObstacle"
  "fukuro_common/StaticObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticObstacle>)))
  "Returns md5sum for a message object of type '<StaticObstacle>"
  "46d3fb587aed8a021e47dcb530b200ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticObstacle)))
  "Returns md5sum for a message object of type 'StaticObstacle"
  "46d3fb587aed8a021e47dcb530b200ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticObstacle>)))
  "Returns full string definition for message of type '<StaticObstacle>"
  (cl:format cl:nil "Obstacle obstacle1~%Obstacle obstacle2~%Obstacle obstacle3~%Obstacle obstacle4~%Obstacle obstacle5~%Obstacle obstacle6~%Obstacle obstacle7~%Obstacle obstacle8~%================================================================================~%MSG: fukuro_common/Obstacle~%Point2d pos~%float64 r~%int8 shape~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticObstacle)))
  "Returns full string definition for message of type 'StaticObstacle"
  (cl:format cl:nil "Obstacle obstacle1~%Obstacle obstacle2~%Obstacle obstacle3~%Obstacle obstacle4~%Obstacle obstacle5~%Obstacle obstacle6~%Obstacle obstacle7~%Obstacle obstacle8~%================================================================================~%MSG: fukuro_common/Obstacle~%Point2d pos~%float64 r~%int8 shape~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticObstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle7))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle8))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticObstacle
    (cl:cons ':obstacle1 (obstacle1 msg))
    (cl:cons ':obstacle2 (obstacle2 msg))
    (cl:cons ':obstacle3 (obstacle3 msg))
    (cl:cons ':obstacle4 (obstacle4 msg))
    (cl:cons ':obstacle5 (obstacle5 msg))
    (cl:cons ':obstacle6 (obstacle6 msg))
    (cl:cons ':obstacle7 (obstacle7 msg))
    (cl:cons ':obstacle8 (obstacle8 msg))
))
