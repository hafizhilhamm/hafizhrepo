;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::STMData)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'STMData (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::STMDATA")
  (make-package "FUKURO_COMMON::STMDATA"))

(in-package "ROS")
;;//! \htmlinclude STMData.msg.html


(defclass fukuro_common::STMData
  :super ros::object
  :slots (_encoder _freeenc _ready_kick _ir _garis1 _garis2 _garis3 _garis4 ))

(defmethod fukuro_common::STMData
  (:init
   (&key
    ((:encoder __encoder) (instance fukuro_common::MotorVel :init))
    ((:freeenc __freeenc) (instance fukuro_common::RobotVel :init))
    ((:ready_kick __ready_kick) nil)
    ((:ir __ir) nil)
    ((:garis1 __garis1) nil)
    ((:garis2 __garis2) nil)
    ((:garis3 __garis3) nil)
    ((:garis4 __garis4) nil)
    )
   (send-super :init)
   (setq _encoder __encoder)
   (setq _freeenc __freeenc)
   (setq _ready_kick __ready_kick)
   (setq _ir __ir)
   (setq _garis1 __garis1)
   (setq _garis2 __garis2)
   (setq _garis3 __garis3)
   (setq _garis4 __garis4)
   self)
  (:encoder
   (&rest __encoder)
   (if (keywordp (car __encoder))
       (send* _encoder __encoder)
     (progn
       (if __encoder (setq _encoder (car __encoder)))
       _encoder)))
  (:freeenc
   (&rest __freeenc)
   (if (keywordp (car __freeenc))
       (send* _freeenc __freeenc)
     (progn
       (if __freeenc (setq _freeenc (car __freeenc)))
       _freeenc)))
  (:ready_kick
   (&optional (__ready_kick :null))
   (if (not (eq __ready_kick :null)) (setq _ready_kick __ready_kick)) _ready_kick)
  (:ir
   (&optional (__ir :null))
   (if (not (eq __ir :null)) (setq _ir __ir)) _ir)
  (:garis1
   (&optional (__garis1 :null))
   (if (not (eq __garis1 :null)) (setq _garis1 __garis1)) _garis1)
  (:garis2
   (&optional (__garis2 :null))
   (if (not (eq __garis2 :null)) (setq _garis2 __garis2)) _garis2)
  (:garis3
   (&optional (__garis3 :null))
   (if (not (eq __garis3 :null)) (setq _garis3 __garis3)) _garis3)
  (:garis4
   (&optional (__garis4 :null))
   (if (not (eq __garis4 :null)) (setq _garis4 __garis4)) _garis4)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/MotorVel _encoder
    (send _encoder :serialization-length)
    ;; fukuro_common/RobotVel _freeenc
    (send _freeenc :serialization-length)
    ;; bool _ready_kick
    1
    ;; bool _ir
    1
    ;; bool _garis1
    1
    ;; bool _garis2
    1
    ;; bool _garis3
    1
    ;; bool _garis4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/MotorVel _encoder
       (send _encoder :serialize s)
     ;; fukuro_common/RobotVel _freeenc
       (send _freeenc :serialize s)
     ;; bool _ready_kick
       (if _ready_kick (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir
       (if _ir (write-byte -1 s) (write-byte 0 s))
     ;; bool _garis1
       (if _garis1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _garis2
       (if _garis2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _garis3
       (if _garis3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _garis4
       (if _garis4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/MotorVel _encoder
     (send _encoder :deserialize buf ptr-) (incf ptr- (send _encoder :serialization-length))
   ;; fukuro_common/RobotVel _freeenc
     (send _freeenc :deserialize buf ptr-) (incf ptr- (send _freeenc :serialization-length))
   ;; bool _ready_kick
     (setq _ready_kick (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir
     (setq _ir (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _garis1
     (setq _garis1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _garis2
     (setq _garis2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _garis3
     (setq _garis3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _garis4
     (setq _garis4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::STMData :md5sum-) "1f74160987d11b971db5bf3af08f3ce7")
(setf (get fukuro_common::STMData :datatype-) "fukuro_common/STMData")
(setf (get fukuro_common::STMData :definition-)
      "MotorVel encoder
RobotVel freeenc
bool ready_kick
bool ir
bool garis1
bool garis2
bool garis3
bool garis4
================================================================================
MSG: fukuro_common/MotorVel
float32 m1
float32 m2
float32 m3
================================================================================
MSG: fukuro_common/RobotVel
float32 free1
float32 free2
float32 free3
")



(provide :fukuro_common/STMData "1f74160987d11b971db5bf3af08f3ce7")


