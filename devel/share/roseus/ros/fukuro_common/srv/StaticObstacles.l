;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::StaticObstacles)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'StaticObstacles (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::STATICOBSTACLES")
  (make-package "FUKURO_COMMON::STATICOBSTACLES"))
(unless (find-package "FUKURO_COMMON::STATICOBSTACLESREQUEST")
  (make-package "FUKURO_COMMON::STATICOBSTACLESREQUEST"))
(unless (find-package "FUKURO_COMMON::STATICOBSTACLESRESPONSE")
  (make-package "FUKURO_COMMON::STATICOBSTACLESRESPONSE"))

(in-package "ROS")





(defclass fukuro_common::StaticObstaclesRequest
  :super ros::object
  :slots (_obstacle1 _obstacle2 _obstacle3 _obstacle4 _obstacle5 _obstacle6 _obstacle7 _obstacle8 _obstacle_kiper ))

(defmethod fukuro_common::StaticObstaclesRequest
  (:init
   (&key
    ((:obstacle1 __obstacle1) nil)
    ((:obstacle2 __obstacle2) nil)
    ((:obstacle3 __obstacle3) nil)
    ((:obstacle4 __obstacle4) nil)
    ((:obstacle5 __obstacle5) nil)
    ((:obstacle6 __obstacle6) nil)
    ((:obstacle7 __obstacle7) nil)
    ((:obstacle8 __obstacle8) nil)
    ((:obstacle_kiper __obstacle_kiper) nil)
    )
   (send-super :init)
   (setq _obstacle1 __obstacle1)
   (setq _obstacle2 __obstacle2)
   (setq _obstacle3 __obstacle3)
   (setq _obstacle4 __obstacle4)
   (setq _obstacle5 __obstacle5)
   (setq _obstacle6 __obstacle6)
   (setq _obstacle7 __obstacle7)
   (setq _obstacle8 __obstacle8)
   (setq _obstacle_kiper __obstacle_kiper)
   self)
  (:obstacle1
   (&optional (__obstacle1 :null))
   (if (not (eq __obstacle1 :null)) (setq _obstacle1 __obstacle1)) _obstacle1)
  (:obstacle2
   (&optional (__obstacle2 :null))
   (if (not (eq __obstacle2 :null)) (setq _obstacle2 __obstacle2)) _obstacle2)
  (:obstacle3
   (&optional (__obstacle3 :null))
   (if (not (eq __obstacle3 :null)) (setq _obstacle3 __obstacle3)) _obstacle3)
  (:obstacle4
   (&optional (__obstacle4 :null))
   (if (not (eq __obstacle4 :null)) (setq _obstacle4 __obstacle4)) _obstacle4)
  (:obstacle5
   (&optional (__obstacle5 :null))
   (if (not (eq __obstacle5 :null)) (setq _obstacle5 __obstacle5)) _obstacle5)
  (:obstacle6
   (&optional (__obstacle6 :null))
   (if (not (eq __obstacle6 :null)) (setq _obstacle6 __obstacle6)) _obstacle6)
  (:obstacle7
   (&optional (__obstacle7 :null))
   (if (not (eq __obstacle7 :null)) (setq _obstacle7 __obstacle7)) _obstacle7)
  (:obstacle8
   (&optional (__obstacle8 :null))
   (if (not (eq __obstacle8 :null)) (setq _obstacle8 __obstacle8)) _obstacle8)
  (:obstacle_kiper
   (&optional (__obstacle_kiper :null))
   (if (not (eq __obstacle_kiper :null)) (setq _obstacle_kiper __obstacle_kiper)) _obstacle_kiper)
  (:serialization-length
   ()
   (+
    ;; bool _obstacle1
    1
    ;; bool _obstacle2
    1
    ;; bool _obstacle3
    1
    ;; bool _obstacle4
    1
    ;; bool _obstacle5
    1
    ;; bool _obstacle6
    1
    ;; bool _obstacle7
    1
    ;; bool _obstacle8
    1
    ;; bool _obstacle_kiper
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _obstacle1
       (if _obstacle1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle2
       (if _obstacle2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle3
       (if _obstacle3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle4
       (if _obstacle4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle5
       (if _obstacle5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle6
       (if _obstacle6 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle7
       (if _obstacle7 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle8
       (if _obstacle8 (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle_kiper
       (if _obstacle_kiper (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _obstacle1
     (setq _obstacle1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle2
     (setq _obstacle2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle3
     (setq _obstacle3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle4
     (setq _obstacle4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle5
     (setq _obstacle5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle6
     (setq _obstacle6 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle7
     (setq _obstacle7 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle8
     (setq _obstacle8 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle_kiper
     (setq _obstacle_kiper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fukuro_common::StaticObstaclesResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::StaticObstaclesResponse
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

(defclass fukuro_common::StaticObstacles
  :super ros::object
  :slots ())

(setf (get fukuro_common::StaticObstacles :md5sum-) "d9e5d5b887b6aabe5a57861e1897da91")
(setf (get fukuro_common::StaticObstacles :datatype-) "fukuro_common/StaticObstacles")
(setf (get fukuro_common::StaticObstacles :request) fukuro_common::StaticObstaclesRequest)
(setf (get fukuro_common::StaticObstacles :response) fukuro_common::StaticObstaclesResponse)

(defmethod fukuro_common::StaticObstaclesRequest
  (:response () (instance fukuro_common::StaticObstaclesResponse :init)))

(setf (get fukuro_common::StaticObstaclesRequest :md5sum-) "d9e5d5b887b6aabe5a57861e1897da91")
(setf (get fukuro_common::StaticObstaclesRequest :datatype-) "fukuro_common/StaticObstaclesRequest")
(setf (get fukuro_common::StaticObstaclesRequest :definition-)
      "bool obstacle1
bool obstacle2
bool obstacle3
bool obstacle4
bool obstacle5
bool obstacle6
bool obstacle7
bool obstacle8
bool obstacle_kiper
---
uint8 ok

")

(setf (get fukuro_common::StaticObstaclesResponse :md5sum-) "d9e5d5b887b6aabe5a57861e1897da91")
(setf (get fukuro_common::StaticObstaclesResponse :datatype-) "fukuro_common/StaticObstaclesResponse")
(setf (get fukuro_common::StaticObstaclesResponse :definition-)
      "bool obstacle1
bool obstacle2
bool obstacle3
bool obstacle4
bool obstacle5
bool obstacle6
bool obstacle7
bool obstacle8
bool obstacle_kiper
---
uint8 ok

")



(provide :fukuro_common/StaticObstacles "d9e5d5b887b6aabe5a57861e1897da91")


