; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude HWControllerParam-request.msg.html

(cl:defclass <HWControllerParam-request> (roslisp-msg-protocol:ros-message)
  ((cw
    :reader cw
    :initarg :cw
    :type fukuro_common-msg:MotorParameter
    :initform (cl:make-instance 'fukuro_common-msg:MotorParameter))
   (ccw
    :reader ccw
    :initarg :ccw
    :type fukuro_common-msg:MotorParameter
    :initform (cl:make-instance 'fukuro_common-msg:MotorParameter)))
)

(cl:defclass HWControllerParam-request (<HWControllerParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerParam-request> is deprecated: use fukuro_common-srv:HWControllerParam-request instead.")))

(cl:ensure-generic-function 'cw-val :lambda-list '(m))
(cl:defmethod cw-val ((m <HWControllerParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:cw-val is deprecated.  Use fukuro_common-srv:cw instead.")
  (cw m))

(cl:ensure-generic-function 'ccw-val :lambda-list '(m))
(cl:defmethod ccw-val ((m <HWControllerParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ccw-val is deprecated.  Use fukuro_common-srv:ccw instead.")
  (ccw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerParam-request>) ostream)
  "Serializes a message object of type '<HWControllerParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cw) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ccw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerParam-request>) istream)
  "Deserializes a message object of type '<HWControllerParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cw) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ccw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerParam-request>)))
  "Returns string type for a service object of type '<HWControllerParam-request>"
  "fukuro_common/HWControllerParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerParam-request)))
  "Returns string type for a service object of type 'HWControllerParam-request"
  "fukuro_common/HWControllerParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerParam-request>)))
  "Returns md5sum for a message object of type '<HWControllerParam-request>"
  "e54c465f93b763147b0cf60d586ba040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerParam-request)))
  "Returns md5sum for a message object of type 'HWControllerParam-request"
  "e54c465f93b763147b0cf60d586ba040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerParam-request>)))
  "Returns full string definition for message of type '<HWControllerParam-request>"
  (cl:format cl:nil "MotorParameter cw~%MotorParameter ccw~%~%================================================================================~%MSG: fukuro_common/MotorParameter~%int8 n_speed~%float64[] motor1~%float64[] motor2~%float64[] motor3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerParam-request)))
  "Returns full string definition for message of type 'HWControllerParam-request"
  (cl:format cl:nil "MotorParameter cw~%MotorParameter ccw~%~%================================================================================~%MSG: fukuro_common/MotorParameter~%int8 n_speed~%float64[] motor1~%float64[] motor2~%float64[] motor3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cw))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ccw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerParam-request
    (cl:cons ':cw (cw msg))
    (cl:cons ':ccw (ccw msg))
))
;//! \htmlinclude HWControllerParam-response.msg.html

(cl:defclass <HWControllerParam-response> (roslisp-msg-protocol:ros-message)
  ((cw
    :reader cw
    :initarg :cw
    :type fukuro_common-msg:MotorParameter
    :initform (cl:make-instance 'fukuro_common-msg:MotorParameter))
   (ccw
    :reader ccw
    :initarg :ccw
    :type fukuro_common-msg:MotorParameter
    :initform (cl:make-instance 'fukuro_common-msg:MotorParameter))
   (ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HWControllerParam-response (<HWControllerParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerParam-response> is deprecated: use fukuro_common-srv:HWControllerParam-response instead.")))

(cl:ensure-generic-function 'cw-val :lambda-list '(m))
(cl:defmethod cw-val ((m <HWControllerParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:cw-val is deprecated.  Use fukuro_common-srv:cw instead.")
  (cw m))

(cl:ensure-generic-function 'ccw-val :lambda-list '(m))
(cl:defmethod ccw-val ((m <HWControllerParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ccw-val is deprecated.  Use fukuro_common-srv:ccw instead.")
  (ccw m))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <HWControllerParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerParam-response>) ostream)
  "Serializes a message object of type '<HWControllerParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cw) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ccw) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerParam-response>) istream)
  "Deserializes a message object of type '<HWControllerParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cw) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ccw) istream)
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerParam-response>)))
  "Returns string type for a service object of type '<HWControllerParam-response>"
  "fukuro_common/HWControllerParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerParam-response)))
  "Returns string type for a service object of type 'HWControllerParam-response"
  "fukuro_common/HWControllerParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerParam-response>)))
  "Returns md5sum for a message object of type '<HWControllerParam-response>"
  "e54c465f93b763147b0cf60d586ba040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerParam-response)))
  "Returns md5sum for a message object of type 'HWControllerParam-response"
  "e54c465f93b763147b0cf60d586ba040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerParam-response>)))
  "Returns full string definition for message of type '<HWControllerParam-response>"
  (cl:format cl:nil "MotorParameter cw~%MotorParameter ccw~%bool ok~%~%================================================================================~%MSG: fukuro_common/MotorParameter~%int8 n_speed~%float64[] motor1~%float64[] motor2~%float64[] motor3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerParam-response)))
  "Returns full string definition for message of type 'HWControllerParam-response"
  (cl:format cl:nil "MotorParameter cw~%MotorParameter ccw~%bool ok~%~%================================================================================~%MSG: fukuro_common/MotorParameter~%int8 n_speed~%float64[] motor1~%float64[] motor2~%float64[] motor3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cw))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ccw))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerParam-response
    (cl:cons ':cw (cw msg))
    (cl:cons ':ccw (ccw msg))
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HWControllerParam)))
  'HWControllerParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HWControllerParam)))
  'HWControllerParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerParam)))
  "Returns string type for a service object of type '<HWControllerParam>"
  "fukuro_common/HWControllerParam")