; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude StrategyParam.msg.html

(cl:defclass <StrategyParam> (roslisp-msg-protocol:ros-message)
  ((radius_dribble_auto_on
    :reader radius_dribble_auto_on
    :initarg :radius_dribble_auto_on
    :type cl:float
    :initform 0.0)
   (angle_dribble_auto_on
    :reader angle_dribble_auto_on
    :initarg :angle_dribble_auto_on
    :type cl:float
    :initform 0.0)
   (radius_mulai_dribble_bola
    :reader radius_mulai_dribble_bola
    :initarg :radius_mulai_dribble_bola
    :type cl:float
    :initform 0.0)
   (angle_mulai_dribble_bola
    :reader angle_mulai_dribble_bola
    :initarg :angle_mulai_dribble_bola
    :type cl:float
    :initform 0.0)
   (min_error_posisi_kick
    :reader min_error_posisi_kick
    :initarg :min_error_posisi_kick
    :type cl:float
    :initform 0.0)
   (min_error_sudut_kick
    :reader min_error_sudut_kick
    :initarg :min_error_sudut_kick
    :type cl:float
    :initform 0.0)
   (min_error_posisi_homing
    :reader min_error_posisi_homing
    :initarg :min_error_posisi_homing
    :type cl:float
    :initform 0.0)
   (min_error_sudut_homing
    :reader min_error_sudut_homing
    :initarg :min_error_sudut_homing
    :type cl:float
    :initform 0.0)
   (error_positioning
    :reader error_positioning
    :initarg :error_positioning
    :type cl:float
    :initform 0.0)
   (error_sudut_positioning
    :reader error_sudut_positioning
    :initarg :error_sudut_positioning
    :type cl:float
    :initform 0.0)
   (radius_mulai_kick_off
    :reader radius_mulai_kick_off
    :initarg :radius_mulai_kick_off
    :type cl:float
    :initform 0.0)
   (upper_saturate
    :reader upper_saturate
    :initarg :upper_saturate
    :type cl:float
    :initform 0.0)
   (lower_saturate
    :reader lower_saturate
    :initarg :lower_saturate
    :type cl:float
    :initform 0.0)
   (upper_saturate_engaged
    :reader upper_saturate_engaged
    :initarg :upper_saturate_engaged
    :type cl:float
    :initform 0.0)
   (lower_saturate_engaged
    :reader lower_saturate_engaged
    :initarg :lower_saturate_engaged
    :type cl:float
    :initform 0.0)
   (max_angle_saturate
    :reader max_angle_saturate
    :initarg :max_angle_saturate
    :type cl:float
    :initform 0.0))
)

