;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Encoder)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Encoder (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ENCODER")
  (make-package "FUKURO_COMMON::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude Encoder.msg.html


(defclass fukuro_common::Encoder
  :super ros::object
  :slots (_m1 _m2 _m3 ))

(defmethod fukuro_common::Encoder
  (:init
   (&key
    ((:m1 __m1) 0)
    ((:m2 __m2) 0)
    ((:m3 __m3) 0)
    )
   (send-super :init)
   (setq _m1 (round __m1))
   (setq _m2 (round __m2))
   (setq _m3 (round __m3))
   self)
  (:m1
   (&optional __m1)
   (if __m1 (setq _m1 __m1)) _m1)
  (:m2
   (&optional __m2)
   (if __m2 (setq _m2 __m2)) _m2)
  (:m3
   (&optional __m3)
   (if __m3 (setq _m3 __m3)) _m3)
  (:serialization-length
   ()
   (+
    ;; int32 _m1
    4
    ;; int32 _m2
    4
    ;; int32 _m3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _m1
       (write-long _m1 s)
     ;; int32 _m2
       (write-long _m2 s)
     ;; int32 _m3
       (write-long _m3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _m1
     (setq _m1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _m2
     (setq _m2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _m3
     (setq _m3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fukuro_common::Encoder :md5sum-) "cd367497cdebb61aefcd6d2170789a14")
(setf (get fukuro_common::Encoder :datatype-) "fukuro_common/Encoder")
(setf (get fukuro_common::Encoder :definition-)
      "int32 m1
int32 m2
int32 m3
")



(provide :fukuro_common/Encoder "cd367497cdebb61aefcd6d2170789a14")


