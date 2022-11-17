; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude ObstaclesService-request.msg.html

(cl:defclass <ObstaclesService-request> (roslisp-msg-protocol:ros-message)
  ((obstacle
    :reader obstacle
    :initarg :obstacle
    :type (cl:vector fukuro_common-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Obstacle :initial-element (cl:make-instance 'fukuro_common-msg:Obstacle))))
)

(cl:defclass ObstaclesService-request (<ObstaclesService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstaclesService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstaclesService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<ObstaclesService-request> is deprecated: use fukuro_common-srv:ObstaclesService-request instead.")))

(cl:ensure-generic-function 'obstacle-val :lambda-list '(m))
(cl:defmethod obstacle-val ((m <ObstaclesService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:obstacle-val is deprecated.  Use fukuro_common-srv:obstacle instead.")
  (obstacle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstaclesService-request>) ostream)
  "Serializes a message object of type '<ObstaclesService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstaclesService-request>) istream)
  "Deserializes a message object of type '<ObstaclesService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstaclesService-request>)))
  "Returns string type for a service object of type '<ObstaclesService-request>"
  "fukuro_common/ObstaclesServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclesService-request)))
  "Returns string type for a service object of type 'ObstaclesService-request"
  "fukuro_common/ObstaclesServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstaclesService-request>)))
  "Returns md5sum for a message object of type '<ObstaclesService-request>"
  "81a6d1748dadd1a2f252dedfae401a7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstaclesService-request)))
  "Returns md5sum for a message object of type 'ObstaclesService-request"
  "81a6d1748dadd1a2f252dedfae401a7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstaclesService-request>)))
  "Returns full string definition for message of type '<ObstaclesService-request>"
  (cl:format cl:nil "Obstacle[] obstacle~%~%================================================================================~%MSG: fukuro_common/Obstacle~%Point2d pos~%float64 r~%int8 shape~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstaclesService-request)))
  "Returns full string definition for message of type 'ObstaclesService-request"
  (cl:format cl:nil "Obstacle[] obstacle~%~%================================================================================~%MSG: fukuro_common/Obstacle~%Point2d pos~%float64 r~%int8 shape~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstaclesService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstaclesService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstaclesService-request
    (cl:cons ':obstacle (obstacle msg))
))
;//! \htmlinclude ObstaclesService-response.msg.html

(cl:defclass <ObstaclesService-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObstaclesService-response (<ObstaclesService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstaclesService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstaclesService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<ObstaclesService-response> is deprecated: use fukuro_common-srv:ObstaclesService-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <ObstaclesService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstaclesService-response>) ostream)
  "Serializes a message object of type '<ObstaclesService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstaclesService-response>) istream)
  "Deserializes a message object of type '<ObstaclesService-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ok)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstaclesService-response>)))
  "Returns string type for a service object of type '<ObstaclesService-response>"
  "fukuro_common/ObstaclesServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclesService-response)))
  "Returns string type for a service object of type 'ObstaclesService-response"
  "fukuro_common/ObstaclesServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstaclesService-response>)))
  "Returns md5sum for a message object of type '<ObstaclesService-response>"
  "81a6d1748dadd1a2f252dedfae401a7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstaclesService-response)))
  "Returns md5sum for a message object of type 'ObstaclesService-response"
  "81a6d1748dadd1a2f252dedfae401a7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstaclesService-response>)))
  "Returns full string definition for message of type '<ObstaclesService-response>"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstaclesService-response)))
  "Returns full string definition for message of type 'ObstaclesService-response"
  (cl:format cl:nil "uint8 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstaclesService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstaclesService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstaclesService-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObstaclesService)))
  'ObstaclesService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObstaclesService)))
  'ObstaclesService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclesService)))
  "Returns string type for a service object of type '<ObstaclesService>"
  "fukuro_common/ObstaclesService")