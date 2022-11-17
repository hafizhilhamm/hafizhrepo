;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Obstacles)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Obstacles (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::OBSTACLES")
  (make-package "FUKURO_COMMON::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude Obstacles.msg.html


(defclass fukuro_common::Obstacles
  :super ros::object
  :slots (_obs ))

(defmethod fukuro_common::Obstacles
  (:init
   (&key
    ((:obs __obs) ())
    )
   (send-super :init)
   (setq _obs __obs)
   self)
  (:obs
   (&rest __obs)
   (if (keywordp (car __obs))
       (send* _obs __obs)
     (progn
       (if __obs (setq _obs (car __obs)))
       _obs)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Obstacle[] _obs
    (apply #'+ (send-all _obs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Obstacle[] _obs
     (write-long (length _obs) s)
     (dolist (elem _obs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Obstacle[] _obs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs (let (r) (dotimes (i n) (push (instance fukuro_common::Obstacle :init) r)) r))
     (dolist (elem- _obs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fukuro_common::Obstacles :md5sum-) "3a9d0234d57573448b583f3223c799a5")
(setf (get fukuro_common::Obstacles :datatype-) "fukuro_common/Obstacles")
(setf (get fukuro_common::Obstacles :definition-)
      "Obstacle[] obs
================================================================================
MSG: fukuro_common/Obstacle
Point2d pos
float64 r
int8 shape
================================================================================
MSG: fukuro_common/Point2d
float64 x
float64 y
")



(provide :fukuro_common/Obstacles "3a9d0234d57573448b583f3223c799a5")


