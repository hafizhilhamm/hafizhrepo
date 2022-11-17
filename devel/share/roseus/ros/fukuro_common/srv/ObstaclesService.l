;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::ObstaclesService)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'ObstaclesService (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::OBSTACLESSERVICE")
  (make-package "FUKURO_COMMON::OBSTACLESSERVICE"))
(unless (find-package "FUKURO_COMMON::OBSTACLESSERVICEREQUEST")
  (make-package "FUKURO_COMMON::OBSTACLESSERVICEREQUEST"))
(unless (find-package "FUKURO_COMMON::OBSTACLESSERVICERESPONSE")
  (make-package "FUKURO_COMMON::OBSTACLESSERVICERESPONSE"))

(in-package "ROS")





(defclass fukuro_common::ObstaclesServiceRequest
  :super ros::object
  :slots (_obstacle ))

(defmethod fukuro_common::ObstaclesServiceRequest
  (:init
   (&key
    ((:obstacle __obstacle) ())
    )
   (send-super :init)
   (setq _obstacle __obstacle)
   self)
  (:obstacle
   (&rest __obstacle)
   (if (keywordp (car __obstacle))
       (send* _obstacle __obstacle)
     (progn
       (if __obstacle (setq _obstacle (car __obstacle)))
       _obstacle)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Obstacle[] _obstacle
    (apply #'+ (send-all _obstacle :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Obstacle[] _obstacle
     (write-long (length _obstacle) s)
     (dolist (elem _obstacle)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Obstacle[] _obstacle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle (let (r) (dotimes (i n) (push (instance fukuro_common::Obstacle :init) r)) r))
     (dolist (elem- _obstacle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass fukuro_common::ObstaclesServiceResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::ObstaclesServiceResponse
  (:init
   (&key
    ((:ok __ok) 0)
    )
   (send-super :init)
   (setq _ok (round __ok))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; uint8 _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ok
       (write-byte _ok s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ok
     (setq _ok (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::ObstaclesService
  :super ros::object
  :slots ())

(setf (get fukuro_common::ObstaclesService :md5sum-) "81a6d1748dadd1a2f252dedfae401a7d")
(setf (get fukuro_common::ObstaclesService :datatype-) "fukuro_common/ObstaclesService")
(setf (get fukuro_common::ObstaclesService :request) fukuro_common::ObstaclesServiceRequest)
(setf (get fukuro_common::ObstaclesService :response) fukuro_common::ObstaclesServiceResponse)

(defmethod fukuro_common::ObstaclesServiceRequest
  (:response () (instance fukuro_common::ObstaclesServiceResponse :init)))

(setf (get fukuro_common::ObstaclesServiceRequest :md5sum-) "81a6d1748dadd1a2f252dedfae401a7d")
(setf (get fukuro_common::ObstaclesServiceRequest :datatype-) "fukuro_common/ObstaclesServiceRequest")
(setf (get fukuro_common::ObstaclesServiceRequest :definition-)
      "Obstacle[] obstacle

================================================================================
MSG: fukuro_common/Obstacle
Point2d pos
float64 r
int8 shape
================================================================================
MSG: fukuro_common/Point2d
float64 x
---
uint8 ok
")

(setf (get fukuro_common::ObstaclesServiceResponse :md5sum-) "81a6d1748dadd1a2f252dedfae401a7d")
(setf (get fukuro_common::ObstaclesServiceResponse :datatype-) "fukuro_common/ObstaclesServiceResponse")
(setf (get fukuro_common::ObstaclesServiceResponse :definition-)
      "Obstacle[] obstacle

================================================================================
MSG: fukuro_common/Obstacle
Point2d pos
float64 r
int8 shape
================================================================================
MSG: fukuro_common/Point2d
float64 x
---
uint8 ok
")



(provide :fukuro_common/ObstaclesService "81a6d1748dadd1a2f252dedfae401a7d")


