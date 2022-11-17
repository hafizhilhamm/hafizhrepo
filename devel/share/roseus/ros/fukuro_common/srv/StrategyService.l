;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::StrategyService)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'StrategyService (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::STRATEGYSERVICE")
  (make-package "FUKURO_COMMON::STRATEGYSERVICE"))
(unless (find-package "FUKURO_COMMON::STRATEGYSERVICEREQUEST")
  (make-package "FUKURO_COMMON::STRATEGYSERVICEREQUEST"))
(unless (find-package "FUKURO_COMMON::STRATEGYSERVICERESPONSE")
  (make-package "FUKURO_COMMON::STRATEGYSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass fukuro_common::StrategyServiceRequest
  :super ros::object
  :slots (_strategy_state _strategy_option _role _obs1_pos _obs2_pos _kiper_pos _option _home_pos _kick_pos ))

(defmethod fukuro_common::StrategyServiceRequest
  (:init
   (&key
    ((:strategy_state __strategy_state) "")
    ((:strategy_option __strategy_option) "")
    ((:role __role) "")
    ((:obs1_pos __obs1_pos) 0)
    ((:obs2_pos __obs2_pos) 0)
    ((:kiper_pos __kiper_pos) 0)
    ((:option __option) "")
    ((:home_pos __home_pos) (instance geometry_msgs::Pose2D :init))
    ((:kick_pos __kick_pos) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _strategy_state (string __strategy_state))
   (setq _strategy_option (string __strategy_option))
   (setq _role (string __role))
   (setq _obs1_pos (round __obs1_pos))
   (setq _obs2_pos (round __obs2_pos))
   (setq _kiper_pos (round __kiper_pos))
   (setq _option (string __option))
   (setq _home_pos __home_pos)
   (setq _kick_pos __kick_pos)
   self)
  (:strategy_state
   (&optional __strategy_state)
   (if __strategy_state (setq _strategy_state __strategy_state)) _strategy_state)
  (:strategy_option
   (&optional __strategy_option)
   (if __strategy_option (setq _strategy_option __strategy_option)) _strategy_option)
  (:role
   (&optional __role)
   (if __role (setq _role __role)) _role)
  (:obs1_pos
   (&optional __obs1_pos)
   (if __obs1_pos (setq _obs1_pos __obs1_pos)) _obs1_pos)
  (:obs2_pos
   (&optional __obs2_pos)
   (if __obs2_pos (setq _obs2_pos __obs2_pos)) _obs2_pos)
  (:kiper_pos
   (&optional __kiper_pos)
   (if __kiper_pos (setq _kiper_pos __kiper_pos)) _kiper_pos)
  (:option
   (&optional __option)
   (if __option (setq _option __option)) _option)
  (:home_pos
   (&rest __home_pos)
   (if (keywordp (car __home_pos))
       (send* _home_pos __home_pos)
     (progn
       (if __home_pos (setq _home_pos (car __home_pos)))
       _home_pos)))
  (:kick_pos
   (&rest __kick_pos)
   (if (keywordp (car __kick_pos))
       (send* _kick_pos __kick_pos)
     (progn
       (if __kick_pos (setq _kick_pos (car __kick_pos)))
       _kick_pos)))
  (:serialization-length
   ()
   (+
    ;; string _strategy_state
    4 (length _strategy_state)
    ;; string _strategy_option
    4 (length _strategy_option)
    ;; string _role
    4 (length _role)
    ;; int32 _obs1_pos
    4
    ;; int32 _obs2_pos
    4
    ;; int32 _kiper_pos
    4
    ;; string _option
    4 (length _option)
    ;; geometry_msgs/Pose2D _home_pos
    (send _home_pos :serialization-length)
    ;; geometry_msgs/Pose2D _kick_pos
    (send _kick_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _strategy_state
       (write-long (length _strategy_state) s) (princ _strategy_state s)
     ;; string _strategy_option
       (write-long (length _strategy_option) s) (princ _strategy_option s)
     ;; string _role
       (write-long (length _role) s) (princ _role s)
     ;; int32 _obs1_pos
       (write-long _obs1_pos s)
     ;; int32 _obs2_pos
       (write-long _obs2_pos s)
     ;; int32 _kiper_pos
       (write-long _kiper_pos s)
     ;; string _option
       (write-long (length _option) s) (princ _option s)
     ;; geometry_msgs/Pose2D _home_pos
       (send _home_pos :serialize s)
     ;; geometry_msgs/Pose2D _kick_pos
       (send _kick_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _strategy_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strategy_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _strategy_option
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strategy_option (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _role
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _role (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _obs1_pos
     (setq _obs1_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _obs2_pos
     (setq _obs2_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kiper_pos
     (setq _kiper_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _option
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _option (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _home_pos
     (send _home_pos :deserialize buf ptr-) (incf ptr- (send _home_pos :serialization-length))
   ;; geometry_msgs/Pose2D _kick_pos
     (send _kick_pos :deserialize buf ptr-) (incf ptr- (send _kick_pos :serialization-length))
   ;;
   self)
  )

(defclass fukuro_common::StrategyServiceResponse
  :super ros::object
  :slots (_ok ))

(defmethod fukuro_common::StrategyServiceResponse
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

(defclass fukuro_common::StrategyService
  :super ros::object
  :slots ())

(setf (get fukuro_common::StrategyService :md5sum-) "2db2786a5ed05eb6930ecf6644f9e863")
(setf (get fukuro_common::StrategyService :datatype-) "fukuro_common/StrategyService")
(setf (get fukuro_common::StrategyService :request) fukuro_common::StrategyServiceRequest)
(setf (get fukuro_common::StrategyService :response) fukuro_common::StrategyServiceResponse)

(defmethod fukuro_common::StrategyServiceRequest
  (:response () (instance fukuro_common::StrategyServiceResponse :init)))

(setf (get fukuro_common::StrategyServiceRequest :md5sum-) "2db2786a5ed05eb6930ecf6644f9e863")
(setf (get fukuro_common::StrategyServiceRequest :datatype-) "fukuro_common/StrategyServiceRequest")
(setf (get fukuro_common::StrategyServiceRequest :definition-)
      "string strategy_state
string strategy_option
string role
int32 obs1_pos
int32 obs2_pos
int32 kiper_pos
string option
geometry_msgs/Pose2D home_pos
geometry_msgs/Pose2D kick_pos

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
---
uint8 ok

")

(setf (get fukuro_common::StrategyServiceResponse :md5sum-) "2db2786a5ed05eb6930ecf6644f9e863")
(setf (get fukuro_common::StrategyServiceResponse :datatype-) "fukuro_common/StrategyServiceResponse")
(setf (get fukuro_common::StrategyServiceResponse :definition-)
      "string strategy_state
string strategy_option
string role
int32 obs1_pos
int32 obs2_pos
int32 kiper_pos
string option
geometry_msgs/Pose2D home_pos
geometry_msgs/Pose2D kick_pos

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
---
uint8 ok

")



(provide :fukuro_common/StrategyService "2db2786a5ed05eb6930ecf6644f9e863")


