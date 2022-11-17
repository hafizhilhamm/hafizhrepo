; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude SpeedTuning-request.msg.html

(cl:defclass <SpeedTuning-request> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type fukuro_common-msg:Parameter
    :initform (cl:make-instance 'fukuro_common-msg:Parameter))
   (angular
    :reader angular
    :initarg :angular
    :type fukuro_common-msg:Parameter
    :initform (cl:make-instance 'fukuro_common-msg:Parameter)))
)

(cl:defclass SpeedTuning-request (<SpeedTuning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedTuning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedTuning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<SpeedTuning-request> is deprecated: use fukuro_common-srv:SpeedTuning-request instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <SpeedTuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:linear-val is deprecated.  Use fukuro_common-srv:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <SpeedTuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:angular-val is deprecated.  Use fukuro_common-srv:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedTuning-request>) ostream)
  "Serializes a message object of type '<SpeedTuning-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedTuning-request>) istream)
  "Deserializes a message object of type '<SpeedTuning-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedTuning-request>)))
  "Returns string type for a service object of type '<SpeedTuning-request>"
  "fukuro_common/SpeedTuningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedTuning-request)))
  "Returns string type for a service object of type 'SpeedTuning-request"
  "fukuro_common/SpeedTuningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedTuning-request>)))
  "Returns md5sum for a message object of type '<SpeedTuning-request>"
  "cd170060ae0088446fa7f04a91313ea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedTuning-request)))
  "Returns md5sum for a message object of type 'SpeedTuning-request"
  "cd170060ae0088446fa7f04a91313ea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedTuning-request>)))
  "Returns full string definition for message of type '<SpeedTuning-request>"
  (cl:format cl:nil "Parameter linear~%Parameter angular~%~%================================================================================~%MSG: fukuro_common/Parameter~%float64 kp~%float64 ki~%float64 kd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedTuning-request)))
  "Returns full string definition for message of type 'SpeedTuning-request"
  (cl:format cl:nil "Parameter linear~%Parameter angular~%~%================================================================================~%MSG: fukuro_common/Parameter~%float64 kp~%float64 ki~%float64 kd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedTuning-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedTuning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedTuning-request
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
;//! \htmlinclude SpeedTuning-response.msg.html

(cl:defclass <SpeedTuning-response> (roslisp-msg-protocol:ros-message)
  ((tune_ok
    :reader tune_ok
    :initarg :tune_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpeedTuning-response (<SpeedTuning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedTuning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedTuning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<SpeedTuning-response> is deprecated: use fukuro_common-srv:SpeedTuning-response instead.")))

(cl:ensure-generic-function 'tune_ok-val :lambda-list '(m))
(cl:defmethod tune_ok-val ((m <SpeedTuning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:tune_ok-val is deprecated.  Use fukuro_common-srv:tune_ok instead.")
  (tune_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedTuning-response>) ostream)
  "Serializes a message object of type '<SpeedTuning-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tune_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedTuning-response>) istream)
  "Deserializes a message object of type '<SpeedTuning-response>"
    (cl:setf (cl:slot-value msg 'tune_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedTuning-response>)))
  "Returns string type for a service object of type '<SpeedTuning-response>"
  "fukuro_common/SpeedTuningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedTuning-response)))
  "Returns string type for a service object of type 'SpeedTuning-response"
  "fukuro_common/SpeedTuningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedTuning-response>)))
  "Returns md5sum for a message object of type '<SpeedTuning-response>"
  "cd170060ae0088446fa7f04a91313ea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedTuning-response)))
  "Returns md5sum for a message object of type 'SpeedTuning-response"
  "cd170060ae0088446fa7f04a91313ea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedTuning-response>)))
  "Returns full string definition for message of type '<SpeedTuning-response>"
  (cl:format cl:nil "bool tune_ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedTuning-response)))
  "Returns full string definition for message of type 'SpeedTuning-response"
  (cl:format cl:nil "bool tune_ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedTuning-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedTuning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedTuning-response
    (cl:cons ':tune_ok (tune_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeedTuning)))
  'SpeedTuning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeedTuning)))
  'SpeedTuning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedTuning)))
  "Returns string type for a service object of type '<SpeedTuning>"
  "fukuro_common/SpeedTuning")