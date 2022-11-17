; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude PathPlan.msg.html

(cl:defclass <PathPlan> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector fukuro_common-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Point2d :initial-element (cl:make-instance 'fukuro_common-msg:Point2d)))
   (solutions
    :reader solutions
    :initarg :solutions
    :type (cl:vector fukuro_common-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Point2d :initial-element (cl:make-instance 'fukuro_common-msg:Point2d)))
   (start
    :reader start
    :initarg :start
    :type fukuro_common-msg:Point2d
    :initform (cl:make-instance 'fukuro_common-msg:Point2d))
   (goal
    :reader goal
    :initarg :goal
    :type fukuro_common-msg:Point2d
    :initform (cl:make-instance 'fukuro_common-msg:Point2d))
   (search_time
    :reader search_time
    :initarg :search_time
    :type cl:float
    :initform 0.0)
   (solved
    :reader solved
    :initarg :solved
    :type cl:boolean
    :initform cl:nil)
   (updated
    :reader updated
    :initarg :updated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PathPlan (<PathPlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<PathPlan> is deprecated: use fukuro_common-msg:PathPlan instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacles-val is deprecated.  Use fukuro_common-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'solutions-val :lambda-list '(m))
(cl:defmethod solutions-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:solutions-val is deprecated.  Use fukuro_common-msg:solutions instead.")
  (solutions m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:start-val is deprecated.  Use fukuro_common-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:goal-val is deprecated.  Use fukuro_common-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'search_time-val :lambda-list '(m))
(cl:defmethod search_time-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:search_time-val is deprecated.  Use fukuro_common-msg:search_time instead.")
  (search_time m))

(cl:ensure-generic-function 'solved-val :lambda-list '(m))
(cl:defmethod solved-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:solved-val is deprecated.  Use fukuro_common-msg:solved instead.")
  (solved m))

(cl:ensure-generic-function 'updated-val :lambda-list '(m))
(cl:defmethod updated-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:updated-val is deprecated.  Use fukuro_common-msg:updated instead.")
  (updated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPlan>) ostream)
  "Serializes a message object of type '<PathPlan>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'solutions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'solutions))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'search_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solved) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'updated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPlan>) istream)
  "Deserializes a message object of type '<PathPlan>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'solutions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'solutions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'search_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'solved) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'updated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPlan>)))
  "Returns string type for a message object of type '<PathPlan>"
  "fukuro_common/PathPlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPlan)))
  "Returns string type for a message object of type 'PathPlan"
  "fukuro_common/PathPlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPlan>)))
  "Returns md5sum for a message object of type '<PathPlan>"
  "bac9c86aba64a149e610ac3cafcaef0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPlan)))
  "Returns md5sum for a message object of type 'PathPlan"
  "bac9c86aba64a149e610ac3cafcaef0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPlan>)))
  "Returns full string definition for message of type '<PathPlan>"
  (cl:format cl:nil "Point2d[] obstacles~%Point2d[] solutions~%Point2d start~%Point2d goal~%float64 search_time~%bool solved~%bool updated~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPlan)))
  "Returns full string definition for message of type 'PathPlan"
  (cl:format cl:nil "Point2d[] obstacles~%Point2d[] solutions~%Point2d start~%Point2d goal~%float64 search_time~%bool solved~%bool updated~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPlan>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'solutions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPlan>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPlan
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':solutions (solutions msg))
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':search_time (search_time msg))
    (cl:cons ':solved (solved msg))
    (cl:cons ':updated (updated msg))
))
