;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::SerialData)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'SerialData (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::SERIALDATA")
  (make-package "FUKURO_COMMON::SERIALDATA"))

(in-package "ROS")
;;//! \htmlinclude SerialData.msg.html


(defclass fukuro_common::SerialData
  :super ros::object
  :slots (_motor _kecepatan _motor_brake _kick ))

(defmethod fukuro_common::SerialData
  (:init
   (&key
    ((:motor __motor) (instance fukuro_common::MotorVel :init))
    ((:kecepatan __kecepatan) (instance fukuro_common::DribblerControl :init))
    ((:motor_brake __motor_brake) nil)
    ((:kick __kick) 0)
    )
   (send-super :init)
   (setq _motor __motor)
   (setq _kecepatan __kecepatan)
   (setq _motor_brake __motor_brake)
   (setq _kick (round __kick))
   self)
  (:motor
   (&rest __motor)
   (if (keywordp (car __motor))
       (send* _motor __motor)
     (progn
       (if __motor (setq _motor (car __motor)))
       _motor)))
  (:kecepatan
   (&rest __kecepatan)
   (if (keywordp (car __kecepatan))
       (send* _kecepatan __kecepatan)
     (progn
       (if __kecepatan (setq _kecepatan (car __kecepatan)))
       _kecepatan)))
  (:motor_brake
   (&optional (__motor_brake :null))
   (if (not (eq __motor_brake :null)) (setq _motor_brake __motor_brake)) _motor_brake)
  (:kick
   (&optional __kick)
   (if __kick (setq _kick __kick)) _kick)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/MotorVel _motor
    (send _motor :serialization-length)
    ;; fukuro_common/DribblerControl _kecepatan
    (send _kecepatan :serialization-length)
    ;; bool _motor_brake
    1
    ;; int8 _kick
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/MotorVel _motor
       (send _motor :serialize s)
     ;; fukuro_common/DribblerControl _kecepatan
       (send _kecepatan :serialize s)
     ;; bool _motor_brake
       (if _motor_brake (write-byte -1 s) (write-byte 0 s))
     ;; int8 _kick
       (write-byte _kick s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/MotorVel _motor
     (send _motor :deserialize buf ptr-) (incf ptr- (send _motor :serialization-length))
   ;; fukuro_common/DribblerControl _kecepatan
     (send _kecepatan :deserialize buf ptr-) (incf ptr- (send _kecepatan :serialization-length))
   ;; bool _motor_brake
     (setq _motor_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _kick
     (setq _kick (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _kick 127) (setq _kick (- _kick 256)))
   ;;
   self)
  )

(setf (get fukuro_common::SerialData :md5sum-) "e79ea646426556a7d54f50fe79c0de3f")
(setf (get fukuro_common::SerialData :datatype-) "fukuro_common/SerialData")
(setf (get fukuro_common::SerialData :definition-)
      "MotorVel motor
DribblerControl kecepatan
bool motor_brake
int8 kick
================================================================================
MSG: fukuro_common/MotorVel
float32 m1
float32 m2
float32 m3
================================================================================
MSG: fukuro_common/DribblerControl
uint8 dir_in
float32 speed
")



(provide :fukuro_common/SerialData "e79ea646426556a7d54f50fe79c0de3f")


