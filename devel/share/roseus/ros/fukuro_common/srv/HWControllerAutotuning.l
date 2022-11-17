;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWControllerAutotuning)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWControllerAutotuning (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERAUTOTUNING")
  (make-package "FUKURO_COMMON::HWCONTROLLERAUTOTUNING"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERAUTOTUNINGREQUEST")
  (make-package "FUKURO_COMMON::HWCONTROLLERAUTOTUNINGREQUEST"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERAUTOTUNINGRESPONSE")
  (make-package "FUKURO_COMMON::HWCONTROLLERAUTOTUNINGRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::HWControllerAutotuningRequest
  :super ros::object
  :slots (_setpoint ))

(defmethod fukuro_common::HWControllerAutotuningRequest
  (:init
   (&key
    ((:setpoint __setpoint) 0.0)
    )
   (send-super :init)
   (setq _setpoint (float __setpoint))
   self)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:serialization-length
   ()
   (+
    ;; float64 _setpoint
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _setpoint
       (sys::poke _setpoint (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _setpoint
     (setq _setpoint (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fukuro_common::HWControllerAutotuningResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::HWControllerAutotuningResponse
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

(defclass fukuro_common::HWControllerAutotuning
  :super ros::object
  :slots ())

(setf (get fukuro_common::HWControllerAutotuning :md5sum-) "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(setf (get fukuro_common::HWControllerAutotuning :datatype-) "fukuro_common/HWControllerAutotuning")
(setf (get fukuro_common::HWControllerAutotuning :request) fukuro_common::HWControllerAutotuningRequest)
(setf (get fukuro_common::HWControllerAutotuning :response) fukuro_common::HWControllerAutotuningResponse)

(defmethod fukuro_common::HWControllerAutotuningRequest
  (:response () (instance fukuro_common::HWControllerAutotuningResponse :init)))

(setf (get fukuro_common::HWControllerAutotuningRequest :md5sum-) "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(setf (get fukuro_common::HWControllerAutotuningRequest :datatype-) "fukuro_common/HWControllerAutotuningRequest")
(setf (get fukuro_common::HWControllerAutotuningRequest :definition-)
      "float64 setpoint
---
int64 ok

")

(setf (get fukuro_common::HWControllerAutotuningResponse :md5sum-) "0f32fea8c4ca87c8aabb5a11fa7acb8a")
(setf (get fukuro_common::HWControllerAutotuningResponse :datatype-) "fukuro_common/HWControllerAutotuningResponse")
(setf (get fukuro_common::HWControllerAutotuningResponse :definition-)
      "float64 setpoint
---
int64 ok

")



(provide :fukuro_common/HWControllerAutotuning "0f32fea8c4ca87c8aabb5a11fa7acb8a")


