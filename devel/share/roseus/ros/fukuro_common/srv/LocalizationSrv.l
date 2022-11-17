;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::LocalizationSrv)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'LocalizationSrv (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::LOCALIZATIONSRV")
  (make-package "FUKURO_COMMON::LOCALIZATIONSRV"))
(unless (find-package "FUKURO_COMMON::LOCALIZATIONSRVREQUEST")
  (make-package "FUKURO_COMMON::LOCALIZATIONSRVREQUEST"))
(unless (find-package "FUKURO_COMMON::LOCALIZATIONSRVRESPONSE")
  (make-package "FUKURO_COMMON::LOCALIZATIONSRVRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::LocalizationSrvRequest
  :super ros::object
  :slots (_x _y _w _initial_pos ))

(defmethod fukuro_common::LocalizationSrvRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:w __w) 0.0)
    ((:initial_pos __initial_pos) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _w (float __w))
   (setq _initial_pos (round __initial_pos))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:initial_pos
   (&optional __initial_pos)
   (if __initial_pos (setq _initial_pos __initial_pos)) _initial_pos)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _w
    8
    ;; uint8 _initial_pos
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _initial_pos
       (write-byte _initial_pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _initial_pos
     (setq _initial_pos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::LocalizationSrvResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::LocalizationSrvResponse
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

(defclass fukuro_common::LocalizationSrv
  :super ros::object
  :slots ())

(setf (get fukuro_common::LocalizationSrv :md5sum-) "3e656325d982b6bf93fe099b9e93f49c")
(setf (get fukuro_common::LocalizationSrv :datatype-) "fukuro_common/LocalizationSrv")
(setf (get fukuro_common::LocalizationSrv :request) fukuro_common::LocalizationSrvRequest)
(setf (get fukuro_common::LocalizationSrv :response) fukuro_common::LocalizationSrvResponse)

(defmethod fukuro_common::LocalizationSrvRequest
  (:response () (instance fukuro_common::LocalizationSrvResponse :init)))

(setf (get fukuro_common::LocalizationSrvRequest :md5sum-) "3e656325d982b6bf93fe099b9e93f49c")
(setf (get fukuro_common::LocalizationSrvRequest :datatype-) "fukuro_common/LocalizationSrvRequest")
(setf (get fukuro_common::LocalizationSrvRequest :definition-)
      "float64 x
float64 y
float64 w
uint8 initial_pos
---
uint8 ok
")

(setf (get fukuro_common::LocalizationSrvResponse :md5sum-) "3e656325d982b6bf93fe099b9e93f49c")
(setf (get fukuro_common::LocalizationSrvResponse :datatype-) "fukuro_common/LocalizationSrvResponse")
(setf (get fukuro_common::LocalizationSrvResponse :definition-)
      "float64 x
float64 y
float64 w
uint8 initial_pos
---
uint8 ok
")



(provide :fukuro_common/LocalizationSrv "3e656325d982b6bf93fe099b9e93f49c")


