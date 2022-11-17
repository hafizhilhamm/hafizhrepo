;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::SpeedTuning)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'SpeedTuning (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::SPEEDTUNING")
  (make-package "FUKURO_COMMON::SPEEDTUNING"))
(unless (find-package "FUKURO_COMMON::SPEEDTUNINGREQUEST")
  (make-package "FUKURO_COMMON::SPEEDTUNINGREQUEST"))
(unless (find-package "FUKURO_COMMON::SPEEDTUNINGRESPONSE")
  (make-package "FUKURO_COMMON::SPEEDTUNINGRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::SpeedTuningRequest
  :super ros::object
  :slots (_linear _angular ))

(defmethod fukuro_common::SpeedTuningRequest
  (:init
   (&key
    ((:linear __linear) (instance fukuro_common::Parameter :init))
    ((:angular __angular) (instance fukuro_common::Parameter :init))
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Parameter _linear
    (send _linear :serialization-length)
    ;; fukuro_common/Parameter _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Parameter _linear
       (send _linear :serialize s)
     ;; fukuro_common/Parameter _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Parameter _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; fukuro_common/Parameter _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(defclass fukuro_common::SpeedTuningResponse
  :super ros::object
  :slots (_tune_ok ))

(defmethod fukuro_common::SpeedTuningResponse
  (:init
   (&key
    ((:tune_ok __tune_ok) nil)
    )
   (send-super :init)
   (setq _tune_ok __tune_ok)
   self)
  (:tune_ok
   (&optional (__tune_ok :null))
   (if (not (eq __tune_ok :null)) (setq _tune_ok __tune_ok)) _tune_ok)
  (:serialization-length
   ()
   (+
    ;; bool _tune_ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tune_ok
       (if _tune_ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tune_ok
     (setq _tune_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::SpeedTuning
  :super ros::object
  :slots ())

(setf (get fukuro_common::SpeedTuning :md5sum-) "cd170060ae0088446fa7f04a91313ea5")
(setf (get fukuro_common::SpeedTuning :datatype-) "fukuro_common/SpeedTuning")
(setf (get fukuro_common::SpeedTuning :request) fukuro_common::SpeedTuningRequest)
(setf (get fukuro_common::SpeedTuning :response) fukuro_common::SpeedTuningResponse)

(defmethod fukuro_common::SpeedTuningRequest
  (:response () (instance fukuro_common::SpeedTuningResponse :init)))

(setf (get fukuro_common::SpeedTuningRequest :md5sum-) "cd170060ae0088446fa7f04a91313ea5")
(setf (get fukuro_common::SpeedTuningRequest :datatype-) "fukuro_common/SpeedTuningRequest")
(setf (get fukuro_common::SpeedTuningRequest :definition-)
      "Parameter linear
Parameter angular

================================================================================
MSG: fukuro_common/Parameter
float64 kp
float64 ki
---
bool tune_ok
")

(setf (get fukuro_common::SpeedTuningResponse :md5sum-) "cd170060ae0088446fa7f04a91313ea5")
(setf (get fukuro_common::SpeedTuningResponse :datatype-) "fukuro_common/SpeedTuningResponse")
(setf (get fukuro_common::SpeedTuningResponse :definition-)
      "Parameter linear
Parameter angular

================================================================================
MSG: fukuro_common/Parameter
float64 kp
float64 ki
---
bool tune_ok
")



(provide :fukuro_common/SpeedTuning "cd170060ae0088446fa7f04a91313ea5")


