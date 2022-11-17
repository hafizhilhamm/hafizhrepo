;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::RobotControlInfo)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'RobotControlInfo (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ROBOTCONTROLINFO")
  (make-package "FUKURO_COMMON::ROBOTCONTROLINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotControlInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fukuro_common::RobotControlInfo
  :super ros::object
  :slots (_error_radius _error_angle _setpoint _plan ))

(defmethod fukuro_common::RobotControlInfo
  (:init
   (&key
    ((:error_radius __error_radius) 0.0)
    ((:error_angle __error_angle) 0.0)
    ((:setpoint __setpoint) (instance geometry_msgs::Pose2D :init))
    ((:plan __plan) nil)
    )
   (send-super :init)
   (setq _error_radius (float __error_radius))
   (setq _error_angle (float __error_angle))
   (setq _setpoint __setpoint)
   (setq _plan __plan)
   self)
  (:error_radius
   (&optional __error_radius)
   (if __error_radius (setq _error_radius __error_radius)) _error_radius)
  (:error_angle
   (&optional __error_angle)
   (if __error_angle (setq _error_angle __error_angle)) _error_angle)
  (:setpoint
   (&rest __setpoint)
   (if (keywordp (car __setpoint))
       (send* _setpoint __setpoint)
     (progn
       (if __setpoint (setq _setpoint (car __setpoint)))
       _setpoint)))
  (:plan
   (&optional (__plan :null))
   (if (not (eq __plan :null)) (setq _plan __plan)) _plan)
  (:serialization-length
   ()
   (+
    ;; float64 _error_radius
    8
    ;; float64 _error_angle
    8
    ;; geometry_msgs/Pose2D _setpoint
    (send _setpoint :serialization-length)
    ;; bool _plan
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _error_radius
       (sys::poke _error_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error_angle
       (sys::poke _error_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose2D _setpoint
       (send _setpoint :serialize s)
     ;; bool _plan
       (if _plan (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _error_radius
     (setq _error_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error_angle
     (setq _error_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose2D _setpoint
     (send _setpoint :deserialize buf ptr-) (incf ptr- (send _setpoint :serialization-length))
   ;; bool _plan
     (setq _plan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::RobotControlInfo :md5sum-) "3d219701cbb4b4f70bacc052c397c3a7")
(setf (get fukuro_common::RobotControlInfo :datatype-) "fukuro_common/RobotControlInfo")
(setf (get fukuro_common::RobotControlInfo :definition-)
      "float64 error_radius
float64 error_angle
geometry_msgs/Pose2D setpoint
bool plan
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

")



(provide :fukuro_common/RobotControlInfo "3d219701cbb4b4f70bacc052c397c3a7")


