;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::PlannerInfoSrv)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'PlannerInfoSrv (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::PLANNERINFOSRV")
  (make-package "FUKURO_COMMON::PLANNERINFOSRV"))
(unless (find-package "FUKURO_COMMON::PLANNERINFOSRVREQUEST")
  (make-package "FUKURO_COMMON::PLANNERINFOSRVREQUEST"))
(unless (find-package "FUKURO_COMMON::PLANNERINFOSRVRESPONSE")
  (make-package "FUKURO_COMMON::PLANNERINFOSRVRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::PlannerInfoSrvRequest
  :super ros::object
  :slots (_width _height _grid_size ))

(defmethod fukuro_common::PlannerInfoSrvRequest
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:grid_size __grid_size) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _grid_size (float __grid_size))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:grid_size
   (&optional __grid_size)
   (if __grid_size (setq _grid_size __grid_size)) _grid_size)
  (:serialization-length
   ()
   (+
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; float64 _grid_size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _grid_size
       (sys::poke _grid_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _grid_size
     (setq _grid_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fukuro_common::PlannerInfoSrvResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::PlannerInfoSrvResponse
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

(defclass fukuro_common::PlannerInfoSrv
  :super ros::object
  :slots ())

(setf (get fukuro_common::PlannerInfoSrv :md5sum-) "1be42ff1b6414a6f4a0eb49fbae122a7")
(setf (get fukuro_common::PlannerInfoSrv :datatype-) "fukuro_common/PlannerInfoSrv")
(setf (get fukuro_common::PlannerInfoSrv :request) fukuro_common::PlannerInfoSrvRequest)
(setf (get fukuro_common::PlannerInfoSrv :response) fukuro_common::PlannerInfoSrvResponse)

(defmethod fukuro_common::PlannerInfoSrvRequest
  (:response () (instance fukuro_common::PlannerInfoSrvResponse :init)))

(setf (get fukuro_common::PlannerInfoSrvRequest :md5sum-) "1be42ff1b6414a6f4a0eb49fbae122a7")
(setf (get fukuro_common::PlannerInfoSrvRequest :datatype-) "fukuro_common/PlannerInfoSrvRequest")
(setf (get fukuro_common::PlannerInfoSrvRequest :definition-)
      "float64 width
float64 height
float64 grid_size
---
uint8 ok
")

(setf (get fukuro_common::PlannerInfoSrvResponse :md5sum-) "1be42ff1b6414a6f4a0eb49fbae122a7")
(setf (get fukuro_common::PlannerInfoSrvResponse :datatype-) "fukuro_common/PlannerInfoSrvResponse")
(setf (get fukuro_common::PlannerInfoSrvResponse :definition-)
      "float64 width
float64 height
float64 grid_size
---
uint8 ok
")



(provide :fukuro_common/PlannerInfoSrv "1be42ff1b6414a6f4a0eb49fbae122a7")


