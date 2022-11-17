; Auto-generated. Do not edit!


(cl:in-package fukuro_common-srv)


;//! \htmlinclude HWControllerSrv-request.msg.html

(cl:defclass <HWControllerSrv-request> (roslisp-msg-protocol:ros-message)
  ((refresh
    :reader refresh
    :initarg :refresh
    :type cl:fixnum
    :initform 0)
   (STMConnect
    :reader STMConnect
    :initarg :STMConnect
    :type cl:integer
    :initform 0)
   (isSTM
    :reader isSTM
    :initarg :isSTM
    :type cl:fixnum
    :initform 0)
   (ArduinoConnect
    :reader ArduinoConnect
    :initarg :ArduinoConnect
    :type cl:integer
    :initform 0)
   (isArduino
    :reader isArduino
    :initarg :isArduino
    :type cl:fixnum
    :initform 0)
   (Compass
    :reader Compass
    :initarg :Compass
    :type fukuro_common-msg:Compass
    :initform (cl:make-instance 'fukuro_common-msg:Compass)))
)

(cl:defclass HWControllerSrv-request (<HWControllerSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerSrv-request> is deprecated: use fukuro_common-srv:HWControllerSrv-request instead.")))

(cl:ensure-generic-function 'refresh-val :lambda-list '(m))
(cl:defmethod refresh-val ((m <HWControllerSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:refresh-val is deprecated.  Use fukuro_common-srv:refresh instead.")
  (refresh m))

(cl:ensure-generic-function 'STMConnect-val :lambda-list '(m))
(cl:defmethod STMConnect-val ((m <HWControllerSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:STMConnect-val is deprecated.  Use fukuro_common-srv:STMConnect instead.")
  (STMConnect m))

(cl:ensure-generic-function 'isSTM-val :lambda-list '(m))
(cl:defmethod isSTM-val ((m <HWControllerSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:isSTM-val is deprecated.  Use fukuro_common-srv:isSTM instead.")
  (isSTM m))

(cl:ensure-generic-function 'ArduinoConnect-val :lambda-list '(m))
(cl:defmethod ArduinoConnect-val ((m <HWControllerSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ArduinoConnect-val is deprecated.  Use fukuro_common-srv:ArduinoConnect instead.")
  (ArduinoConnect m))

(cl:ensure-generic-function 'isArduino-val :lambda-list '(m))
(cl:defmethod isArduino-val ((m <HWControllerSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:isArduino-val is deprecated.  Use fukuro_common-srv:isArduino instead.")
  (isArduino m))

(cl:ensure-generic-function 'Compass-val :lambda-list '(m))
(cl:defmethod Compass-val ((m <HWControllerSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:Compass-val is deprecated.  Use fukuro_common-srv:Compass instead.")
  (Compass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerSrv-request>) ostream)
  "Serializes a message object of type '<HWControllerSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'refresh)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'STMConnect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isSTM)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ArduinoConnect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isArduino)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Compass) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerSrv-request>) istream)
  "Deserializes a message object of type '<HWControllerSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'refresh)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'STMConnect) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isSTM)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ArduinoConnect) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isArduino)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Compass) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerSrv-request>)))
  "Returns string type for a service object of type '<HWControllerSrv-request>"
  "fukuro_common/HWControllerSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerSrv-request)))
  "Returns string type for a service object of type 'HWControllerSrv-request"
  "fukuro_common/HWControllerSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerSrv-request>)))
  "Returns md5sum for a message object of type '<HWControllerSrv-request>"
  "3d5c94862d83cd0042f79f7755128b97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerSrv-request)))
  "Returns md5sum for a message object of type 'HWControllerSrv-request"
  "3d5c94862d83cd0042f79f7755128b97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerSrv-request>)))
  "Returns full string definition for message of type '<HWControllerSrv-request>"
  (cl:format cl:nil "uint8 refresh~%int64 STMConnect~%uint8 isSTM~%int64 ArduinoConnect~%uint8 isArduino~%Compass Compass~%~%================================================================================~%MSG: fukuro_common/Compass~%float64 cmps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerSrv-request)))
  "Returns full string definition for message of type 'HWControllerSrv-request"
  (cl:format cl:nil "uint8 refresh~%int64 STMConnect~%uint8 isSTM~%int64 ArduinoConnect~%uint8 isArduino~%Compass Compass~%~%================================================================================~%MSG: fukuro_common/Compass~%float64 cmps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerSrv-request>))
  (cl:+ 0
     1
     8
     1
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Compass))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerSrv-request
    (cl:cons ':refresh (refresh msg))
    (cl:cons ':STMConnect (STMConnect msg))
    (cl:cons ':isSTM (isSTM msg))
    (cl:cons ':ArduinoConnect (ArduinoConnect msg))
    (cl:cons ':isArduino (isArduino msg))
    (cl:cons ':Compass (Compass msg))
))
;//! \htmlinclude HWControllerSrv-response.msg.html

(cl:defclass <HWControllerSrv-response> (roslisp-msg-protocol:ros-message)
  ((port_list
    :reader port_list
    :initarg :port_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (manufacturer_list
    :reader manufacturer_list
    :initarg :manufacturer_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (STMSuccess
    :reader STMSuccess
    :initarg :STMSuccess
    :type cl:fixnum
    :initform 0)
   (ArduinoSuccess
    :reader ArduinoSuccess
    :initarg :ArduinoSuccess
    :type cl:fixnum
    :initform 0)
   (Compassuccess
    :reader Compassuccess
    :initarg :Compassuccess
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HWControllerSrv-response (<HWControllerSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HWControllerSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HWControllerSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-srv:<HWControllerSrv-response> is deprecated: use fukuro_common-srv:HWControllerSrv-response instead.")))

(cl:ensure-generic-function 'port_list-val :lambda-list '(m))
(cl:defmethod port_list-val ((m <HWControllerSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:port_list-val is deprecated.  Use fukuro_common-srv:port_list instead.")
  (port_list m))

(cl:ensure-generic-function 'manufacturer_list-val :lambda-list '(m))
(cl:defmethod manufacturer_list-val ((m <HWControllerSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:manufacturer_list-val is deprecated.  Use fukuro_common-srv:manufacturer_list instead.")
  (manufacturer_list m))

(cl:ensure-generic-function 'STMSuccess-val :lambda-list '(m))
(cl:defmethod STMSuccess-val ((m <HWControllerSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:STMSuccess-val is deprecated.  Use fukuro_common-srv:STMSuccess instead.")
  (STMSuccess m))

(cl:ensure-generic-function 'ArduinoSuccess-val :lambda-list '(m))
(cl:defmethod ArduinoSuccess-val ((m <HWControllerSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:ArduinoSuccess-val is deprecated.  Use fukuro_common-srv:ArduinoSuccess instead.")
  (ArduinoSuccess m))

(cl:ensure-generic-function 'Compassuccess-val :lambda-list '(m))
(cl:defmethod Compassuccess-val ((m <HWControllerSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-srv:Compassuccess-val is deprecated.  Use fukuro_common-srv:Compassuccess instead.")
  (Compassuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HWControllerSrv-response>) ostream)
  "Serializes a message object of type '<HWControllerSrv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'port_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'port_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'manufacturer_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'manufacturer_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'STMSuccess)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ArduinoSuccess)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Compassuccess)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HWControllerSrv-response>) istream)
  "Deserializes a message object of type '<HWControllerSrv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'port_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'port_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'manufacturer_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'manufacturer_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'STMSuccess)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ArduinoSuccess)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Compassuccess)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HWControllerSrv-response>)))
  "Returns string type for a service object of type '<HWControllerSrv-response>"
  "fukuro_common/HWControllerSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerSrv-response)))
  "Returns string type for a service object of type 'HWControllerSrv-response"
  "fukuro_common/HWControllerSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HWControllerSrv-response>)))
  "Returns md5sum for a message object of type '<HWControllerSrv-response>"
  "3d5c94862d83cd0042f79f7755128b97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HWControllerSrv-response)))
  "Returns md5sum for a message object of type 'HWControllerSrv-response"
  "3d5c94862d83cd0042f79f7755128b97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HWControllerSrv-response>)))
  "Returns full string definition for message of type '<HWControllerSrv-response>"
  (cl:format cl:nil "string[] port_list~%string[] manufacturer_list~%uint8 STMSuccess~%uint8 ArduinoSuccess~%uint8 Compassuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HWControllerSrv-response)))
  "Returns full string definition for message of type 'HWControllerSrv-response"
  (cl:format cl:nil "string[] port_list~%string[] manufacturer_list~%uint8 STMSuccess~%uint8 ArduinoSuccess~%uint8 Compassuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HWControllerSrv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'port_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'manufacturer_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HWControllerSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HWControllerSrv-response
    (cl:cons ':port_list (port_list msg))
    (cl:cons ':manufacturer_list (manufacturer_list msg))
    (cl:cons ':STMSuccess (STMSuccess msg))
    (cl:cons ':ArduinoSuccess (ArduinoSuccess msg))
    (cl:cons ':Compassuccess (Compassuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HWControllerSrv)))
  'HWControllerSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HWControllerSrv)))
  'HWControllerSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HWControllerSrv)))
  "Returns string type for a service object of type '<HWControllerSrv>"
  "fukuro_common/HWControllerSrv")