; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude STMData.msg.html

(cl:defclass <STMData> (roslisp-msg-protocol:ros-message)
  ((encoder
    :reader encoder
    :initarg :encoder
    :type fukuro_common-msg:MotorVel
    :initform (cl:make-instance 'fukuro_common-msg:MotorVel))
   (freeenc
    :reader freeenc
    :initarg :freeenc
    :type fukuro_common-msg:RobotVel
    :initform (cl:make-instance 'fukuro_common-msg:RobotVel))
   (ready_kick
    :reader ready_kick
    :initarg :ready_kick
    :type cl:boolean
    :initform cl:nil)
   (ir
    :reader ir
    :initarg :ir
    :type cl:boolean
    :initform cl:nil)
   (garis1
    :reader garis1
    :initarg :garis1
    :type cl:boolean
    :initform cl:nil)
   (garis2
    :reader garis2
    :initarg :garis2
    :type cl:boolean
    :initform cl:nil)
   (garis3
    :reader garis3
    :initarg :garis3
    :type cl:boolean
    :initform cl:nil)
   (garis4
    :reader garis4
    :initarg :garis4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass STMData (<STMData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <STMData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'STMData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<STMData> is deprecated: use fukuro_common-msg:STMData instead.")))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:encoder-val is deprecated.  Use fukuro_common-msg:encoder instead.")
  (encoder m))

(cl:ensure-generic-function 'freeenc-val :lambda-list '(m))
(cl:defmethod freeenc-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:freeenc-val is deprecated.  Use fukuro_common-msg:freeenc instead.")
  (freeenc m))

(cl:ensure-generic-function 'ready_kick-val :lambda-list '(m))
(cl:defmethod ready_kick-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ready_kick-val is deprecated.  Use fukuro_common-msg:ready_kick instead.")
  (ready_kick m))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ir-val is deprecated.  Use fukuro_common-msg:ir instead.")
  (ir m))

(cl:ensure-generic-function 'garis1-val :lambda-list '(m))
(cl:defmethod garis1-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:garis1-val is deprecated.  Use fukuro_common-msg:garis1 instead.")
  (garis1 m))

(cl:ensure-generic-function 'garis2-val :lambda-list '(m))
(cl:defmethod garis2-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:garis2-val is deprecated.  Use fukuro_common-msg:garis2 instead.")
  (garis2 m))

(cl:ensure-generic-function 'garis3-val :lambda-list '(m))
(cl:defmethod garis3-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:garis3-val is deprecated.  Use fukuro_common-msg:garis3 instead.")
  (garis3 m))

(cl:ensure-generic-function 'garis4-val :lambda-list '(m))
(cl:defmethod garis4-val ((m <STMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:garis4-val is deprecated.  Use fukuro_common-msg:garis4 instead.")
  (garis4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <STMData>) ostream)
  "Serializes a message object of type '<STMData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'encoder) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'freeenc) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready_kick) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'garis1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'garis2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'garis3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'garis4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <STMData>) istream)
  "Deserializes a message object of type '<STMData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'encoder) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'freeenc) istream)
    (cl:setf (cl:slot-value msg 'ready_kick) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'garis1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'garis2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'garis3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'garis4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<STMData>)))
  "Returns string type for a message object of type '<STMData>"
  "fukuro_common/STMData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'STMData)))
  "Returns string type for a message object of type 'STMData"
  "fukuro_common/STMData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<STMData>)))
  "Returns md5sum for a message object of type '<STMData>"
  "1f74160987d11b971db5bf3af08f3ce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'STMData)))
  "Returns md5sum for a message object of type 'STMData"
  "1f74160987d11b971db5bf3af08f3ce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<STMData>)))
  "Returns full string definition for message of type '<STMData>"
  (cl:format cl:nil "MotorVel encoder~%RobotVel freeenc~%bool ready_kick~%bool ir~%bool garis1~%bool garis2~%bool garis3~%bool garis4~%================================================================================~%MSG: fukuro_common/MotorVel~%float32 m1~%float32 m2~%float32 m3~%================================================================================~%MSG: fukuro_common/RobotVel~%float32 free1~%float32 free2~%float32 free3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'STMData)))
  "Returns full string definition for message of type 'STMData"
  (cl:format cl:nil "MotorVel encoder~%RobotVel freeenc~%bool ready_kick~%bool ir~%bool garis1~%bool garis2~%bool garis3~%bool garis4~%================================================================================~%MSG: fukuro_common/MotorVel~%float32 m1~%float32 m2~%float32 m3~%================================================================================~%MSG: fukuro_common/RobotVel~%float32 free1~%float32 free2~%float32 free3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <STMData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'encoder))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'freeenc))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <STMData>))
  "Converts a ROS message object to a list"
  (cl:list 'STMData
    (cl:cons ':encoder (encoder msg))
    (cl:cons ':freeenc (freeenc msg))
    (cl:cons ':ready_kick (ready_kick msg))
    (cl:cons ':ir (ir msg))
    (cl:cons ':garis1 (garis1 msg))
    (cl:cons ':garis2 (garis2 msg))
    (cl:cons ':garis3 (garis3 msg))
    (cl:cons ':garis4 (garis4 msg))
))