(cl:defclass StrategyParam (<StrategyParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrategyParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrategyParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<StrategyParam> is deprecated: use fukuro_common-msg:StrategyParam instead.")))

(cl:ensure-generic-function 'radius_dribble_auto_on-val :lambda-list '(m))
(cl:defmethod radius_dribble_auto_on-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:radius_dribble_auto_on-val is deprecated.  Use fukuro_common-msg:radius_dribble_auto_on instead.")
  (radius_dribble_auto_on m))

(cl:ensure-generic-function 'angle_dribble_auto_on-val :lambda-list '(m))
(cl:defmethod angle_dribble_auto_on-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:angle_dribble_auto_on-val is deprecated.  Use fukuro_common-msg:angle_dribble_auto_on instead.")
  (angle_dribble_auto_on m))

(cl:ensure-generic-function 'radius_mulai_dribble_bola-val :lambda-list '(m))
(cl:defmethod radius_mulai_dribble_bola-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:radius_mulai_dribble_bola-val is deprecated.  Use fukuro_common-msg:radius_mulai_dribble_bola instead.")
  (radius_mulai_dribble_bola m))

(cl:ensure-generic-function 'angle_mulai_dribble_bola-val :lambda-list '(m))
(cl:defmethod angle_mulai_dribble_bola-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:angle_mulai_dribble_bola-val is deprecated.  Use fukuro_common-msg:angle_mulai_dribble_bola instead.")
  (angle_mulai_dribble_bola m))

(cl:ensure-generic-function 'min_error_posisi_kick-val :lambda-list '(m))
(cl:defmethod min_error_posisi_kick-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:min_error_posisi_kick-val is deprecated.  Use fukuro_common-msg:min_error_posisi_kick instead.")
  (min_error_posisi_kick m))

(cl:ensure-generic-function 'min_error_sudut_kick-val :lambda-list '(m))
(cl:defmethod min_error_sudut_kick-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:min_error_sudut_kick-val is deprecated.  Use fukuro_common-msg:min_error_sudut_kick instead.")
  (min_error_sudut_kick m))

(cl:ensure-generic-function 'min_error_posisi_homing-val :lambda-list '(m))
(cl:defmethod min_error_posisi_homing-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:min_error_posisi_homing-val is deprecated.  Use fukuro_common-msg:min_error_posisi_homing instead.")
  (min_error_posisi_homing m))

(cl:ensure-generic-function 'min_error_sudut_homing-val :lambda-list '(m))
(cl:defmethod min_error_sudut_homing-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:min_error_sudut_homing-val is deprecated.  Use fukuro_common-msg:min_error_sudut_homing instead.")
  (min_error_sudut_homing m))

(cl:ensure-generic-function 'error_positioning-val :lambda-list '(m))
(cl:defmethod error_positioning-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:error_positioning-val is deprecated.  Use fukuro_common-msg:error_positioning instead.")
  (error_positioning m))

(cl:ensure-generic-function 'error_sudut_positioning-val :lambda-list '(m))
(cl:defmethod error_sudut_positioning-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:error_sudut_positioning-val is deprecated.  Use fukuro_common-msg:error_sudut_positioning instead.")
  (error_sudut_positioning m))

(cl:ensure-generic-function 'radius_mulai_kick_off-val :lambda-list '(m))
(cl:defmethod radius_mulai_kick_off-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:radius_mulai_kick_off-val is deprecated.  Use fukuro_common-msg:radius_mulai_kick_off instead.")
  (radius_mulai_kick_off m))

(cl:ensure-generic-function 'upper_saturate-val :lambda-list '(m))
(cl:defmethod upper_saturate-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:upper_saturate-val is deprecated.  Use fukuro_common-msg:upper_saturate instead.")
  (upper_saturate m))

(cl:ensure-generic-function 'lower_saturate-val :lambda-list '(m))
(cl:defmethod lower_saturate-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:lower_saturate-val is deprecated.  Use fukuro_common-msg:lower_saturate instead.")
  (lower_saturate m))

(cl:ensure-generic-function 'upper_saturate_engaged-val :lambda-list '(m))
(cl:defmethod upper_saturate_engaged-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:upper_saturate_engaged-val is deprecated.  Use fukuro_common-msg:upper_saturate_engaged instead.")
  (upper_saturate_engaged m))

(cl:ensure-generic-function 'lower_saturate_engaged-val :lambda-list '(m))
(cl:defmethod lower_saturate_engaged-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:lower_saturate_engaged-val is deprecated.  Use fukuro_common-msg:lower_saturate_engaged instead.")
  (lower_saturate_engaged m))

(cl:ensure-generic-function 'max_angle_saturate-val :lambda-list '(m))
(cl:defmethod max_angle_saturate-val ((m <StrategyParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:max_angle_saturate-val is deprecated.  Use fukuro_common-msg:max_angle_saturate instead.")
  (max_angle_saturate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrategyParam>) ostream)
  "Serializes a message object of type '<StrategyParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius_dribble_auto_on))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_dribble_auto_on))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius_mulai_dribble_bola))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_mulai_dribble_bola))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_error_posisi_kick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_error_sudut_kick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_error_posisi_homing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_error_sudut_homing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_positioning))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_sudut_positioning))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius_mulai_kick_off))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'upper_saturate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lower_saturate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'upper_saturate_engaged))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lower_saturate_engaged))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_angle_saturate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrategyParam>) istream)
  "Deserializes a message object of type '<StrategyParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius_dribble_auto_on) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_dribble_auto_on) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius_mulai_dribble_bola) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_mulai_dribble_bola) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_error_posisi_kick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_error_sudut_kick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_error_posisi_homing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_error_sudut_homing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_positioning) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_sudut_positioning) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius_mulai_kick_off) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_saturate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lower_saturate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_saturate_engaged) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lower_saturate_engaged) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angle_saturate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrategyParam>)))
  "Returns string type for a message object of type '<StrategyParam>"
  "fukuro_common/StrategyParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrategyParam)))
  "Returns string type for a message object of type 'StrategyParam"
  "fukuro_common/StrategyParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrategyParam>)))
  "Returns md5sum for a message object of type '<StrategyParam>"
  "21766f045e3facf112f156a585dc8583")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrategyParam)))
  "Returns md5sum for a message object of type 'StrategyParam"
  "21766f045e3facf112f156a585dc8583")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrategyParam>)))
  "Returns full string definition for message of type '<StrategyParam>"
  (cl:format cl:nil "float32 radius_dribble_auto_on~%float32 angle_dribble_auto_on~%float32 radius_mulai_dribble_bola~%float32 angle_mulai_dribble_bola~%float32 min_error_posisi_kick~%float32 min_error_sudut_kick~%float32 min_error_posisi_homing~%float32 min_error_sudut_homing~%float32 error_positioning~%float32 error_sudut_positioning~%float32 radius_mulai_kick_off~%float32 upper_saturate~%float32 lower_saturate~%float32 upper_saturate_engaged~%float32 lower_saturate_engaged~%float32 max_angle_saturate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrategyParam)))
  "Returns full string definition for message of type 'StrategyParam"
  (cl:format cl:nil "float32 radius_dribble_auto_on~%float32 angle_dribble_auto_on~%float32 radius_mulai_dribble_bola~%float32 angle_mulai_dribble_bola~%float32 min_error_posisi_kick~%float32 min_error_sudut_kick~%float32 min_error_posisi_homing~%float32 min_error_sudut_homing~%float32 error_positioning~%float32 error_sudut_positioning~%float32 radius_mulai_kick_off~%float32 upper_saturate~%float32 lower_saturate~%float32 upper_saturate_engaged~%float32 lower_saturate_engaged~%float32 max_angle_saturate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrategyParam>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrategyParam>))
  "Converts a ROS message object to a list"
  (cl:list 'StrategyParam
    (cl:cons ':radius_dribble_auto_on (radius_dribble_auto_on msg))
    (cl:cons ':angle_dribble_auto_on (angle_dribble_auto_on msg))
    (cl:cons ':radius_mulai_dribble_bola (radius_mulai_dribble_bola msg))
    (cl:cons ':angle_mulai_dribble_bola (angle_mulai_dribble_bola msg))
    (cl:cons ':min_error_posisi_kick (min_error_posisi_kick msg))
    (cl:cons ':min_error_sudut_kick (min_error_sudut_kick msg))
    (cl:cons ':min_error_posisi_homing (min_error_posisi_homing msg))
    (cl:cons ':min_error_sudut_homing (min_error_sudut_homing msg))
    (cl:cons ':error_positioning (error_positioning msg))
    (cl:cons ':error_sudut_positioning (error_sudut_positioning msg))
    (cl:cons ':radius_mulai_kick_off (radius_mulai_kick_off msg))
    (cl:cons ':upper_saturate (upper_saturate msg))
    (cl:cons ':lower_saturate (lower_saturate msg))
    (cl:cons ':upper_saturate_engaged (upper_saturate_engaged msg))
    (cl:cons ':lower_saturate_engaged (lower_saturate_engaged msg))
    (cl:cons ':max_angle_saturate (max_angle_saturate msg))
))
