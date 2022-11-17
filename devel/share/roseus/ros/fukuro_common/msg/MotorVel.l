;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::MotorVel)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'MotorVel (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::MOTORVEL")
  (make-package "FUKURO_COMMON::MOTORVEL"))

(in-package "ROS")
;;//! \htmlinclude MotorVel.msg.html


(defclass fukuro_common::MotorVel
  :super ros::object
  :slots (_m1 _m2 _m3 ))

(defmethod fukuro_common::MotorVel
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
    ;; float32 _m1
    4
    ;; float32 _m2
    4
    ;; float32 _m3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _m1
       (sys::poke _m1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m2
       (sys::poke _m2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m3
       (sys::poke _m3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _m1
     (setq _m1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m2
     (setq _m2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m3
     (setq _m3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fukuro_common::MotorVel :md5sum-) "a86e25d23be69cefa1d2e044fba11b0c")
(setf (get fukuro_common::MotorVel :datatype-) "fukuro_common/MotorVel")
(setf (get fukuro_common::MotorVel :definition-)
      "float32 m1
float32 m2
float32 m3
")



(provide :fukuro_common/MotorVel "a86e25d23be69cefa1d2e044fba11b0c")


