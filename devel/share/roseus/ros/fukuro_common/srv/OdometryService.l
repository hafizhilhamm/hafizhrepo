;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::OdometryService)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'OdometryService (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ODOMETRYSERVICE")
  (make-package "FUKURO_COMMON::ODOMETRYSERVICE"))
(unless (find-package "FUKURO_COMMON::ODOMETRYSERVICEREQUEST")
  (make-package "FUKURO_COMMON::ODOMETRYSERVICEREQUEST"))
(unless (find-package "FUKURO_COMMON::ODOMETRYSERVICERESPONSE")
  (make-package "FUKURO_COMMON::ODOMETRYSERVICERESPONSE"))

(in-package "ROS")





(defclass fukuro_common::OdometryServiceRequest
  :super ros::object
  :slots (_x _y _w ))

(defmethod fukuro_common::OdometryServiceRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _w (float __w))
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
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _w
    8
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
   ;;
   self)
  )

(defclass fukuro_common::OdometryServiceResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::OdometryServiceResponse
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
    ;; int64 _ok
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ok
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ok (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ok) (= (length (_ok . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ok . bv) 0) 0) s)
              (write-long (ash (elt (_ok . bv) 1) -1) s))
             ((and (class _ok) (= (length (_ok . bv)) 1)) ;; big1
              (write-long (elt (_ok . bv) 0) s)
              (write-long (if (>= _ok 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ok s)(write-long (if (>= _ok 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ok
#+(or :alpha :irix6 :x86_64)
      (setf _ok (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ok (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass fukuro_common::OdometryService
  :super ros::object
  :slots ())

(setf (get fukuro_common::OdometryService :md5sum-) "53452fdf3dd1b1dec99dc1c69895e9cf")
(setf (get fukuro_common::OdometryService :datatype-) "fukuro_common/OdometryService")
(setf (get fukuro_common::OdometryService :request) fukuro_common::OdometryServiceRequest)
(setf (get fukuro_common::OdometryService :response) fukuro_common::OdometryServiceResponse)

(defmethod fukuro_common::OdometryServiceRequest
  (:response () (instance fukuro_common::OdometryServiceResponse :init)))

(setf (get fukuro_common::OdometryServiceRequest :md5sum-) "53452fdf3dd1b1dec99dc1c69895e9cf")
(setf (get fukuro_common::OdometryServiceRequest :datatype-) "fukuro_common/OdometryServiceRequest")
(setf (get fukuro_common::OdometryServiceRequest :definition-)
      "float64 x
float64 y
float64 w
---
int64 ok
")

(setf (get fukuro_common::OdometryServiceResponse :md5sum-) "53452fdf3dd1b1dec99dc1c69895e9cf")
(setf (get fukuro_common::OdometryServiceResponse :datatype-) "fukuro_common/OdometryServiceResponse")
(setf (get fukuro_common::OdometryServiceResponse :definition-)
      "float64 x
float64 y
float64 w
---
int64 ok
")



(provide :fukuro_common/OdometryService "53452fdf3dd1b1dec99dc1c69895e9cf")


