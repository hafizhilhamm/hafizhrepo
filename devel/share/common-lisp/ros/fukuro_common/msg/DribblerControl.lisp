; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude DribblerControl.msg.html

(cl:defclass <DribblerControl> (roslisp-msg-protocol:ros-message)
  ((dir_in
    :reader dir_in
    :initarg :dir_in
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass DribblerControl (<DribblerControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DribblerControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DribblerControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<DribblerControl> is deprecated: use fukuro_common-msg:DribblerControl instead.")))

(cl:ensure-generic-function 'dir_in-val :lambda-list '(m))
(cl:defmethod dir_in-val ((m <DribblerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:dir_in-val is deprecated.  Use fukuro_common-msg:dir_in instead.")
  (dir_in m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DribblerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:speed-val is deprecated.  Use fukuro_common-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DribblerControl>) ostream)
  "Serializes a message object of type '<DribblerControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir_in)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DribblerControl>) istream)
  "Deserializes a message object of type '<DribblerControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir_in)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DribblerControl>)))
  "Returns string type for a message object of type '<DribblerControl>"
  "fukuro_common/DribblerControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DribblerControl)))
  "Returns string type for a message object of type 'DribblerControl"
  "fukuro_common/DribblerControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DribblerControl>)))
  "Returns md5sum for a message object of type '<DribblerControl>"
  "d4af231b2c1c93c434a1a477fb94ba80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DribblerControl)))
  "Returns md5sum for a message object of type 'DribblerControl"
  "d4af231b2c1c93c434a1a477fb94ba80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DribblerControl>)))
  "Returns full string definition for message of type '<DribblerControl>"
  (cl:format cl:nil "uint8 dir_in~%float32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DribblerControl)))
  "Returns full string definition for message of type 'DribblerControl"
  (cl:format cl:nil "uint8 dir_in~%float32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DribblerControl>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DribblerControl>))
  "Converts a ROS message object to a list"
  (cl:list 'DribblerControl
    (cl:cons ':dir_in (dir_in msg))
    (cl:cons ':speed (speed msg))
))
