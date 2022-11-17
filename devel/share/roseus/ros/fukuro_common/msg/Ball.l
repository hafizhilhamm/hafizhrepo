;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Ball)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Ball (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::BALL")
  (make-package "FUKURO_COMMON::BALL"))

(in-package "ROS")
;;//! \htmlinclude Ball.msg.html


(defclass fukuro_common::Ball
  :super ros::object
  :slots (_ball_x _ball_y _is_visible ))

(defmethod fukuro_common::Ball
  (:init
   (&key
    ((:ball_x __ball_x) 0.0)
    ((:ball_y __ball_y) 0.0)
    ((:is_visible __is_visible) nil)
    )
   (send-super :init)
   (setq _ball_x (float __ball_x))
   (setq _ball_y (float __ball_y))
   (setq _is_visible __is_visible)
   self)
  (:ball_x
   (&optional __ball_x)
   (if __ball_x (setq _ball_x __ball_x)) _ball_x)
  (:ball_y
   (&optional __ball_y)
   (if __ball_y (setq _ball_y __ball_y)) _ball_y)
  (:is_visible
   (&optional (__is_visible :null))
   (if (not (eq __is_visible :null)) (setq _is_visible __is_visible)) _is_visible)
  (:serialization-length
   ()
   (+
    ;; float64 _ball_x
    8
    ;; float64 _ball_y
    8
    ;; bool _is_visible
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ball_x
       (sys::poke _ball_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ball_y
       (sys::poke _ball_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_visible
       (if _is_visible (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ball_x
     (setq _ball_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ball_y
     (setq _ball_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_visible
     (setq _is_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::Ball :md5sum-) "88ac6da9dfce2ccdcb4a5d2627e96b2f")
(setf (get fukuro_common::Ball :datatype-) "fukuro_common/Ball")
(setf (get fukuro_common::Ball :definition-)
      "float64 ball_x
float64 ball_y
bool is_visible
")



(provide :fukuro_common/Ball "88ac6da9dfce2ccdcb4a5d2627e96b2f")


