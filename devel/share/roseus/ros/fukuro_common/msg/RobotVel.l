;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::RobotVel)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'RobotVel (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ROBOTVEL")
  (make-package "FUKURO_COMMON::ROBOTVEL"))

(in-package "ROS")
;;//! \htmlinclude RobotVel.msg.html


(defclass fukuro_common::RobotVel
  :super ros::object
  :slots (_free1 _free2 _free3 ))

(defmethod fukuro_common::RobotVel
  (:init
   (&key
    ((:free1 __free1) 0.0)
    ((:free2 __free2) 0.0)
    ((:free3 __free3) 0.0)
    )
   (send-super :init)
   (setq _free1 (float __free1))
   (setq _free2 (float __free2))
   (setq _free3 (float __free3))
   self)
  (:free1
   (&optional __free1)
   (if __free1 (setq _free1 __free1)) _free1)
  (:free2
   (&optional __free2)
   (if __free2 (setq _free2 __free2)) _free2)
  (:free3
   (&optional __free3)
   (if __free3 (setq _free3 __free3)) _free3)
  (:serialization-length
   ()
   (+
    ;; float32 _free1
    4
    ;; float32 _free2
    4
    ;; float32 _free3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _free1
       (sys::poke _free1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _free2
       (sys::poke _free2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _free3
       (sys::poke _free3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _free1
     (setq _free1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _free2
     (setq _free2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _free3
     (setq _free3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fukuro_common::RobotVel :md5sum-) "5c8b02a70b5431ee21c709a8d3e87494")
(setf (get fukuro_common::RobotVel :datatype-) "fukuro_common/RobotVel")
(setf (get fukuro_common::RobotVel :definition-)
      "float32 free1
float32 free2
float32 free3
")



(provide :fukuro_common/RobotVel "5c8b02a70b5431ee21c709a8d3e87494")


