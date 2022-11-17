;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::PlannerService)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'PlannerService (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::PLANNERSERVICE")
  (make-package "FUKURO_COMMON::PLANNERSERVICE"))
(unless (find-package "FUKURO_COMMON::PLANNERSERVICEREQUEST")
  (make-package "FUKURO_COMMON::PLANNERSERVICEREQUEST"))
(unless (find-package "FUKURO_COMMON::PLANNERSERVICERESPONSE")
  (make-package "FUKURO_COMMON::PLANNERSERVICERESPONSE"))

(in-package "ROS")





(defclass fukuro_common::PlannerServiceRequest
  :super ros::object
  :slots (_goal_x _goal_y ))

(defmethod fukuro_common::PlannerServiceRequest
  (:init
   (&key
    ((:goal_x __goal_x) 0.0)
    ((:goal_y __goal_y) 0.0)
    )
   (send-super :init)
   (setq _goal_x (float __goal_x))
   (setq _goal_y (float __goal_y))
   self)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:serialization-length
   ()
   (+
    ;; float64 _goal_x
    8
    ;; float64 _goal_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _goal_x
       (sys::poke _goal_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _goal_y
       (sys::poke _goal_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _goal_x
     (setq _goal_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _goal_y
     (setq _goal_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fukuro_common::PlannerServiceResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::PlannerServiceResponse
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

(defclass fukuro_common::PlannerService
  :super ros::object
  :slots ())

(setf (get fukuro_common::PlannerService :md5sum-) "5a5a6fb0e0f734584b61533ce0d0cbd4")
(setf (get fukuro_common::PlannerService :datatype-) "fukuro_common/PlannerService")
(setf (get fukuro_common::PlannerService :request) fukuro_common::PlannerServiceRequest)
(setf (get fukuro_common::PlannerService :response) fukuro_common::PlannerServiceResponse)

(defmethod fukuro_common::PlannerServiceRequest
  (:response () (instance fukuro_common::PlannerServiceResponse :init)))

(setf (get fukuro_common::PlannerServiceRequest :md5sum-) "5a5a6fb0e0f734584b61533ce0d0cbd4")
(setf (get fukuro_common::PlannerServiceRequest :datatype-) "fukuro_common/PlannerServiceRequest")
(setf (get fukuro_common::PlannerServiceRequest :definition-)
      "float64 goal_x
float64 goal_y
---
uint8 ok
")

(setf (get fukuro_common::PlannerServiceResponse :md5sum-) "5a5a6fb0e0f734584b61533ce0d0cbd4")
(setf (get fukuro_common::PlannerServiceResponse :datatype-) "fukuro_common/PlannerServiceResponse")
(setf (get fukuro_common::PlannerServiceResponse :definition-)
      "float64 goal_x
float64 goal_y
---
uint8 ok
")



(provide :fukuro_common/PlannerService "5a5a6fb0e0f734584b61533ce0d0cbd4")


