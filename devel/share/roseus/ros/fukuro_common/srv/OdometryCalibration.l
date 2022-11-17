;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::OdometryCalibration)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'OdometryCalibration (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ODOMETRYCALIBRATION")
  (make-package "FUKURO_COMMON::ODOMETRYCALIBRATION"))
(unless (find-package "FUKURO_COMMON::ODOMETRYCALIBRATIONREQUEST")
  (make-package "FUKURO_COMMON::ODOMETRYCALIBRATIONREQUEST"))
(unless (find-package "FUKURO_COMMON::ODOMETRYCALIBRATIONRESPONSE")
  (make-package "FUKURO_COMMON::ODOMETRYCALIBRATIONRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::OdometryCalibrationRequest
  :super ros::object
  :slots (_kx _ky _kw ))

(defmethod fukuro_common::OdometryCalibrationRequest
  (:init
   (&key
    ((:kx __kx) 0.0)
    ((:ky __ky) 0.0)
    ((:kw __kw) 0.0)
    )
   (send-super :init)
   (setq _kx (float __kx))
   (setq _ky (float __ky))
   (setq _kw (float __kw))
   self)
  (:kx
   (&optional __kx)
   (if __kx (setq _kx __kx)) _kx)
  (:ky
   (&optional __ky)
   (if __ky (setq _ky __ky)) _ky)
  (:kw
   (&optional __kw)
   (if __kw (setq _kw __kw)) _kw)
  (:serialization-length
   ()
   (+
    ;; float64 _kx
    8
    ;; float64 _ky
    8
    ;; float64 _kw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _kx
       (sys::poke _kx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ky
       (sys::poke _ky (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kw
       (sys::poke _kw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _kx
     (setq _kx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ky
     (setq _ky (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kw
     (setq _kw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fukuro_common::OdometryCalibrationResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::OdometryCalibrationResponse
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

(defclass fukuro_common::OdometryCalibration
  :super ros::object
  :slots ())

(setf (get fukuro_common::OdometryCalibration :md5sum-) "ebc612ce0a9b4b65aa74121fecb4e9f3")
(setf (get fukuro_common::OdometryCalibration :datatype-) "fukuro_common/OdometryCalibration")
(setf (get fukuro_common::OdometryCalibration :request) fukuro_common::OdometryCalibrationRequest)
(setf (get fukuro_common::OdometryCalibration :response) fukuro_common::OdometryCalibrationResponse)

(defmethod fukuro_common::OdometryCalibrationRequest
  (:response () (instance fukuro_common::OdometryCalibrationResponse :init)))

(setf (get fukuro_common::OdometryCalibrationRequest :md5sum-) "ebc612ce0a9b4b65aa74121fecb4e9f3")
(setf (get fukuro_common::OdometryCalibrationRequest :datatype-) "fukuro_common/OdometryCalibrationRequest")
(setf (get fukuro_common::OdometryCalibrationRequest :definition-)
      "float64 kx
float64 ky
float64 kw
---
int64 ok
")

(setf (get fukuro_common::OdometryCalibrationResponse :md5sum-) "ebc612ce0a9b4b65aa74121fecb4e9f3")
(setf (get fukuro_common::OdometryCalibrationResponse :datatype-) "fukuro_common/OdometryCalibrationResponse")
(setf (get fukuro_common::OdometryCalibrationResponse :definition-)
      "float64 kx
float64 ky
float64 kw
---
int64 ok
")



(provide :fukuro_common/OdometryCalibration "ebc612ce0a9b4b65aa74121fecb4e9f3")


