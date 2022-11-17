;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Parameter)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Parameter (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::PARAMETER")
  (make-package "FUKURO_COMMON::PARAMETER"))

(in-package "ROS")
;;//! \htmlinclude Parameter.msg.html


(defclass fukuro_common::Parameter
  :super ros::object
  :slots (_kp _ki _kd ))

(defmethod fukuro_common::Parameter
  (:init
   (&key
    ((:kp __kp) 0.0)
    ((:ki __ki) 0.0)
    ((:kd __kd) 0.0)
    )
   (send-super :init)
   (setq _kp (float __kp))
   (setq _ki (float __ki))
   (setq _kd (float __kd))
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; float64 _kp
    8
    ;; float64 _ki
    8
    ;; float64 _kd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _kp
     (setq _kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ki
     (setq _ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kd
     (setq _kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fukuro_common::Parameter :md5sum-) "972f4074b1c05b4e6ef321f04d38ec3f")
(setf (get fukuro_common::Parameter :datatype-) "fukuro_common/Parameter")
(setf (get fukuro_common::Parameter :definition-)
      "float64 kp
float64 ki
float64 kd
")



(provide :fukuro_common/Parameter "972f4074b1c05b4e6ef321f04d38ec3f")


