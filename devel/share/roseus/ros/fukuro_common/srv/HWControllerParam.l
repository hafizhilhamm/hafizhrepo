;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWControllerParam)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWControllerParam (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERPARAM")
  (make-package "FUKURO_COMMON::HWCONTROLLERPARAM"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERPARAMREQUEST")
  (make-package "FUKURO_COMMON::HWCONTROLLERPARAMREQUEST"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERPARAMRESPONSE")
  (make-package "FUKURO_COMMON::HWCONTROLLERPARAMRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::HWControllerParamRequest
  :super ros::object
  :slots (_cw _ccw ))

(defmethod fukuro_common::HWControllerParamRequest
  (:init
   (&key
    ((:cw __cw) (instance fukuro_common::MotorParameter :init))
    ((:ccw __ccw) (instance fukuro_common::MotorParameter :init))
    )
   (send-super :init)
   (setq _cw __cw)
   (setq _ccw __ccw)
   self)
  (:cw
   (&rest __cw)
   (if (keywordp (car __cw))
       (send* _cw __cw)
     (progn
       (if __cw (setq _cw (car __cw)))
       _cw)))
  (:ccw
   (&rest __ccw)
   (if (keywordp (car __ccw))
       (send* _ccw __ccw)
     (progn
       (if __ccw (setq _ccw (car __ccw)))
       _ccw)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/MotorParameter _cw
    (send _cw :serialization-length)
    ;; fukuro_common/MotorParameter _ccw
    (send _ccw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/MotorParameter _cw
       (send _cw :serialize s)
     ;; fukuro_common/MotorParameter _ccw
       (send _ccw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/MotorParameter _cw
     (send _cw :deserialize buf ptr-) (incf ptr- (send _cw :serialization-length))
   ;; fukuro_common/MotorParameter _ccw
     (send _ccw :deserialize buf ptr-) (incf ptr- (send _ccw :serialization-length))
   ;;
   self)
  )

(defclass fukuro_common::HWControllerParamResponse
  :super ros::object
  :slots (_cw _ccw _ok ))

(defmethod fukuro_common::HWControllerParamResponse
  (:init
   (&key
    ((:cw __cw) (instance fukuro_common::MotorParameter :init))
    ((:ccw __ccw) (instance fukuro_common::MotorParameter :init))
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _cw __cw)
   (setq _ccw __ccw)
   (setq _ok __ok)
   self)
  (:cw
   (&rest __cw)
   (if (keywordp (car __cw))
       (send* _cw __cw)
     (progn
       (if __cw (setq _cw (car __cw)))
       _cw)))
  (:ccw
   (&rest __ccw)
   (if (keywordp (car __ccw))
       (send* _ccw __ccw)
     (progn
       (if __ccw (setq _ccw (car __ccw)))
       _ccw)))
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/MotorParameter _cw
    (send _cw :serialization-length)
    ;; fukuro_common/MotorParameter _ccw
    (send _ccw :serialization-length)
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/MotorParameter _cw
       (send _cw :serialize s)
     ;; fukuro_common/MotorParameter _ccw
       (send _ccw :serialize s)
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/MotorParameter _cw
     (send _cw :deserialize buf ptr-) (incf ptr- (send _cw :serialization-length))
   ;; fukuro_common/MotorParameter _ccw
     (send _ccw :deserialize buf ptr-) (incf ptr- (send _ccw :serialization-length))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::HWControllerParam
  :super ros::object
  :slots ())

(setf (get fukuro_common::HWControllerParam :md5sum-) "e54c465f93b763147b0cf60d586ba040")
(setf (get fukuro_common::HWControllerParam :datatype-) "fukuro_common/HWControllerParam")
(setf (get fukuro_common::HWControllerParam :request) fukuro_common::HWControllerParamRequest)
(setf (get fukuro_common::HWControllerParam :response) fukuro_common::HWControllerParamResponse)

(defmethod fukuro_common::HWControllerParamRequest
  (:response () (instance fukuro_common::HWControllerParamResponse :init)))

(setf (get fukuro_common::HWControllerParamRequest :md5sum-) "e54c465f93b763147b0cf60d586ba040")
(setf (get fukuro_common::HWControllerParamRequest :datatype-) "fukuro_common/HWControllerParamRequest")
(setf (get fukuro_common::HWControllerParamRequest :definition-)
      "MotorParameter cw
MotorParameter ccw

================================================================================
MSG: fukuro_common/MotorParameter
int8 n_speed
float64[] motor1
float64[] motor2
---
MotorParameter cw
MotorParameter ccw
bool ok

================================================================================
MSG: fukuro_common/MotorParameter
int8 n_speed
float64[] motor1
float64[] motor2
")

(setf (get fukuro_common::HWControllerParamResponse :md5sum-) "e54c465f93b763147b0cf60d586ba040")
(setf (get fukuro_common::HWControllerParamResponse :datatype-) "fukuro_common/HWControllerParamResponse")
(setf (get fukuro_common::HWControllerParamResponse :definition-)
      "MotorParameter cw
MotorParameter ccw

================================================================================
MSG: fukuro_common/MotorParameter
int8 n_speed
float64[] motor1
float64[] motor2
---
MotorParameter cw
MotorParameter ccw
bool ok

================================================================================
MSG: fukuro_common/MotorParameter
int8 n_speed
float64[] motor1
float64[] motor2
")



(provide :fukuro_common/HWControllerParam "e54c465f93b763147b0cf60d586ba040")


