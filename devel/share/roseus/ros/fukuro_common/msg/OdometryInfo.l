;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::OdometryInfo)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'OdometryInfo (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::ODOMETRYINFO")
  (make-package "FUKURO_COMMON::ODOMETRYINFO"))

(in-package "ROS")
;;//! \htmlinclude OdometryInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fukuro_common::OdometryInfo
  :super ros::object
  :slots (_vx _vy _w _position _velocity ))

(defmethod fukuro_common::OdometryInfo
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:w __w) 0.0)
    ((:position __position) (instance geometry_msgs::Pose2D :init))
    ((:velocity __velocity) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _w (float __w))
   (setq _position __position)
   (setq _velocity __velocity)
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _w
    8
    ;; geometry_msgs/Pose2D _position
    (send _position :serialization-length)
    ;; geometry_msgs/Pose2D _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose2D _position
       (send _position :serialize s)
     ;; geometry_msgs/Pose2D _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Pose2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get fukuro_common::OdometryInfo :md5sum-) "ba676638abfd6dd3d3cce86d90468aab")
(setf (get fukuro_common::OdometryInfo :datatype-) "fukuro_common/OdometryInfo")
(setf (get fukuro_common::OdometryInfo :definition-)
      "float64 vx
float64 vy
float64 w
geometry_msgs/Pose2D position
geometry_msgs/Pose2D velocity
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



(provide :fukuro_common/OdometryInfo "ba676638abfd6dd3d3cce86d90468aab")


