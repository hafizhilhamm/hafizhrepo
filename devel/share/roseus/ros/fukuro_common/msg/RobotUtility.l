;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::RobotUtility)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'RobotUtility (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ROBOTUTILITY")
  (make-package "FUKURO_COMMON::ROBOTUTILITY"))

(in-package "ROS")
;;//! \htmlinclude RobotUtility.msg.html


(defclass fukuro_common::RobotUtility
  :super ros::object
  :slots (_ball_engage _collision _ready_kick ))

(defmethod fukuro_common::RobotUtility
  (:init
   (&key
    ((:ball_engage __ball_engage) nil)
    ((:collision __collision) nil)
    ((:ready_kick __ready_kick) nil)
    )
   (send-super :init)
   (setq _ball_engage __ball_engage)
   (setq _collision __collision)
   (setq _ready_kick __ready_kick)
   self)
  (:ball_engage
   (&optional (__ball_engage :null))
   (if (not (eq __ball_engage :null)) (setq _ball_engage __ball_engage)) _ball_engage)
  (:collision
   (&optional (__collision :null))
   (if (not (eq __collision :null)) (setq _collision __collision)) _collision)
  (:ready_kick
   (&optional (__ready_kick :null))
   (if (not (eq __ready_kick :null)) (setq _ready_kick __ready_kick)) _ready_kick)
  (:serialization-length
   ()
   (+
    ;; bool _ball_engage
    1
    ;; bool _collision
    1
    ;; bool _ready_kick
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ball_engage
       (if _ball_engage (write-byte -1 s) (write-byte 0 s))
     ;; bool _collision
       (if _collision (write-byte -1 s) (write-byte 0 s))
     ;; bool _ready_kick
       (if _ready_kick (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ball_engage
     (setq _ball_engage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _collision
     (setq _collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready_kick
     (setq _ready_kick (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::RobotUtility :md5sum-) "06d17b852ebfd0c52f93f85e39a6a1ce")
(setf (get fukuro_common::RobotUtility :datatype-) "fukuro_common/RobotUtility")
(setf (get fukuro_common::RobotUtility :definition-)
      "bool ball_engage
bool collision
bool ready_kick
")



(provide :fukuro_common/RobotUtility "06d17b852ebfd0c52f93f85e39a6a1ce")


