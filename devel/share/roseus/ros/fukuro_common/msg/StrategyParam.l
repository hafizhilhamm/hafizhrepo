;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::StrategyParam)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'StrategyParam (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::STRATEGYPARAM")
  (make-package "FUKURO_COMMON::STRATEGYPARAM"))

(in-package "ROS")
;;//! \htmlinclude StrategyParam.msg.html


(defclass fukuro_common::StrategyParam
  :super ros::object
  :slots (_radius_dribble_auto_on _angle_dribble_auto_on _radius_mulai_dribble_bola _angle_mulai_dribble_bola _min_error_posisi_kick _min_error_sudut_kick _min_error_posisi_homing _min_error_sudut_homing _error_positioning _error_sudut_positioning _radius_mulai_kick_off _upper_saturate _lower_saturate _upper_saturate_engaged _lower_saturate_engaged _max_angle_saturate ))

(defmethod fukuro_common::StrategyParam
  (:init
   (&key
    ((:radius_dribble_auto_on __radius_dribble_auto_on) 0.0)
    ((:angle_dribble_auto_on __angle_dribble_auto_on) 0.0)
    ((:radius_mulai_dribble_bola __radius_mulai_dribble_bola) 0.0)
    ((:angle_mulai_dribble_bola __angle_mulai_dribble_bola) 0.0)
    ((:min_error_posisi_kick __min_error_posisi_kick) 0.0)
    ((:min_error_sudut_kick __min_error_sudut_kick) 0.0)
    ((:min_error_posisi_homing __min_error_posisi_homing) 0.0)
    ((:min_error_sudut_homing __min_error_sudut_homing) 0.0)
    ((:error_positioning __error_positioning) 0.0)
    ((:error_sudut_positioning __error_sudut_positioning) 0.0)
    ((:radius_mulai_kick_off __radius_mulai_kick_off) 0.0)
    ((:upper_saturate __upper_saturate) 0.0)
    ((:lower_saturate __lower_saturate) 0.0)
    ((:upper_saturate_engaged __upper_saturate_engaged) 0.0)
    ((:lower_saturate_engaged __lower_saturate_engaged) 0.0)
    ((:max_angle_saturate __max_angle_saturate) 0.0)
    )
   (send-super :init)
   (setq _radius_dribble_auto_on (float __radius_dribble_auto_on))
   (setq _angle_dribble_auto_on (float __angle_dribble_auto_on))
   (setq _radius_mulai_dribble_bola (float __radius_mulai_dribble_bola))
   (setq _angle_mulai_dribble_bola (float __angle_mulai_dribble_bola))
   (setq _min_error_posisi_kick (float __min_error_posisi_kick))
   (setq _min_error_sudut_kick (float __min_error_sudut_kick))
   (setq _min_error_posisi_homing (float __min_error_posisi_homing))
   (setq _min_error_sudut_homing (float __min_error_sudut_homing))
   (setq _error_positioning (float __error_positioning))
   (setq _error_sudut_positioning (float __error_sudut_positioning))
   (setq _radius_mulai_kick_off (float __radius_mulai_kick_off))
   (setq _upper_saturate (float __upper_saturate))
   (setq _lower_saturate (float __lower_saturate))
   (setq _upper_saturate_engaged (float __upper_saturate_engaged))
   (setq _lower_saturate_engaged (float __lower_saturate_engaged))
   (setq _max_angle_saturate (float __max_angle_saturate))
   self)
  (:radius_dribble_auto_on
   (&optional __radius_dribble_auto_on)
   (if __radius_dribble_auto_on (setq _radius_dribble_auto_on __radius_dribble_auto_on)) _radius_dribble_auto_on)
  (:angle_dribble_auto_on
   (&optional __angle_dribble_auto_on)
   (if __angle_dribble_auto_on (setq _angle_dribble_auto_on __angle_dribble_auto_on)) _angle_dribble_auto_on)
  (:radius_mulai_dribble_bola
   (&optional __radius_mulai_dribble_bola)
   (if __radius_mulai_dribble_bola (setq _radius_mulai_dribble_bola __radius_mulai_dribble_bola)) _radius_mulai_dribble_bola)
  (:angle_mulai_dribble_bola
   (&optional __angle_mulai_dribble_bola)
   (if __angle_mulai_dribble_bola (setq _angle_mulai_dribble_bola __angle_mulai_dribble_bola)) _angle_mulai_dribble_bola)
  (:min_error_posisi_kick
   (&optional __min_error_posisi_kick)
   (if __min_error_posisi_kick (setq _min_error_posisi_kick __min_error_posisi_kick)) _min_error_posisi_kick)
  (:min_error_sudut_kick
   (&optional __min_error_sudut_kick)
   (if __min_error_sudut_kick (setq _min_error_sudut_kick __min_error_sudut_kick)) _min_error_sudut_kick)
  (:min_error_posisi_homing
   (&optional __min_error_posisi_homing)
   (if __min_error_posisi_homing (setq _min_error_posisi_homing __min_error_posisi_homing)) _min_error_posisi_homing)
  (:min_error_sudut_homing
   (&optional __min_error_sudut_homing)
   (if __min_error_sudut_homing (setq _min_error_sudut_homing __min_error_sudut_homing)) _min_error_sudut_homing)
  (:error_positioning
   (&optional __error_positioning)
   (if __error_positioning (setq _error_positioning __error_positioning)) _error_positioning)
  (:error_sudut_positioning
   (&optional __error_sudut_positioning)
   (if __error_sudut_positioning (setq _error_sudut_positioning __error_sudut_positioning)) _error_sudut_positioning)
  (:radius_mulai_kick_off
   (&optional __radius_mulai_kick_off)
   (if __radius_mulai_kick_off (setq _radius_mulai_kick_off __radius_mulai_kick_off)) _radius_mulai_kick_off)
  (:upper_saturate
   (&optional __upper_saturate)
   (if __upper_saturate (setq _upper_saturate __upper_saturate)) _upper_saturate)
  (:lower_saturate
   (&optional __lower_saturate)
   (if __lower_saturate (setq _lower_saturate __lower_saturate)) _lower_saturate)
  (:upper_saturate_engaged
   (&optional __upper_saturate_engaged)
   (if __upper_saturate_engaged (setq _upper_saturate_engaged __upper_saturate_engaged)) _upper_saturate_engaged)
  (:lower_saturate_engaged
   (&optional __lower_saturate_engaged)
   (if __lower_saturate_engaged (setq _lower_saturate_engaged __lower_saturate_engaged)) _lower_saturate_engaged)
  (:max_angle_saturate
   (&optional __max_angle_saturate)
   (if __max_angle_saturate (setq _max_angle_saturate __max_angle_saturate)) _max_angle_saturate)
  (:serialization-length
   ()
   (+
    ;; float32 _radius_dribble_auto_on
    4
    ;; float32 _angle_dribble_auto_on
    4
    ;; float32 _radius_mulai_dribble_bola
    4
    ;; float32 _angle_mulai_dribble_bola
    4
    ;; float32 _min_error_posisi_kick
    4
    ;; float32 _min_error_sudut_kick
    4
    ;; float32 _min_error_posisi_homing
    4
    ;; float32 _min_error_sudut_homing
    4
    ;; float32 _error_positioning
    4
    ;; float32 _error_sudut_positioning
    4
    ;; float32 _radius_mulai_kick_off
    4
    ;; float32 _upper_saturate
    4
    ;; float32 _lower_saturate
    4
    ;; float32 _upper_saturate_engaged
    4
    ;; float32 _lower_saturate_engaged
    4
    ;; float32 _max_angle_saturate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radius_dribble_auto_on
       (sys::poke _radius_dribble_auto_on (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_dribble_auto_on
       (sys::poke _angle_dribble_auto_on (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius_mulai_dribble_bola
       (sys::poke _radius_mulai_dribble_bola (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_mulai_dribble_bola
       (sys::poke _angle_mulai_dribble_bola (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_error_posisi_kick
       (sys::poke _min_error_posisi_kick (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_error_sudut_kick
       (sys::poke _min_error_sudut_kick (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_error_posisi_homing
       (sys::poke _min_error_posisi_homing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_error_sudut_homing
       (sys::poke _min_error_sudut_homing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error_positioning
       (sys::poke _error_positioning (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error_sudut_positioning
       (sys::poke _error_sudut_positioning (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius_mulai_kick_off
       (sys::poke _radius_mulai_kick_off (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _upper_saturate
       (sys::poke _upper_saturate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lower_saturate
       (sys::poke _lower_saturate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _upper_saturate_engaged
       (sys::poke _upper_saturate_engaged (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lower_saturate_engaged
       (sys::poke _lower_saturate_engaged (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_angle_saturate
       (sys::poke _max_angle_saturate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radius_dribble_auto_on
     (setq _radius_dribble_auto_on (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_dribble_auto_on
     (setq _angle_dribble_auto_on (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius_mulai_dribble_bola
     (setq _radius_mulai_dribble_bola (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_mulai_dribble_bola
     (setq _angle_mulai_dribble_bola (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_error_posisi_kick
     (setq _min_error_posisi_kick (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_error_sudut_kick
     (setq _min_error_sudut_kick (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_error_posisi_homing
     (setq _min_error_posisi_homing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_error_sudut_homing
     (setq _min_error_sudut_homing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error_positioning
     (setq _error_positioning (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error_sudut_positioning
     (setq _error_sudut_positioning (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius_mulai_kick_off
     (setq _radius_mulai_kick_off (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _upper_saturate
     (setq _upper_saturate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lower_saturate
     (setq _lower_saturate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _upper_saturate_engaged
     (setq _upper_saturate_engaged (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lower_saturate_engaged
     (setq _lower_saturate_engaged (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_angle_saturate
     (setq _max_angle_saturate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fukuro_common::StrategyParam :md5sum-) "21766f045e3facf112f156a585dc8583")
(setf (get fukuro_common::StrategyParam :datatype-) "fukuro_common/StrategyParam")
(setf (get fukuro_common::StrategyParam :definition-)
      "float32 radius_dribble_auto_on
float32 angle_dribble_auto_on
float32 radius_mulai_dribble_bola
float32 angle_mulai_dribble_bola
float32 min_error_posisi_kick
float32 min_error_sudut_kick
float32 min_error_posisi_homing
float32 min_error_sudut_homing
float32 error_positioning
float32 error_sudut_positioning
float32 radius_mulai_kick_off
float32 upper_saturate
float32 lower_saturate
float32 upper_saturate_engaged
float32 lower_saturate_engaged
float32 max_angle_saturate
")



(provide :fukuro_common/StrategyParam "21766f045e3facf112f156a585dc8583")


