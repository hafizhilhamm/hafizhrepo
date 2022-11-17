; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude OdometryCalibration-request.msg.html

(cl:defclass <OdometryCalibration-request> (roslisp-msg-protocol:ros-message)
  ((kx
    :reader kx
    :initarg :kx
    :type cl:float
    :initform 0.0)
   (ky
    :reader ky
    :initarg :ky
    :type cl:float
    :initform 0.0)
   (kw
    :reader kw
    :initarg :kw
    :type cl:float
    :initform 0.0))
)

(cl:defclass OdometryCalibration-request (<OdometryCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<OdometryCalibration-request> is deprecated: use fukuro_common-srv:OdometryCalibration-request instead.")))

(cl:ensure-generic-function 'kx-val :lambda-list '(m))
(cl:defmethod kx-val ((m <OdometryCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:kx-val is deprecated.  Use fukuro_common-srv:kx instead.")
  (kx m))

(cl:ensure-generic-function 'ky-val :lambda-list '(m))
(cl:defmethod ky-val ((m <OdometryCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ky-val is deprecated.  Use fukuro_common-srv:ky instead.")
  (ky m))

(cl:ensure-generic-function 'kw-val :lambda-list '(m))
(cl:defmethod kw-val ((m <OdometryCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:kw-val is deprecated.  Use fukuro_common-srv:kw instead.")
  (kw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryCalibration-request>) ostream)
  "Serializes a message object of type '<OdometryCalibration-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ky))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryCalibration-request>) istream)
  "Deserializes a message object of type '<OdometryCalibration-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ky) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryCalibration-request>)))
  "Returns string type for a service object of type '<OdometryCalibration-request>"
  "fukuro_common/OdometryCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryCalibration-request)))
  "Returns string type for a service object of type 'OdometryCalibration-request"
  "fukuro_common/OdometryCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryCalibration-request>)))
  "Returns md5sum for a message object of type '<OdometryCalibration-request>"
  "ebc612ce0a9b4b65aa74121fecb4e9f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryCalibration-request)))
  "Returns md5sum for a message object of type 'OdometryCalibration-request"
  "ebc612ce0a9b4b65aa74121fecb4e9f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryCalibration-request>)))
  "Returns full string definition for message of type '<OdometryCalibration-request>"
  (cl:format cl:nil "float64 kx~%float64 ky~%float64 kw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryCalibration-request)))
  "Returns full string definition for message of type 'OdometryCalibration-request"
  (cl:format cl:nil "float64 kx~%float64 ky~%float64 kw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryCalibration-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryCalibration-request
    (cl:cons ':kx (kx msg))
    (cl:cons ':ky (ky msg))
    (cl:cons ':kw (kw msg))
))
;//! \htmlinclude OdometryCalibration-response.msg.html

(cl:defclass <OdometryCalibration-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:integer
    :initform 0))
)

(cl:defclass OdometryCalibration-response (<OdometryCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<OdometryCalibration-response> is deprecated: use fukuro_common-srv:OdometryCalibration-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <OdometryCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ok-val is deprecated.  Use fukuro_common-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryCalibration-response>) ostream)
  "Serializes a message object of type '<OdometryCalibration-response>"
  (cl:let* ((signed (cl:slot-value msg 'ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryCalibration-response>) istream)
  "Deserializes a message object of type '<OdometryCalibration-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ok) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryCalibration-response>)))
  "Returns string type for a service object of type '<OdometryCalibration-response>"
  "fukuro_common/OdometryCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryCalibration-response)))
  "Returns string type for a service object of type 'OdometryCalibration-response"
  "fukuro_common/OdometryCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryCalibration-response>)))
  "Returns md5sum for a message object of type '<OdometryCalibration-response>"
  "ebc612ce0a9b4b65aa74121fecb4e9f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryCalibration-response)))
  "Returns md5sum for a message object of type 'OdometryCalibration-response"
  "ebc612ce0a9b4b65aa74121fecb4e9f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryCalibration-response>)))
  "Returns full string definition for message of type '<OdometryCalibration-response>"
  (cl:format cl:nil "int64 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryCalibration-response)))
  "Returns full string definition for message of type 'OdometryCalibration-response"
  (cl:format cl:nil "int64 ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryCalibration-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryCalibration-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OdometryCalibration)))
  'OdometryCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OdometryCalibration)))
  'OdometryCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryCalibration)))
  "Returns string type for a service object of type '<OdometryCalibration>"
  "fukuro_common/OdometryCalibration")