;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::WorldModel)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'WorldModel (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::WORLDMODEL")
  (make-package "FUKURO_COMMON::WORLDMODEL"))

(in-package "ROS")
;;//! \htmlinclude WorldModel.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fukuro_common::WorldModel
  :super ros::object
  :slots (_robot_name _ball_visible _obstacle_visible _friend_visible _available _set_obstacle _position _teammates _velocity _local_friend _global_friend _local_ball _global_ball _local_balls _balls _way_points _obstacles _obstacle1 _obstacle2 _kiper_obstacle _local_obstacles _global_obstacles ))

(defmethod fukuro_common::WorldModel
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:ball_visible __ball_visible) nil)
    ((:obstacle_visible __obstacle_visible) nil)
    ((:friend_visible __friend_visible) nil)
    ((:available __available) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:set_obstacle __set_obstacle) nil)
    ((:position __position) (instance geometry_msgs::Pose2D :init))
    ((:teammates __teammates) ())
    ((:velocity __velocity) (instance geometry_msgs::Pose2D :init))
    ((:local_friend __local_friend) (instance geometry_msgs::Point :init))
    ((:global_friend __global_friend) (instance geometry_msgs::Point :init))
    ((:local_ball __local_ball) (instance geometry_msgs::Point :init))
    ((:global_ball __global_ball) (instance geometry_msgs::Point :init))
    ((:local_balls __local_balls) ())
    ((:balls __balls) ())
    ((:way_points __way_points) ())
    ((:obstacles __obstacles) ())
    ((:obstacle1 __obstacle1) (instance fukuro_common::Obstacle :init))
    ((:obstacle2 __obstacle2) (instance fukuro_common::Obstacle :init))
    ((:kiper_obstacle __kiper_obstacle) (instance fukuro_common::Obstacle :init))
    ((:local_obstacles __local_obstacles) ())
    ((:global_obstacles __global_obstacles) ())
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _ball_visible __ball_visible)
   (setq _obstacle_visible __obstacle_visible)
   (setq _friend_visible __friend_visible)
   (setq _available __available)
   (setq _set_obstacle __set_obstacle)
   (setq _position __position)
   (setq _teammates __teammates)
   (setq _velocity __velocity)
   (setq _local_friend __local_friend)
   (setq _global_friend __global_friend)
   (setq _local_ball __local_ball)
   (setq _global_ball __global_ball)
   (setq _local_balls __local_balls)
   (setq _balls __balls)
   (setq _way_points __way_points)
   (setq _obstacles __obstacles)
   (setq _obstacle1 __obstacle1)
   (setq _obstacle2 __obstacle2)
   (setq _kiper_obstacle __kiper_obstacle)
   (setq _local_obstacles __local_obstacles)
   (setq _global_obstacles __global_obstacles)
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:ball_visible
   (&optional (__ball_visible :null))
   (if (not (eq __ball_visible :null)) (setq _ball_visible __ball_visible)) _ball_visible)
  (:obstacle_visible
   (&optional (__obstacle_visible :null))
   (if (not (eq __obstacle_visible :null)) (setq _obstacle_visible __obstacle_visible)) _obstacle_visible)
  (:friend_visible
   (&optional (__friend_visible :null))
   (if (not (eq __friend_visible :null)) (setq _friend_visible __friend_visible)) _friend_visible)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:set_obstacle
   (&optional (__set_obstacle :null))
   (if (not (eq __set_obstacle :null)) (setq _set_obstacle __set_obstacle)) _set_obstacle)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:teammates
   (&rest __teammates)
   (if (keywordp (car __teammates))
       (send* _teammates __teammates)
     (progn
       (if __teammates (setq _teammates (car __teammates)))
       _teammates)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:local_friend
   (&rest __local_friend)
   (if (keywordp (car __local_friend))
       (send* _local_friend __local_friend)
     (progn
       (if __local_friend (setq _local_friend (car __local_friend)))
       _local_friend)))
  (:global_friend
   (&rest __global_friend)
   (if (keywordp (car __global_friend))
       (send* _global_friend __global_friend)
     (progn
       (if __global_friend (setq _global_friend (car __global_friend)))
       _global_friend)))
  (:local_ball
   (&rest __local_ball)
   (if (keywordp (car __local_ball))
       (send* _local_ball __local_ball)
     (progn
       (if __local_ball (setq _local_ball (car __local_ball)))
       _local_ball)))
  (:global_ball
   (&rest __global_ball)
   (if (keywordp (car __global_ball))
       (send* _global_ball __global_ball)
     (progn
       (if __global_ball (setq _global_ball (car __global_ball)))
       _global_ball)))
  (:local_balls
   (&rest __local_balls)
   (if (keywordp (car __local_balls))
       (send* _local_balls __local_balls)
     (progn
       (if __local_balls (setq _local_balls (car __local_balls)))
       _local_balls)))
  (:balls
   (&rest __balls)
   (if (keywordp (car __balls))
       (send* _balls __balls)
     (progn
       (if __balls (setq _balls (car __balls)))
       _balls)))
  (:way_points
   (&rest __way_points)
   (if (keywordp (car __way_points))
       (send* _way_points __way_points)
     (progn
       (if __way_points (setq _way_points (car __way_points)))
       _way_points)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:obstacle1
   (&rest __obstacle1)
   (if (keywordp (car __obstacle1))
       (send* _obstacle1 __obstacle1)
     (progn
       (if __obstacle1 (setq _obstacle1 (car __obstacle1)))
       _obstacle1)))
  (:obstacle2
   (&rest __obstacle2)
   (if (keywordp (car __obstacle2))
       (send* _obstacle2 __obstacle2)
     (progn
       (if __obstacle2 (setq _obstacle2 (car __obstacle2)))
       _obstacle2)))
  (:kiper_obstacle
   (&rest __kiper_obstacle)
   (if (keywordp (car __kiper_obstacle))
       (send* _kiper_obstacle __kiper_obstacle)
     (progn
       (if __kiper_obstacle (setq _kiper_obstacle (car __kiper_obstacle)))
       _kiper_obstacle)))
  (:local_obstacles
   (&rest __local_obstacles)
   (if (keywordp (car __local_obstacles))
       (send* _local_obstacles __local_obstacles)
     (progn
       (if __local_obstacles (setq _local_obstacles (car __local_obstacles)))
       _local_obstacles)))
  (:global_obstacles
   (&rest __global_obstacles)
   (if (keywordp (car __global_obstacles))
       (send* _global_obstacles __global_obstacles)
     (progn
       (if __global_obstacles (setq _global_obstacles (car __global_obstacles)))
       _global_obstacles)))
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; bool _ball_visible
    1
    ;; bool _obstacle_visible
    1
    ;; bool _friend_visible
    1
    ;; bool[] _available
    (* 1    (length _available)) 4
    ;; bool _set_obstacle
    1
    ;; geometry_msgs/Pose2D _position
    (send _position :serialization-length)
    ;; geometry_msgs/Pose2D[] _teammates
    (apply #'+ (send-all _teammates :serialization-length)) 4
    ;; geometry_msgs/Pose2D _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Point _local_friend
    (send _local_friend :serialization-length)
    ;; geometry_msgs/Point _global_friend
    (send _global_friend :serialization-length)
    ;; geometry_msgs/Point _local_ball
    (send _local_ball :serialization-length)
    ;; geometry_msgs/Point _global_ball
    (send _global_ball :serialization-length)
    ;; geometry_msgs/Point[] _local_balls
    (apply #'+ (send-all _local_balls :serialization-length)) 4
    ;; geometry_msgs/Point[] _balls
    (apply #'+ (send-all _balls :serialization-length)) 4
    ;; geometry_msgs/Point[] _way_points
    (apply #'+ (send-all _way_points :serialization-length)) 4
    ;; fukuro_common/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; fukuro_common/Obstacle _obstacle1
    (send _obstacle1 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle2
    (send _obstacle2 :serialization-length)
    ;; fukuro_common/Obstacle _kiper_obstacle
    (send _kiper_obstacle :serialization-length)
    ;; fukuro_common/Point2d[] _local_obstacles
    (apply #'+ (send-all _local_obstacles :serialization-length)) 4
    ;; fukuro_common/Point2d[] _global_obstacles
    (apply #'+ (send-all _global_obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; bool _ball_visible
       (if _ball_visible (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle_visible
       (if _obstacle_visible (write-byte -1 s) (write-byte 0 s))
     ;; bool _friend_visible
       (if _friend_visible (write-byte -1 s) (write-byte 0 s))
     ;; bool[] _available
     (write-long (length _available) s)
     (dotimes (i (length _available))
       (if (elt _available i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool _set_obstacle
       (if _set_obstacle (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose2D _position
       (send _position :serialize s)
     ;; geometry_msgs/Pose2D[] _teammates
     (write-long (length _teammates) s)
     (dolist (elem _teammates)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose2D _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Point _local_friend
       (send _local_friend :serialize s)
     ;; geometry_msgs/Point _global_friend
       (send _global_friend :serialize s)
     ;; geometry_msgs/Point _local_ball
       (send _local_ball :serialize s)
     ;; geometry_msgs/Point _global_ball
       (send _global_ball :serialize s)
     ;; geometry_msgs/Point[] _local_balls
     (write-long (length _local_balls) s)
     (dolist (elem _local_balls)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _balls
     (write-long (length _balls) s)
     (dolist (elem _balls)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _way_points
     (write-long (length _way_points) s)
     (dolist (elem _way_points)
       (send elem :serialize s)
       )
     ;; fukuro_common/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;; fukuro_common/Obstacle _obstacle1
       (send _obstacle1 :serialize s)
     ;; fukuro_common/Obstacle _obstacle2
       (send _obstacle2 :serialize s)
     ;; fukuro_common/Obstacle _kiper_obstacle
       (send _kiper_obstacle :serialize s)
     ;; fukuro_common/Point2d[] _local_obstacles
     (write-long (length _local_obstacles) s)
     (dolist (elem _local_obstacles)
       (send elem :serialize s)
       )
     ;; fukuro_common/Point2d[] _global_obstacles
     (write-long (length _global_obstacles) s)
     (dolist (elem _global_obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _ball_visible
     (setq _ball_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle_visible
     (setq _obstacle_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _friend_visible
     (setq _friend_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool[] _available
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available (make-list n))
     (dotimes (i n)
     (setf (elt _available i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool _set_obstacle
     (setq _set_obstacle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Pose2D[] _teammates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _teammates (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _teammates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Point _local_friend
     (send _local_friend :deserialize buf ptr-) (incf ptr- (send _local_friend :serialization-length))
   ;; geometry_msgs/Point _global_friend
     (send _global_friend :deserialize buf ptr-) (incf ptr- (send _global_friend :serialization-length))
   ;; geometry_msgs/Point _local_ball
     (send _local_ball :deserialize buf ptr-) (incf ptr- (send _local_ball :serialization-length))
   ;; geometry_msgs/Point _global_ball
     (send _global_ball :deserialize buf ptr-) (incf ptr- (send _global_ball :serialization-length))
   ;; geometry_msgs/Point[] _local_balls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_balls (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _local_balls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _balls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _balls (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _balls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _way_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _way_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _way_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; fukuro_common/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance fukuro_common::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; fukuro_common/Obstacle _obstacle1
     (send _obstacle1 :deserialize buf ptr-) (incf ptr- (send _obstacle1 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle2
     (send _obstacle2 :deserialize buf ptr-) (incf ptr- (send _obstacle2 :serialization-length))
   ;; fukuro_common/Obstacle _kiper_obstacle
     (send _kiper_obstacle :deserialize buf ptr-) (incf ptr- (send _kiper_obstacle :serialization-length))
   ;; fukuro_common/Point2d[] _local_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_obstacles (let (r) (dotimes (i n) (push (instance fukuro_common::Point2d :init) r)) r))
     (dolist (elem- _local_obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; fukuro_common/Point2d[] _global_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_obstacles (let (r) (dotimes (i n) (push (instance fukuro_common::Point2d :init) r)) r))
     (dolist (elem- _global_obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fukuro_common::WorldModel :md5sum-) "83b86ec7340f012e81177e9324633119")
(setf (get fukuro_common::WorldModel :datatype-) "fukuro_common/WorldModel")
(setf (get fukuro_common::WorldModel :definition-)
      "string robot_name
bool ball_visible
bool obstacle_visible
bool friend_visible
bool[] available
bool set_obstacle # untuk lomba online
geometry_msgs/Pose2D position
geometry_msgs/Pose2D[] teammates
geometry_msgs/Pose2D velocity
geometry_msgs/Point local_friend
geometry_msgs/Point global_friend
geometry_msgs/Point local_ball
geometry_msgs/Point global_ball
geometry_msgs/Point[] local_balls
geometry_msgs/Point[] balls
geometry_msgs/Point[] way_points
Obstacle[] obstacles
Obstacle obstacle1   # untuk lomba online
Obstacle obstacle2   # untuk lomba online
Obstacle kiper_obstacle # untuk lomba online
Point2d[] local_obstacles
Point2d[] global_obstacles
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: fukuro_common/Obstacle
Point2d pos
float64 r
int8 shape
================================================================================
MSG: fukuro_common/Point2d
float64 x
float64 y
")



(provide :fukuro_common/WorldModel "83b86ec7340f012e81177e9324633119")


