;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWControllerManual)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWControllerManual (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERMANUAL")
  (make-package "FUKURO_COMMON::HWCONTROLLERMANUAL"))

(in-package "ROS")
;;//! \htmlinclude HWControllerManual.msg.html


(defclass fukuro_common::HWControllerManual
  :super ros::object
  :slots (_vx _vy _w ))

(defmethod fukuro_common::HWControllerManual
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _w (float __w))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _w
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fukuro_common::HWControllerManual :md5sum-) "461e74593b26c77a7c97f00fe82c6d79")
(setf (get fukuro_common::HWControllerManual :datatype-) "fukuro_common/HWControllerManual")
(setf (get fukuro_common::HWControllerManual :definition-)
      "float64 vx
float64 vy
float64 w
")



(provide :fukuro_common/HWControllerManual "461e74593b26c77a7c97f00fe82c6d79")


