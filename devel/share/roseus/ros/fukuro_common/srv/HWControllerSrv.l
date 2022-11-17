;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWControllerSrv)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWControllerSrv (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERSRV")
  (make-package "FUKURO_COMMON::HWCONTROLLERSRV"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERSRVREQUEST")
  (make-package "FUKURO_COMMON::HWCONTROLLERSRVREQUEST"))
(unless (find-package "FUKURO_COMMON::HWCONTROLLERSRVRESPONSE")
  (make-package "FUKURO_COMMON::HWCONTROLLERSRVRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::HWControllerSrvRequest
  :super ros::object
  :slots (_refresh _STMConnect _isSTM _ArduinoConnect _isArduino _Compass ))

(defmethod fukuro_common::HWControllerSrvRequest
  (:init
   (&key
    ((:refresh __refresh) 0)
    ((:STMConnect __STMConnect) 0)
    ((:isSTM __isSTM) 0)
    ((:ArduinoConnect __ArduinoConnect) 0)
    ((:isArduino __isArduino) 0)
    ((:Compass __Compass) (instance fukuro_common::Compass :init))
    )
   (send-super :init)
   (setq _refresh (round __refresh))
   (setq _STMConnect (round __STMConnect))
   (setq _isSTM (round __isSTM))
   (setq _ArduinoConnect (round __ArduinoConnect))
   (setq _isArduino (round __isArduino))
   (setq _Compass __Compass)
   self)
  (:refresh
   (&optional __refresh)
   (if __refresh (setq _refresh __refresh)) _refresh)
  (:STMConnect
   (&optional __STMConnect)
   (if __STMConnect (setq _STMConnect __STMConnect)) _STMConnect)
  (:isSTM
   (&optional __isSTM)
   (if __isSTM (setq _isSTM __isSTM)) _isSTM)
  (:ArduinoConnect
   (&optional __ArduinoConnect)
   (if __ArduinoConnect (setq _ArduinoConnect __ArduinoConnect)) _ArduinoConnect)
  (:isArduino
   (&optional __isArduino)
   (if __isArduino (setq _isArduino __isArduino)) _isArduino)
  (:Compass
   (&rest __Compass)
   (if (keywordp (car __Compass))
       (send* _Compass __Compass)
     (progn
       (if __Compass (setq _Compass (car __Compass)))
       _Compass)))
  (:serialization-length
   ()
   (+
    ;; uint8 _refresh
    1
    ;; int64 _STMConnect
    8
    ;; uint8 _isSTM
    1
    ;; int64 _ArduinoConnect
    8
    ;; uint8 _isArduino
    1
    ;; fukuro_common/Compass _Compass
    (send _Compass :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _refresh
       (write-byte _refresh s)
     ;; int64 _STMConnect
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _STMConnect (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _STMConnect) (= (length (_STMConnect . bv)) 2)) ;; bignum
              (write-long (ash (elt (_STMConnect . bv) 0) 0) s)
              (write-long (ash (elt (_STMConnect . bv) 1) -1) s))
             ((and (class _STMConnect) (= (length (_STMConnect . bv)) 1)) ;; big1
              (write-long (elt (_STMConnect . bv) 0) s)
              (write-long (if (>= _STMConnect 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _STMConnect s)(write-long (if (>= _STMConnect 0) 0 #xffffffff) s)))
     ;; uint8 _isSTM
       (write-byte _isSTM s)
     ;; int64 _ArduinoConnect
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ArduinoConnect (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ArduinoConnect) (= (length (_ArduinoConnect . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ArduinoConnect . bv) 0) 0) s)
              (write-long (ash (elt (_ArduinoConnect . bv) 1) -1) s))
             ((and (class _ArduinoConnect) (= (length (_ArduinoConnect . bv)) 1)) ;; big1
              (write-long (elt (_ArduinoConnect . bv) 0) s)
              (write-long (if (>= _ArduinoConnect 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ArduinoConnect s)(write-long (if (>= _ArduinoConnect 0) 0 #xffffffff) s)))
     ;; uint8 _isArduino
       (write-byte _isArduino s)
     ;; fukuro_common/Compass _Compass
       (send _Compass :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _refresh
     (setq _refresh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _STMConnect
#+(or :alpha :irix6 :x86_64)
      (setf _STMConnect (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _STMConnect (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _isSTM
     (setq _isSTM (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _ArduinoConnect
#+(or :alpha :irix6 :x86_64)
      (setf _ArduinoConnect (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ArduinoConnect (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _isArduino
     (setq _isArduino (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; fukuro_common/Compass _Compass
     (send _Compass :deserialize buf ptr-) (incf ptr- (send _Compass :serialization-length))
   ;;
   self)
  )

(defclass fukuro_common::HWControllerSrvResponse
  :super ros::object
  :slots (_port_list _manufacturer_list _STMSuccess _ArduinoSuccess _Compassuccess ))

(defmethod fukuro_common::HWControllerSrvResponse
  (:init
   (&key
    ((:port_list __port_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:manufacturer_list __manufacturer_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:STMSuccess __STMSuccess) 0)
    ((:ArduinoSuccess __ArduinoSuccess) 0)
    ((:Compassuccess __Compassuccess) 0)
    )
   (send-super :init)
   (setq _port_list __port_list)
   (setq _manufacturer_list __manufacturer_list)
   (setq _STMSuccess (round __STMSuccess))
   (setq _ArduinoSuccess (round __ArduinoSuccess))
   (setq _Compassuccess (round __Compassuccess))
   self)
  (:port_list
   (&optional __port_list)
   (if __port_list (setq _port_list __port_list)) _port_list)
  (:manufacturer_list
   (&optional __manufacturer_list)
   (if __manufacturer_list (setq _manufacturer_list __manufacturer_list)) _manufacturer_list)
  (:STMSuccess
   (&optional __STMSuccess)
   (if __STMSuccess (setq _STMSuccess __STMSuccess)) _STMSuccess)
  (:ArduinoSuccess
   (&optional __ArduinoSuccess)
   (if __ArduinoSuccess (setq _ArduinoSuccess __ArduinoSuccess)) _ArduinoSuccess)
  (:Compassuccess
   (&optional __Compassuccess)
   (if __Compassuccess (setq _Compassuccess __Compassuccess)) _Compassuccess)
  (:serialization-length
   ()
   (+
    ;; string[] _port_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _port_list)) 4
    ;; string[] _manufacturer_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _manufacturer_list)) 4
    ;; uint8 _STMSuccess
    1
    ;; uint8 _ArduinoSuccess
    1
    ;; uint8 _Compassuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _port_list
     (write-long (length _port_list) s)
     (dolist (elem _port_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _manufacturer_list
     (write-long (length _manufacturer_list) s)
     (dolist (elem _manufacturer_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint8 _STMSuccess
       (write-byte _STMSuccess s)
     ;; uint8 _ArduinoSuccess
       (write-byte _ArduinoSuccess s)
     ;; uint8 _Compassuccess
       (write-byte _Compassuccess s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _port_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _port_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _port_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _manufacturer_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _manufacturer_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _manufacturer_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint8 _STMSuccess
     (setq _STMSuccess (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ArduinoSuccess
     (setq _ArduinoSuccess (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Compassuccess
     (setq _Compassuccess (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::HWControllerSrv
  :super ros::object
  :slots ())

(setf (get fukuro_common::HWControllerSrv :md5sum-) "3d5c94862d83cd0042f79f7755128b97")
(setf (get fukuro_common::HWControllerSrv :datatype-) "fukuro_common/HWControllerSrv")
(setf (get fukuro_common::HWControllerSrv :request) fukuro_common::HWControllerSrvRequest)
(setf (get fukuro_common::HWControllerSrv :response) fukuro_common::HWControllerSrvResponse)

(defmethod fukuro_common::HWControllerSrvRequest
  (:response () (instance fukuro_common::HWControllerSrvResponse :init)))

(setf (get fukuro_common::HWControllerSrvRequest :md5sum-) "3d5c94862d83cd0042f79f7755128b97")
(setf (get fukuro_common::HWControllerSrvRequest :datatype-) "fukuro_common/HWControllerSrvRequest")
(setf (get fukuro_common::HWControllerSrvRequest :definition-)
      "uint8 refresh
int64 STMConnect
uint8 isSTM
int64 ArduinoConnect
uint8 isArduino
Compass Compass

================================================================================
MSG: fukuro_common/Compass
---
string[] port_list
string[] manufacturer_list
uint8 STMSuccess
uint8 ArduinoSuccess
uint8 Compassuccess
")

(setf (get fukuro_common::HWControllerSrvResponse :md5sum-) "3d5c94862d83cd0042f79f7755128b97")
(setf (get fukuro_common::HWControllerSrvResponse :datatype-) "fukuro_common/HWControllerSrvResponse")
(setf (get fukuro_common::HWControllerSrvResponse :definition-)
      "uint8 refresh
int64 STMConnect
uint8 isSTM
int64 ArduinoConnect
uint8 isArduino
Compass Compass

================================================================================
MSG: fukuro_common/Compass
---
string[] port_list
string[] manufacturer_list
uint8 STMSuccess
uint8 ArduinoSuccess
uint8 Compassuccess
")



(provide :fukuro_common/HWControllerSrv "3d5c94862d83cd0042f79f7755128b97")


