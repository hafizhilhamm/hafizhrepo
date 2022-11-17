;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::PWM)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'PWM (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::PWM")
  (make-package "FUKURO_COMMON::PWM"))

(in-package "ROS")
;;//! \htmlinclude PWM.msg.html


(defclass fukuro_common::PWM
  :super ros::object
  :slots (_m1 _m2 _m3 ))

(defmethod fukuro_common::PWM
  (:init
   (&key
    ((:m1 __m1) 0.0)
    ((:m2 __m2) 0.0)
    ((:m3 __m3) 0.0)
    )
   (send-super :init)
   (setq _m1 (float __m1))
   (setq _m2 (float __m2))
   (setq _m3 (float __m3))
   self)
  (:m1
   (&optional __m1)
   (if __m1 (setq _m1 __m1)) _m1)
  (:m2
   (&optional __m2)
   (if __m2 (setq _m2 __m2)) _m2)
  (:m3
   (&optional __m3)
   (if __m3 (setq _m3 __m3)) _m3)
  (:serialization-length
   ()
   (+
    ;; float64 _m1
    8
    ;; float64 _m2
    8
    ;; float64 _m3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _m1
       (sys::poke _m1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m2
       (sys::poke _m2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m3
       (sys::poke _m3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _m1
     (setq _m1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m2
     (setq _m2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m3
     (setq _m3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fukuro_common::PWM :md5sum-) "f38f746e36007dc479eedf12d9cd9dbc")
(setf (get fukuro_common::PWM :datatype-) "fukuro_common/PWM")
(setf (get fukuro_common::PWM :definition-)
      "float64 m1
float64 m2
float64 m3
")



(provide :fukuro_common/PWM "f38f746e36007dc479eedf12d9cd9dbc")


