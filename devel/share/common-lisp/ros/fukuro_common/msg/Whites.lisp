; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude Whites.msg.html

(cl:defclass <Whites> (roslisp-msg-protocol:ros-message)
  ((whites
    :reader whites
    :initarg :whites
    :type (cl:vector fukuro_common-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Point2d :initial-element (cl:make-instance 'fukuro_common-msg:Point2d))))
)

(cl:defclass Whites (<Whites>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Whites>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Whites)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<Whites> is deprecated: use fukuro_common-msg:Whites instead.")))

(cl:ensure-generic-function 'whites-val :lambda-list '(m))
(cl:defmethod whites-val ((m <Whites>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:whites-val is deprecated.  Use fukuro_common-msg:whites instead.")
  (whites m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Whites>) ostream)
  "Serializes a message object of type '<Whites>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'whites))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'whites))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Whites>) istream)
  "Deserializes a message object of type '<Whites>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'whites) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'whites)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Whites>)))
  "Returns string type for a message object of type '<Whites>"
  "fukuro_common/Whites")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Whites)))
  "Returns string type for a message object of type 'Whites"
  "fukuro_common/Whites")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Whites>)))
  "Returns md5sum for a message object of type '<Whites>"
  "3888bbcb4197c33e8f1471d84dc66374")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Whites)))
  "Returns md5sum for a message object of type 'Whites"
  "3888bbcb4197c33e8f1471d84dc66374")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Whites>)))
  "Returns full string definition for message of type '<Whites>"
  (cl:format cl:nil "Point2d[] whites~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Whites)))
  "Returns full string definition for message of type 'Whites"
  (cl:format cl:nil "Point2d[] whites~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Whites>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'whites) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Whites>))
  "Converts a ROS message object to a list"
  (cl:list 'Whites
    (cl:cons ':whites (whites msg))
))
