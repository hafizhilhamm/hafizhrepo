;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::OmnivisionInfo)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'OmnivisionInfo (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::OMNIVISIONINFO")
  (make-package "FUKURO_COMMON::OMNIVISIONINFO"))

(in-package "ROS")
;;//! \htmlinclude OmnivisionInfo.msg.html


(defclass fukuro_common::OmnivisionInfo
  :super ros::object
  :slots (_local_ball _ball_visible _local_obstacle _obs_visible _robot_friend_pos _friend_visible ))

(defmethod fukuro_common::OmnivisionInfo
  (:init
   (&key
    ((:local_ball __local_ball) (instance fukuro_common::Point2d :init))
    ((:ball_visible __ball_visible) nil)
    ((:local_obstacle __local_obstacle) (instance fukuro_common::Point2d :init))
    ((:obs_visible __obs_visible) nil)
    ((:robot_friend_pos __robot_friend_pos) (instance fukuro_common::Point2d :init))
    ((:friend_visible __friend_visible) nil)
    )
   (send-super :init)
   (setq _local_ball __local_ball)
   (setq _ball_visible __ball_visible)
   (setq _local_obstacle __local_obstacle)
   (setq _obs_visible __obs_visible)
   (setq _robot_friend_pos __robot_friend_pos)
   (setq _friend_visible __friend_visible)
   self)
  (:local_ball
   (&rest __local_ball)
   (if (keywordp (car __local_ball))
       (send* _local_ball __local_ball)
     (progn
       (if __local_ball (setq _local_ball (car __local_ball)))
       _local_ball)))
  (:ball_visible
   (&optional (__ball_visible :null))
   (if (not (eq __ball_visible :null)) (setq _ball_visible __ball_visible)) _ball_visible)
  (:local_obstacle
   (&rest __local_obstacle)
   (if (keywordp (car __local_obstacle))
       (send* _local_obstacle __local_obstacle)
     (progn
       (if __local_obstacle (setq _local_obstacle (car __local_obstacle)))
       _local_obstacle)))
  (:obs_visible
   (&optional (__obs_visible :null))
   (if (not (eq __obs_visible :null)) (setq _obs_visible __obs_visible)) _obs_visible)
  (:robot_friend_pos
   (&rest __robot_friend_pos)
   (if (keywordp (car __robot_friend_pos))
       (send* _robot_friend_pos __robot_friend_pos)
     (progn
       (if __robot_friend_pos (setq _robot_friend_pos (car __robot_friend_pos)))
       _robot_friend_pos)))
  (:friend_visible
   (&optional (__friend_visible :null))
   (if (not (eq __friend_visible :null)) (setq _friend_visible __friend_visible)) _friend_visible)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Point2d _local_ball
    (send _local_ball :serialization-length)
    ;; bool _ball_visible
    1
    ;; fukuro_common/Point2d _local_obstacle
    (send _local_obstacle :serialization-length)
    ;; bool _obs_visible
    1
    ;; fukuro_common/Point2d _robot_friend_pos
    (send _robot_friend_pos :serialization-length)
    ;; bool _friend_visible
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Point2d _local_ball
       (send _local_ball :serialize s)
     ;; bool _ball_visible
       (if _ball_visible (write-byte -1 s) (write-byte 0 s))
     ;; fukuro_common/Point2d _local_obstacle
       (send _local_obstacle :serialize s)
     ;; bool _obs_visible
       (if _obs_visible (write-byte -1 s) (write-byte 0 s))
     ;; fukuro_common/Point2d _robot_friend_pos
       (send _robot_friend_pos :serialize s)
     ;; bool _friend_visible
       (if _friend_visible (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Point2d _local_ball
     (send _local_ball :deserialize buf ptr-) (incf ptr- (send _local_ball :serialization-length))
   ;; bool _ball_visible
     (setq _ball_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; fukuro_common/Point2d _local_obstacle
     (send _local_obstacle :deserialize buf ptr-) (incf ptr- (send _local_obstacle :serialization-length))
   ;; bool _obs_visible
     (setq _obs_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; fukuro_common/Point2d _robot_friend_pos
     (send _robot_friend_pos :deserialize buf ptr-) (incf ptr- (send _robot_friend_pos :serialization-length))
   ;; bool _friend_visible
     (setq _friend_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::OmnivisionInfo :md5sum-) "fba85346654e08337110412dda45e35e")
(setf (get fukuro_common::OmnivisionInfo :datatype-) "fukuro_common/OmnivisionInfo")
(setf (get fukuro_common::OmnivisionInfo :definition-)
      "Point2d local_ball
bool ball_visible
Point2d local_obstacle
bool obs_visible
Point2d robot_friend_pos
bool friend_visible
================================================================================
MSG: fukuro_common/Point2d
float64 x
float64 y
")



(provide :fukuro_common/OmnivisionInfo "fba85346654e08337110412dda45e35e")


