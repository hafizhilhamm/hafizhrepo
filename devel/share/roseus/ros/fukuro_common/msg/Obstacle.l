;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Obstacle)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Obstacle (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::OBSTACLE")
  (make-package "FUKURO_COMMON::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass fukuro_common::Obstacle
  :super ros::object
  :slots (_pos _r _shape ))

(defmethod fukuro_common::Obstacle
  (:init
   (&key
    ((:pos __pos) (instance fukuro_common::Point2d :init))
    ((:r __r) 0.0)
    ((:shape __shape) 0)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _r (float __r))
   (setq _shape (round __shape))
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Point2d _pos
    (send _pos :serialization-length)
    ;; float64 _r
    8
    ;; int8 _shape
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Point2d _pos
       (send _pos :serialize s)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _shape
       (write-byte _shape s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Point2d _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _shape
     (setq _shape (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _shape 127) (setq _shape (- _shape 256)))
   ;;
   self)
  )

(setf (get fukuro_common::Obstacle :md5sum-) "204658f3eba3518a7ff5338be777b1e8")
(setf (get fukuro_common::Obstacle :datatype-) "fukuro_common/Obstacle")
(setf (get fukuro_common::Obstacle :definition-)
      "Point2d pos
float64 r
int8 shape
================================================================================
MSG: fukuro_common/Point2d
float64 x
float64 y
")



(provide :fukuro_common/Obstacle "204658f3eba3518a7ff5338be777b1e8")


