;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWControllerCommand)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWControllerCommand (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERCOMMAND")
  (make-package "FUKURO_COMMON::HWCONTROLLERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HWControllerCommand.msg.html


(defclass fukuro_common::HWControllerCommand
  :super ros::object
  :slots (_vel _dribbler _motor _kick _pwm_test _motor_brake ))

(defmethod fukuro_common::HWControllerCommand
  (:init
   (&key
    ((:vel __vel) (instance fukuro_common::VelCmd :init))
    ((:dribbler __dribbler) (instance fukuro_common::DribblerControl :init))
    ((:motor __motor) (instance fukuro_common::MotorVel :init))
    ((:kick __kick) 0)
    ((:pwm_test __pwm_test) nil)
    ((:motor_brake __motor_brake) nil)
    )
   (send-super :init)
   (setq _vel __vel)
   (setq _dribbler __dribbler)
   (setq _motor __motor)
   (setq _kick (round __kick))
   (setq _pwm_test __pwm_test)
   (setq _motor_brake __motor_brake)
   self)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:dribbler
   (&rest __dribbler)
   (if (keywordp (car __dribbler))
       (send* _dribbler __dribbler)
     (progn
       (if __dribbler (setq _dribbler (car __dribbler)))
       _dribbler)))
  (:motor
   (&rest __motor)
   (if (keywordp (car __motor))
       (send* _motor __motor)
     (progn
       (if __motor (setq _motor (car __motor)))
       _motor)))
  (:kick
   (&optional __kick)
   (if __kick (setq _kick __kick)) _kick)
  (:pwm_test
   (&optional (__pwm_test :null))
   (if (not (eq __pwm_test :null)) (setq _pwm_test __pwm_test)) _pwm_test)
  (:motor_brake
   (&optional (__motor_brake :null))
   (if (not (eq __motor_brake :null)) (setq _motor_brake __motor_brake)) _motor_brake)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/VelCmd _vel
    (send _vel :serialization-length)
    ;; fukuro_common/DribblerControl _dribbler
    (send _dribbler :serialization-length)
    ;; fukuro_common/MotorVel _motor
    (send _motor :serialization-length)
    ;; int32 _kick
    4
    ;; bool _pwm_test
    1
    ;; bool _motor_brake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/VelCmd _vel
       (send _vel :serialize s)
     ;; fukuro_common/DribblerControl _dribbler
       (send _dribbler :serialize s)
     ;; fukuro_common/MotorVel _motor
       (send _motor :serialize s)
     ;; int32 _kick
       (write-long _kick s)
     ;; bool _pwm_test
       (if _pwm_test (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_brake
       (if _motor_brake (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/VelCmd _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; fukuro_common/DribblerControl _dribbler
     (send _dribbler :deserialize buf ptr-) (incf ptr- (send _dribbler :serialization-length))
   ;; fukuro_common/MotorVel _motor
     (send _motor :deserialize buf ptr-) (incf ptr- (send _motor :serialization-length))
   ;; int32 _kick
     (setq _kick (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _pwm_test
     (setq _pwm_test (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_brake
     (setq _motor_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::HWControllerCommand :md5sum-) "8649b21cff79d6ff662fd81507c1f841")
(setf (get fukuro_common::HWControllerCommand :datatype-) "fukuro_common/HWControllerCommand")
(setf (get fukuro_common::HWControllerCommand :definition-)
      "VelCmd vel
DribblerControl dribbler
MotorVel motor
int32 kick
bool pwm_test
bool motor_brake
================================================================================
MSG: fukuro_common/VelCmd
float64 vx
float64 vy
float64 w
================================================================================
MSG: fukuro_common/DribblerControl
uint8 dir_in
float32 speed
================================================================================
MSG: fukuro_common/MotorVel
float32 m1
float32 m2
float32 m3
")



(provide :fukuro_common/HWControllerCommand "8649b21cff79d6ff662fd81507c1f841")


