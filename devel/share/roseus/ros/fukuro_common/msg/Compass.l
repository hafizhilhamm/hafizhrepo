;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Compass)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Compass (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::COMPASS")
  (make-package "FUKURO_COMMON::COMPASS"))

(in-package "ROS")
;;//! \htmlinclude Compass.msg.html


(defclass fukuro_common::Compass
  :super ros::object
  :slots (_cmps ))

(defmethod fukuro_common::Compass
  (:init
   (&key
    ((:cmps __cmps) 0.0)
    )
   (send-super :init)
   (setq _cmps (float __cmps))
   self)
  (:cmps
   (&optional __cmps)
   (if __cmps (setq _cmps __cmps)) _cmps)
  (:serialization-length
   ()
   (+
    ;; float64 _cmps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cmps
       (sys::poke _cmps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cmps
     (setq _cmps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fukuro_common::Compass :md5sum-) "9fef2f746f54270aba8e56b443ad3f25")
(setf (get fukuro_common::Compass :datatype-) "fukuro_common/Compass")
(setf (get fukuro_common::Compass :definition-)
      "float64 cmps
")



(provide :fukuro_common/Compass "9fef2f746f54270aba8e56b443ad3f25")


