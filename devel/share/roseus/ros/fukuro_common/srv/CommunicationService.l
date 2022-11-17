;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::CommunicationService)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'CommunicationService (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::COMMUNICATIONSERVICE")
  (make-package "FUKURO_COMMON::COMMUNICATIONSERVICE"))
(unless (find-package "FUKURO_COMMON::COMMUNICATIONSERVICEREQUEST")
  (make-package "FUKURO_COMMON::COMMUNICATIONSERVICEREQUEST"))
(unless (find-package "FUKURO_COMMON::COMMUNICATIONSERVICERESPONSE")
  (make-package "FUKURO_COMMON::COMMUNICATIONSERVICERESPONSE"))

(in-package "ROS")





(defclass fukuro_common::CommunicationServiceRequest
  :super ros::object
  :slots (_connect _address _tx_port _rx_port ))

(defmethod fukuro_common::CommunicationServiceRequest
  (:init
   (&key
    ((:connect __connect) 0)
    ((:address __address) "")
    ((:tx_port __tx_port) 0)
    ((:rx_port __rx_port) 0)
    )
   (send-super :init)
   (setq _connect (round __connect))
   (setq _address (string __address))
   (setq _tx_port (round __tx_port))
   (setq _rx_port (round __rx_port))
   self)
  (:connect
   (&optional __connect)
   (if __connect (setq _connect __connect)) _connect)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:tx_port
   (&optional __tx_port)
   (if __tx_port (setq _tx_port __tx_port)) _tx_port)
  (:rx_port
   (&optional __rx_port)
   (if __rx_port (setq _rx_port __rx_port)) _rx_port)
  (:serialization-length
   ()
   (+
    ;; uint8 _connect
    1
    ;; string _address
    4 (length _address)
    ;; int64 _tx_port
    8
    ;; int64 _rx_port
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _connect
       (write-byte _connect s)
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; int64 _tx_port
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tx_port (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tx_port) (= (length (_tx_port . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tx_port . bv) 0) 0) s)
              (write-long (ash (elt (_tx_port . bv) 1) -1) s))
             ((and (class _tx_port) (= (length (_tx_port . bv)) 1)) ;; big1
              (write-long (elt (_tx_port . bv) 0) s)
              (write-long (if (>= _tx_port 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tx_port s)(write-long (if (>= _tx_port 0) 0 #xffffffff) s)))
     ;; int64 _rx_port
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rx_port (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rx_port) (= (length (_rx_port . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rx_port . bv) 0) 0) s)
              (write-long (ash (elt (_rx_port . bv) 1) -1) s))
             ((and (class _rx_port) (= (length (_rx_port . bv)) 1)) ;; big1
              (write-long (elt (_rx_port . bv) 0) s)
              (write-long (if (>= _rx_port 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rx_port s)(write-long (if (>= _rx_port 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _connect
     (setq _connect (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _tx_port
#+(or :alpha :irix6 :x86_64)
      (setf _tx_port (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tx_port (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rx_port
#+(or :alpha :irix6 :x86_64)
      (setf _rx_port (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rx_port (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass fukuro_common::CommunicationServiceResponse
  :super ros::object
  :slots (_success ))

(defmethod fukuro_common::CommunicationServiceResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; uint8 _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _success
       (write-byte _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _success
     (setq _success (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::CommunicationService
  :super ros::object
  :slots ())

(setf (get fukuro_common::CommunicationService :md5sum-) "59e80fb04ed5834efebecd78c5beaed9")
(setf (get fukuro_common::CommunicationService :datatype-) "fukuro_common/CommunicationService")
(setf (get fukuro_common::CommunicationService :request) fukuro_common::CommunicationServiceRequest)
(setf (get fukuro_common::CommunicationService :response) fukuro_common::CommunicationServiceResponse)

(defmethod fukuro_common::CommunicationServiceRequest
  (:response () (instance fukuro_common::CommunicationServiceResponse :init)))

(setf (get fukuro_common::CommunicationServiceRequest :md5sum-) "59e80fb04ed5834efebecd78c5beaed9")
(setf (get fukuro_common::CommunicationServiceRequest :datatype-) "fukuro_common/CommunicationServiceRequest")
(setf (get fukuro_common::CommunicationServiceRequest :definition-)
      "uint8 connect
string address
int64 tx_port
int64 rx_port
---
uint8 success
")

(setf (get fukuro_common::CommunicationServiceResponse :md5sum-) "59e80fb04ed5834efebecd78c5beaed9")
(setf (get fukuro_common::CommunicationServiceResponse :datatype-) "fukuro_common/CommunicationServiceResponse")
(setf (get fukuro_common::CommunicationServiceResponse :definition-)
      "uint8 connect
string address
int64 tx_port
int64 rx_port
---
uint8 success
")



(provide :fukuro_common/CommunicationService "59e80fb04ed5834efebecd78c5beaed9")


