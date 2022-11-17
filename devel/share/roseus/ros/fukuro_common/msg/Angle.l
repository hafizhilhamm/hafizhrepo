;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Angle)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Angle (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ANGLE")
  (make-package "FUKURO_COMMON::ANGLE"))

(in-package "ROS")
;;//! \htmlinclude Angle.msg.html


(defclass fukuro_common::Angle
  :super ros::object
  :slots (_theta _rad ))

(defmethod fukuro_common::Angle
  (:init
   (&key
    ((:theta __theta) 0.0)
    ((:rad __rad) 0.0)
    )
   (send-super :init)
   (setq _theta (float __theta))
   (setq _rad (float __rad))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:rad
   (&optional __rad)
   (if __rad (setq _rad __rad)) _rad)
  (:serialization-length
   ()
   (+
    ;; float64 _theta
    8
    ;; float64 _rad
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rad
       (sys::poke _rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rad
     (setq _rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fukuro_common::Angle :md5sum-) "3a2f5a7d9a3c91939c8d1626290be18b")
(setf (get fukuro_common::Angle :datatype-) "fukuro_common/Angle")
(setf (get fukuro_common::Angle :definition-)
      "float64 theta
float64 rad
")



(provide :fukuro_common/Angle "3a2f5a7d9a3c91939c8d1626290be18b")


