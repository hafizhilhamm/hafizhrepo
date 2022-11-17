;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Point2d)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Point2d (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::POINT2D")
  (make-package "FUKURO_COMMON::POINT2D"))

(in-package "ROS")
;;//! \htmlinclude Point2d.msg.html


(defclass fukuro_common::Point2d
  :super ros::object
  :slots (_x _y ))

(defmethod fukuro_common::Point2d
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fukuro_common::Point2d :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get fukuro_common::Point2d :datatype-) "fukuro_common/Point2d")
(setf (get fukuro_common::Point2d :definition-)
      "float64 x
float64 y
")



(provide :fukuro_common/Point2d "209f516d3eb691f0663e25cb750d67c1")


