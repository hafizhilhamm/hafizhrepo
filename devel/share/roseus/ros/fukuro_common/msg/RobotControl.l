;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::RobotControl)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'RobotControl (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ROBOTCONTROL")
  (make-package "FUKURO_COMMON::ROBOTCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RobotControl.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fukuro_common::RobotControl
  :super ros::object
  :slots (_target_pose _option _control _dribbler_speed _plan _approach_ball _motor_brake _absolute_move ))

(defmethod fukuro_common::RobotControl
  (:init
   (&key
    ((:target_pose __target_pose) (instance geometry_msgs::Pose2D :init))
    ((:option __option) (instance std_msgs::String :init))
    ((:control __control) (instance std_msgs::String :init))
    ((:dribbler_speed __dribbler_speed) 0.0)
    ((:plan __plan) nil)
    ((:approach_ball __approach_ball) nil)
    ((:motor_brake __motor_brake) nil)
    ((:absolute_move __absolute_move) nil)
    )
   (send-super :init)
   (setq _target_pose __target_pose)
   (setq _option __option)
   (setq _control __control)
   (setq _dribbler_speed (float __dribbler_speed))
   (setq _plan __plan)
   (setq _approach_ball __approach_ball)
   (setq _motor_brake __motor_brake)
   (setq _absolute_move __absolute_move)
   self)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:option
   (&rest __option)
   (if (keywordp (car __option))
       (send* _option __option)
     (progn
       (if __option (setq _option (car __option)))
       _option)))
  (:control
   (&rest __control)
   (if (keywordp (car __control))
       (send* _control __control)
     (progn
       (if __control (setq _control (car __control)))
       _control)))
  (:dribbler_speed
   (&optional __dribbler_speed)
   (if __dribbler_speed (setq _dribbler_speed __dribbler_speed)) _dribbler_speed)
  (:plan
   (&optional (__plan :null))
   (if (not (eq __plan :null)) (setq _plan __plan)) _plan)
  (:approach_ball
   (&optional (__approach_ball :null))
   (if (not (eq __approach_ball :null)) (setq _approach_ball __approach_ball)) _approach_ball)
  (:motor_brake
   (&optional (__motor_brake :null))
   (if (not (eq __motor_brake :null)) (setq _motor_brake __motor_brake)) _motor_brake)
  (:absolute_move
   (&optional (__absolute_move :null))
   (if (not (eq __absolute_move :null)) (setq _absolute_move __absolute_move)) _absolute_move)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _target_pose
    (send _target_pose :serialization-length)
    ;; std_msgs/String _option
    (send _option :serialization-length)
    ;; std_msgs/String _control
    (send _control :serialization-length)
    ;; float64 _dribbler_speed
    8
    ;; bool _plan
    1
    ;; bool _approach_ball
    1
    ;; bool _motor_brake
    1
    ;; bool _absolute_move
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _target_pose
       (send _target_pose :serialize s)
     ;; std_msgs/String _option
       (send _option :serialize s)
     ;; std_msgs/String _control
       (send _control :serialize s)
     ;; float64 _dribbler_speed
       (sys::poke _dribbler_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _plan
       (if _plan (write-byte -1 s) (write-byte 0 s))
     ;; bool _approach_ball
       (if _approach_ball (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_brake
       (if _motor_brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _absolute_move
       (if _absolute_move (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; std_msgs/String _option
     (send _option :deserialize buf ptr-) (incf ptr- (send _option :serialization-length))
   ;; std_msgs/String _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;; float64 _dribbler_speed
     (setq _dribbler_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _plan
     (setq _plan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _approach_ball
     (setq _approach_ball (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_brake
     (setq _motor_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _absolute_move
     (setq _absolute_move (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::RobotControl :md5sum-) "d1cd8f601a5db7d70afbd3196ead46cf")
(setf (get fukuro_common::RobotControl :datatype-) "fukuro_common/RobotControl")
(setf (get fukuro_common::RobotControl :definition-)
      "geometry_msgs/Pose2D target_pose
std_msgs/String option
std_msgs/String control
float64 dribbler_speed
bool plan
bool approach_ball
bool motor_brake
bool absolute_move
================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: std_msgs/String
string data

")



(provide :fukuro_common/RobotControl "d1cd8f601a5db7d70afbd3196ead46cf")


