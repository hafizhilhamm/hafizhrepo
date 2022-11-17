;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Shoot)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Shoot (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::SHOOT")
  (make-package "FUKURO_COMMON::SHOOT"))
(unless (find-package "FUKURO_COMMON::SHOOTREQUEST")
  (make-package "FUKURO_COMMON::SHOOTREQUEST"))
(unless (find-package "FUKURO_COMMON::SHOOTRESPONSE")
  (make-package "FUKURO_COMMON::SHOOTRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::ShootRequest
  :super ros::object
  :slots (_kick_request ))

(defmethod fukuro_common::ShootRequest
  (:init
   (&key
    ((:kick_request __kick_request) 0)
    )
   (send-super :init)
   (setq _kick_request (round __kick_request))
   self)
  (:kick_request
   (&optional __kick_request)
   (if __kick_request (setq _kick_request __kick_request)) _kick_request)
  (:serialization-length
   ()
   (+
    ;; uint8 _kick_request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _kick_request
       (write-byte _kick_request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _kick_request
     (setq _kick_request (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::ShootResponse
  :super ros::object
  :slots (_ShootIsDone ))

(defmethod fukuro_common::ShootResponse
  (:init
   (&key
    ((:ShootIsDone __ShootIsDone) 0)
    )
   (send-super :init)
   (setq _ShootIsDone (round __ShootIsDone))
   self)
  (:ShootIsDone
   (&optional __ShootIsDone)
   (if __ShootIsDone (setq _ShootIsDone __ShootIsDone)) _ShootIsDone)
  (:serialization-length
   ()
   (+
    ;; int64 _ShootIsDone
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ShootIsDone
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ShootIsDone (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ShootIsDone) (= (length (_ShootIsDone . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ShootIsDone . bv) 0) 0) s)
              (write-long (ash (elt (_ShootIsDone . bv) 1) -1) s))
             ((and (class _ShootIsDone) (= (length (_ShootIsDone . bv)) 1)) ;; big1
              (write-long (elt (_ShootIsDone . bv) 0) s)
              (write-long (if (>= _ShootIsDone 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ShootIsDone s)(write-long (if (>= _ShootIsDone 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ShootIsDone
#+(or :alpha :irix6 :x86_64)
      (setf _ShootIsDone (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ShootIsDone (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass fukuro_common::Shoot
  :super ros::object
  :slots ())

(setf (get fukuro_common::Shoot :md5sum-) "c7b38c0c0be888bcdb354036efad0022")
(setf (get fukuro_common::Shoot :datatype-) "fukuro_common/Shoot")
(setf (get fukuro_common::Shoot :request) fukuro_common::ShootRequest)
(setf (get fukuro_common::Shoot :response) fukuro_common::ShootResponse)

(defmethod fukuro_common::ShootRequest
  (:response () (instance fukuro_common::ShootResponse :init)))

(setf (get fukuro_common::ShootRequest :md5sum-) "c7b38c0c0be888bcdb354036efad0022")
(setf (get fukuro_common::ShootRequest :datatype-) "fukuro_common/ShootRequest")
(setf (get fukuro_common::ShootRequest :definition-)
      "uint8 kick_request
---
int64 ShootIsDone
")

(setf (get fukuro_common::ShootResponse :md5sum-) "c7b38c0c0be888bcdb354036efad0022")
(setf (get fukuro_common::ShootResponse :datatype-) "fukuro_common/ShootResponse")
(setf (get fukuro_common::ShootResponse :definition-)
      "uint8 kick_request
---
int64 ShootIsDone
")



(provide :fukuro_common/Shoot "c7b38c0c0be888bcdb354036efad0022")


