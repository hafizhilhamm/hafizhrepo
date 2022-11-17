;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWControllerPIParam)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWControllerPIParam (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERPIPARAM")
  (make-package "FUKURO_COMMON::HWCONTROLLERPIPARAM"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERPIPARAMREQUEST")
  (make-package "FUKURO_COMMON::HWCONTROLLERPIPARAMREQUEST"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERPIPARAMRESPONSE")
  (make-package "FUKURO_COMMON::HWCONTROLLERPIPARAMRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::HWControllerPIParamRequest
  :super ros::object
  :slots (_k ))

(defmethod fukuro_common::HWControllerPIParamRequest
  (:init
   (&key
    ((:k __k) (instance fukuro_common::MotorParameter :init))
    )
   (send-super :init)
   (setq _k __k)
   self)
  (:k
   (&rest __k)
   (if (keywordp (car __k))
       (send* _k __k)
     (progn
       (if __k (setq _k (car __k)))
       _k)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/MotorParameter _k
    (send _k :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/MotorParameter _k
       (send _k :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/MotorParameter _k
     (send _k :deserialize buf ptr-) (incf ptr- (send _k :serialization-length))
   ;;
   self)
  )

(defclass fukuro_common::HWControllerPIParamResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::HWControllerPIParamResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::HWControllerPIParam
  :super ros::object
  :slots ())

(setf (get fukuro_common::HWControllerPIParam :md5sum-) "ebbd950a01132723798b799989122afe")
(setf (get fukuro_common::HWControllerPIParam :datatype-) "fukuro_common/HWControllerPIParam")
(setf (get fukuro_common::HWControllerPIParam :request) fukuro_common::HWControllerPIParamRequest)
(setf (get fukuro_common::HWControllerPIParam :response) fukuro_common::HWControllerPIParamResponse)

(defmethod fukuro_common::HWControllerPIParamRequest
  (:response () (instance fukuro_common::HWControllerPIParamResponse :init)))

(setf (get fukuro_common::HWControllerPIParamRequest :md5sum-) "ebbd950a01132723798b799989122afe")
(setf (get fukuro_common::HWControllerPIParamRequest :datatype-) "fukuro_common/HWControllerPIParamRequest")
(setf (get fukuro_common::HWControllerPIParamRequest :definition-)
      "MotorParameter k

================================================================================
MSG: fukuro_common/MotorParameter
int8 n_speed
float64[] motor1
float64[] motor2
---
bool ok
")

(setf (get fukuro_common::HWControllerPIParamResponse :md5sum-) "ebbd950a01132723798b799989122afe")
(setf (get fukuro_common::HWControllerPIParamResponse :datatype-) "fukuro_common/HWControllerPIParamResponse")
(setf (get fukuro_common::HWControllerPIParamResponse :definition-)
      "MotorParameter k

================================================================================
MSG: fukuro_common/MotorParameter
int8 n_speed
float64[] motor1
float64[] motor2
---
bool ok
")



(provide :fukuro_common/HWControllerPIParam "ebbd950a01132723798b799989122afe")


