; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude StaticObstacles-request.msg.html

(cl:defclass <StaticObstacles-request> (roslisp-msg-protocol:ros-message)
  ((obstacle1
    :reader obstacle1
    :initarg :obstacle1
    :type cl:boolean
    :initform cl:nil)
   (obstacle2
    :reader obstacle2
    :initarg :obstacle2
    :type cl:boolean
    :initform cl:nil)
   (obstacle3
    :reader obstacle3
    :initarg :obstacle3
    :type cl:boolean
    :initform cl:nil)
   (obstacle4
    :reader obstacle4
    :initarg :obstacle4
    :type cl:boolean
    :initform cl:nil)
   (obstacle5
    :reader obstacle5
    :initarg :obstacle5
    :type cl:boolean
    :initform cl:nil)
   (obstacle6
    :reader obstacle6
    :initarg :obstacle6
    :type cl:boolean
    :initform cl:nil)
   (obstacle7
    :reader obstacle7
    :initarg :obstacle7
    :type cl:boolean
    :initform cl:nil)
   (obstacle8
    :reader obstacle8
    :initarg :obstacle8
    :type cl:boolean
    :initform cl:nil)
   (obstacle_kiper
    :reader obstacle_kiper
    :initarg :obstacle_kiper
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StaticObstacles-request (<StaticObstacles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticObstacles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticObstacles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<StaticObstacles-request> is deprecated: use fukuro_common-srv:StaticObstacles-request instead.")))

(cl:ensure-generic-function 'obstacle1-val :lambda-list '(m))
(cl:defmethod obstacle1-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle1-val is deprecated.  Use fukuro_common-srv:obstacle1 instead.")
  (obstacle1 m))

(cl:ensure-generic-function 'obstacle2-val :lambda-list '(m))
(cl:defmethod obstacle2-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle2-val is deprecated.  Use fukuro_common-srv:obstacle2 instead.")
  (obstacle2 m))

(cl:ensure-generic-function 'obstacle3-val :lambda-list '(m))
(cl:defmethod obstacle3-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle3-val is deprecated.  Use fukuro_common-srv:obstacle3 instead.")
  (obstacle3 m))

(cl:ensure-generic-function 'obstacle4-val :lambda-list '(m))
(cl:defmethod obstacle4-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle4-val is deprecated.  Use fukuro_common-srv:obstacle4 instead.")
  (obstacle4 m))

(cl:ensure-generic-function 'obstacle5-val :lambda-list '(m))
(cl:defmethod obstacle5-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle5-val is deprecated.  Use fukuro_common-srv:obstacle5 instead.")
  (obstacle5 m))

(cl:ensure-generic-function 'obstacle6-val :lambda-list '(m))
(cl:defmethod obstacle6-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle6-val is deprecated.  Use fukuro_common-srv:obstacle6 instead.")
  (obstacle6 m))

(cl:ensure-generic-function 'obstacle7-val :lambda-list '(m))
(cl:defmethod obstacle7-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle7-val is deprecated.  Use fukuro_common-srv:obstacle7 instead.")
  (obstacle7 m))

(cl:ensure-generic-function 'obstacle8-val :lambda-list '(m))
(cl:defmethod obstacle8-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle8-val is deprecated.  Use fukuro_common-srv:obstacle8 instead.")
  (obstacle8 m))

(cl:ensure-generic-function 'obstacle_kiper-val :lambda-list '(m))
(cl:defmethod obstacle_kiper-val ((m <StaticObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle_kiper-val is deprecated.  Use fukuro_common-srv:obstacle_kiper instead.")
  (obstacle_kiper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticObstacles-request>) ostream)
  "Serializes a message object of type '<StaticObstacles-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle4) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle6) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle7) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle8) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle_kiper) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticObstacles-request>) istream)
  "Deserializes a message object of type '<StaticObstacles-request>"
    (cl:setf (cl:slot-value msg 'obstacle1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle4) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle6) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle7) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle8) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle_kiper) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticObstacles-request>)))
  "Returns string type for a service object of type '<StaticObstacles-request>"
  "fukuro_common/StaticObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticObstacles-request)))
  "Returns string type for a service object of type 'StaticObstacles-request"
  "fukuro_common/StaticObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticObstacles-request>)))
  "Returns md5sum for a message object of type '<StaticObstacles-request>"
  "d9e5d5b887b6aabe5a57861e1897da91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticObstacles-request)))
  "Returns md5sum for a message object of type 'StaticObstacles-request"
  "d9e5d5b887b6aabe5a57861e1897da91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticObstacles-request>)))
  "Returns full string definition for message of type '<StaticObstacles-request>"
  (cl:format cl:nil "bool obstacle1~%bool obstacle2~%bool obstacle3~%bool obstacle4~%bool obstacle5~%bool obstacle6~%bool obstacle7~%bool obstacle8~%bool obstacle_kiper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticObstacles-request)))
  "Returns full string definition for message of type 'StaticObstacles-request"
  (cl:format cl:nil "bool obstacle1~%bool obstacle2~%bool obstacle3~%bool obstacle4~%bool obstacle5~%bool obstacle6~%bool obstacle7~%bool obstacle8~%bool obstacle_kiper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticObstacles-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticObstacles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticObstacles-request
    (cl:cons ':obstacle1 (obstacle1 msg))
    (cl:cons ':obstacle2 (obstacle2 msg))
    (cl:cons ':obstacle3 (obstacle3 msg))
    (cl:cons ':obstacle4 (obstacle4 msg))
    (cl:cons ':obstacle5 (obstacle5 msg))
    (cl:cons ':obstacle6 (obstacle6 msg))
    (cl:cons ':obstacle7 (obstacle7 msg))
    (cl:cons ':obstacle8 (obstacle8 msg))
    (cl:cons ':obstacle_kiper (obstacle_kiper msg))
))
;//! \htmlinclude StaticObstacles-response.msg.html

(cl:defclass <StaticObstacles-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StaticObstacles-response (<StaticObstacles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticObstacles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticObstacles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<StaticObstacles-response> is deprecated: use fukuro_common-srv:StaticObstacles-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <StaticObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticObstacles-response>) ostream)
  "Serializes a message object of type '<StaticObstacles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticObstacles-response>) istream)
  "Deserializes a message object of type '<StaticObstacles-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticObstacles-response>)))
  "Returns string type for a service object of type '<StaticObstacles-response>"
  "fukuro_common/StaticObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticObstacles-response)))
  "Returns string type for a service object of type 'StaticObstacles-response"
  "fukuro_common/StaticObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticObstacles-response>)))
  "Returns md5sum for a message object of type '<StaticObstacles-response>"
  "d9e5d5b887b6aabe5a57861e1897da91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticObstacles-response)))
  "Returns md5sum for a message object of type 'StaticObstacles-response"
  "d9e5d5b887b6aabe5a57861e1897da91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticObstacles-response>)))
  "Returns full string definition for message of type '<StaticObstacles-response>"
  (cl:format cl:nil "uint8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticObstacles-response)))
  "Returns full string definition for message of type 'StaticObstacles-response"
  (cl:format cl:nil "uint8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticObstacles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticObstacles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticObstacles-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StaticObstacles)))
  'StaticObstacles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StaticObstacles)))
  'StaticObstacles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticObstacles)))
  "Returns string type for a service object of type '<StaticObstacles>"
  "fukuro_common/StaticObstacles")