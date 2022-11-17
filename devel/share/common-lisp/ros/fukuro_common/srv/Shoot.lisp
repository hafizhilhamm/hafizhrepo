; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude Shoot-request.msg.html

(cl:defclass <Shoot-request> (roslisp-msg-protocol:ros-message)
  ((kick_request
    :reader kick_request
    :initarg :kick_request
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Shoot-request (<Shoot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shoot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shoot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<Shoot-request> is deprecated: use fukuro_common-srv:Shoot-request instead.")))

(cl:ensure-generic-function 'kick_request-val :lambda-list '(m))
(cl:defmethod kick_request-val ((m <Shoot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:kick_request-val is deprecated.  Use fukuro_common-srv:kick_request instead.")
  (kick_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shoot-request>) ostream)
  "Serializes a message object of type '<Shoot-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kick_request)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shoot-request>) istream)
  "Deserializes a message object of type '<Shoot-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kick_request)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shoot-request>)))
  "Returns string type for a service object of type '<Shoot-request>"
  "fukuro_common/ShootRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shoot-request)))
  "Returns string type for a service object of type 'Shoot-request"
  "fukuro_common/ShootRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shoot-request>)))
  "Returns md5sum for a message object of type '<Shoot-request>"
  "c7b38c0c0be888bcdb354036efad0022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shoot-request)))
  "Returns md5sum for a message object of type 'Shoot-request"
  "c7b38c0c0be888bcdb354036efad0022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shoot-request>)))
  "Returns full string definition for message of type '<Shoot-request>"
  (cl:format cl:nil "uint8 kick_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shoot-request)))
  "Returns full string definition for message of type 'Shoot-request"
  (cl:format cl:nil "uint8 kick_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shoot-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shoot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Shoot-request
    (cl:cons ':kick_request (kick_request msg))
))
;//! \htmlinclude Shoot-response.msg.html

(cl:defclass <Shoot-response> (roslisp-msg-protocol:ros-message)
  ((ShootIsDone
    :reader ShootIsDone
    :initarg :ShootIsDone
    :type cl:integer
    :initform 0))
)

(cl:defclass Shoot-response (<Shoot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shoot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shoot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<Shoot-response> is deprecated: use fukuro_common-srv:Shoot-response instead.")))

(cl:ensure-generic-function 'ShootIsDone-val :lambda-list '(m))
(cl:defmethod ShootIsDone-val ((m <Shoot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ShootIsDone-val is deprecated.  Use fukuro_common-srv:ShootIsDone instead.")
  (ShootIsDone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shoot-response>) ostream)
  "Serializes a message object of type '<Shoot-response>"
  (cl:let* ((signed (cl:slot-value msg 'ShootIsDone)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shoot-response>) istream)
  "Deserializes a message object of type '<Shoot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ShootIsDone) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shoot-response>)))
  "Returns string type for a service object of type '<Shoot-response>"
  "fukuro_common/ShootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shoot-response)))
  "Returns string type for a service object of type 'Shoot-response"
  "fukuro_common/ShootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shoot-response>)))
  "Returns md5sum for a message object of type '<Shoot-response>"
  "c7b38c0c0be888bcdb354036efad0022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shoot-response)))
  "Returns md5sum for a message object of type 'Shoot-response"
  "c7b38c0c0be888bcdb354036efad0022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shoot-response>)))
  "Returns full string definition for message of type '<Shoot-response>"
  (cl:format cl:nil "int64 ShootIsDone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shoot-response)))
  "Returns full string definition for message of type 'Shoot-response"
  (cl:format cl:nil "int64 ShootIsDone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shoot-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shoot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Shoot-response
    (cl:cons ':ShootIsDone (ShootIsDone msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Shoot)))
  'Shoot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Shoot)))
  'Shoot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shoot)))
  "Returns string type for a service object of type '<Shoot>"
  "fukuro_common/Shoot")