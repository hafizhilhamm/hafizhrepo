; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude Ball.msg.html

(cl:defclass <Ball> (roslisp-msg-protocol:ros-message)
  ((ball_x
    :reader ball_x
    :initarg :ball_x
    :type cl:float
    :initform 0.0)
   (ball_y
    :reader ball_y
    :initarg :ball_y
    :type cl:float
    :initform 0.0)
   (is_visible
    :reader is_visible
    :initarg :is_visible
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Ball (<Ball>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ball>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ball)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<Ball> is deprecated: use fukuro_common-msg:Ball instead.")))

(cl:ensure-generic-function 'ball_x-val :lambda-list '(m))
(cl:defmethod ball_x-val ((m <Ball>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ball_x-val is deprecated.  Use fukuro_common-msg:ball_x instead.")
  (ball_x m))

(cl:ensure-generic-function 'ball_y-val :lambda-list '(m))
(cl:defmethod ball_y-val ((m <Ball>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ball_y-val is deprecated.  Use fukuro_common-msg:ball_y instead.")
  (ball_y m))

(cl:ensure-generic-function 'is_visible-val :lambda-list '(m))
(cl:defmethod is_visible-val ((m <Ball>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:is_visible-val is deprecated.  Use fukuro_common-msg:is_visible instead.")
  (is_visible m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ball>) ostream)
  "Serializes a message object of type '<Ball>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ball_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ball_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_visible) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ball>) istream)
  "Deserializes a message object of type '<Ball>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ball_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ball_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_visible) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ball>)))
  "Returns string type for a message object of type '<Ball>"
  "fukuro_common/Ball")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ball)))
  "Returns string type for a message object of type 'Ball"
  "fukuro_common/Ball")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ball>)))
  "Returns md5sum for a message object of type '<Ball>"
  "88ac6da9dfce2ccdcb4a5d2627e96b2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ball)))
  "Returns md5sum for a message object of type 'Ball"
  "88ac6da9dfce2ccdcb4a5d2627e96b2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ball>)))
  "Returns full string definition for message of type '<Ball>"
  (cl:format cl:nil "float64 ball_x~%float64 ball_y~%bool is_visible~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ball)))
  "Returns full string definition for message of type 'Ball"
  (cl:format cl:nil "float64 ball_x~%float64 ball_y~%bool is_visible~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ball>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ball>))
  "Converts a ROS message object to a list"
  (cl:list 'Ball
    (cl:cons ':ball_x (ball_x msg))
    (cl:cons ':ball_y (ball_y msg))
    (cl:cons ':is_visible (is_visible msg))
))
