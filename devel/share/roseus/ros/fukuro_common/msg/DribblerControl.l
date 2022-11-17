;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::DribblerControl)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'DribblerControl (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::DRIBBLERCONTROL")
  (make-package "FUKURO_COMMON::DRIBBLERCONTROL"))

(in-package "ROS")
;;//! \htmlinclude DribblerControl.msg.html


(defclass fukuro_common::DribblerControl
  :super ros::object
  :slots (_dir_in _speed ))

(defmethod fukuro_common::DribblerControl
  (:init
   (&key
    ((:dir_in __dir_in) 0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _dir_in (round __dir_in))
   (setq _speed (float __speed))
   self)
  (:dir_in
   (&optional __dir_in)
   (if __dir_in (setq _dir_in __dir_in)) _dir_in)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _dir_in
    1
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dir_in
       (write-byte _dir_in s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dir_in
     (setq _dir_in (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fukuro_common::DribblerControl :md5sum-) "d4af231b2c1c93c434a1a477fb94ba80")
(setf (get fukuro_common::DribblerControl :datatype-) "fukuro_common/DribblerControl")
(setf (get fukuro_common::DribblerControl :definition-)
      "uint8 dir_in
float32 speed
")



(provide :fukuro_common/DribblerControl "d4af231b2c1c93c434a1a477fb94ba80")


