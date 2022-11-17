;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Whites)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Whites (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::WHITES")
  (make-package "FUKURO_COMMON::WHITES"))

(in-package "ROS")
;;//! \htmlinclude Whites.msg.html


(defclass fukuro_common::Whites
  :super ros::object
  :slots (_whites ))

(defmethod fukuro_common::Whites
  (:init
   (&key
    ((:whites __whites) ())
    )
   (send-super :init)
   (setq _whites __whites)
   self)
  (:whites
   (&rest __whites)
   (if (keywordp (car __whites))
       (send* _whites __whites)
     (progn
       (if __whites (setq _whites (car __whites)))
       _whites)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Point2d[] _whites
    (apply #'+ (send-all _whites :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Point2d[] _whites
     (write-long (length _whites) s)
     (dolist (elem _whites)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Point2d[] _whites
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _whites (let (r) (dotimes (i n) (push (instance fukuro_common::Point2d :init) r)) r))
     (dolist (elem- _whites)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fukuro_common::Whites :md5sum-) "3888bbcb4197c33e8f1471d84dc66374")
(setf (get fukuro_common::Whites :datatype-) "fukuro_common/Whites")
(setf (get fukuro_common::Whites :definition-)
      "Point2d[] whites
================================================================================
MSG: fukuro_common/Point2d
float64 x
float64 y
")



(provide :fukuro_common/Whites "3888bbcb4197c33e8f1471d84dc66374")


