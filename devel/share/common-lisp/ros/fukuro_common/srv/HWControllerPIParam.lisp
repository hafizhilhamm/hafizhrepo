; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude HWControllerPIParam-request.msg.html

(cl:defclass <HWControllerPIParam-request> (roslisp-msg-protocol:ros-message)
  ((k
    :reader k
    :initarg :k
    :type fukuro_common-msg:MotorParameter
    :initform (cl:make-instance 'fukuro_common-msg:MotorParameter)))
)

(cl:defclass HWControllerPIParam-request (<HWControllerPIParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerPIParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerPIParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerPIParam-request> is deprecated: use fukuro_common-srv:HWControllerPIParam-request instead.")))

(cl:ensure-generic-function 'k-val :lambda-list '(m))
(cl:defmethod k-val ((m <HWControllerPIParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:k-val is deprecated.  Use fukuro_common-srv:k instead.")
  (k m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerPIParam-request>) ostream)
  "Serializes a message object of type '<HWControllerPIParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'k) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerPIParam-request>) istream)
  "Deserializes a message object of type '<HWControllerPIParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'k) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerPIParam-request>)))
  "Returns string type for a service object of type '<HWControllerPIParam-request>"
  "fukuro_common/HWControllerPIParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerPIParam-request)))
  "Returns string type for a service object of type 'HWControllerPIParam-request"
  "fukuro_common/HWControllerPIParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerPIParam-request>)))
  "Returns md5sum for a message object of type '<HWControllerPIParam-request>"
  "ebbd950a01132723798b799989122afe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerPIParam-request)))
  "Returns md5sum for a message object of type 'HWControllerPIParam-request"
  "ebbd950a01132723798b799989122afe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerPIParam-request>)))
  "Returns full string definition for message of type '<HWControllerPIParam-request>"
  (cl:format cl:nil "MotorParameter k~%~%================================================================================~%MSG: fukuro_common/MotorParameter~%int8 n_speed~%float64[] motor1~%float64[] motor2~%float64[] motor3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerPIParam-request)))
  "Returns full string definition for message of type 'HWControllerPIParam-request"
  (cl:format cl:nil "MotorParameter k~%~%================================================================================~%MSG: fukuro_common/MotorParameter~%int8 n_speed~%float64[] motor1~%float64[] motor2~%float64[] motor3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerPIParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'k))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerPIParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerPIParam-request
    (cl:cons ':k (k msg))
))
;//! \htmlinclude HWControllerPIParam-response.msg.html

(cl:defclass <HWControllerPIParam-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HWControllerPIParam-response (<HWControllerPIParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerPIParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerPIParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerPIParam-response> is deprecated: use fukuro_common-srv:HWControllerPIParam-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <HWControllerPIParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerPIParam-response>) ostream)
  "Serializes a message object of type '<HWControllerPIParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerPIParam-response>) istream)
  "Deserializes a message object of type '<HWControllerPIParam-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerPIParam-response>)))
  "Returns string type for a service object of type '<HWControllerPIParam-response>"
  "fukuro_common/HWControllerPIParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerPIParam-response)))
  "Returns string type for a service object of type 'HWControllerPIParam-response"
  "fukuro_common/HWControllerPIParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerPIParam-response>)))
  "Returns md5sum for a message object of type '<HWControllerPIParam-response>"
  "ebbd950a01132723798b799989122afe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerPIParam-response)))
  "Returns md5sum for a message object of type 'HWControllerPIParam-response"
  "ebbd950a01132723798b799989122afe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerPIParam-response>)))
  "Returns full string definition for message of type '<HWControllerPIParam-response>"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerPIParam-response)))
  "Returns full string definition for message of type 'HWControllerPIParam-response"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerPIParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerPIParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerPIParam-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HWControllerPIParam)))
  'HWControllerPIParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HWControllerPIParam)))
  'HWControllerPIParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerPIParam)))
  "Returns string type for a service object of type '<HWControllerPIParam>"
  "fukuro_common/HWControllerPIParam")