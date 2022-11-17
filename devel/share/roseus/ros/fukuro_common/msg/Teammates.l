;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Teammates)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Teammates (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::TEAMMATES")
  (make-package "FUKURO_COMMON::TEAMMATES"))

(in-package "ROS")
;;//! \htmlinclude Teammates.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fukuro_common::Teammates
  :super ros::object
  :slots (_robotnumber _pose _available _behavior _state _isConnected _isManualPositioning _isBallOwn _pass_ball _receive_ball ))

(defmethod fukuro_common::Teammates
  (:init
   (&key
    ((:robotnumber __robotnumber) 0)
    ((:pose __pose) ())
    ((:available __available) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:behavior __behavior) 0)
    ((:state __state) 0)
    ((:isConnected __isConnected) nil)
    ((:isManualPositioning __isManualPositioning) nil)
    ((:isBallOwn __isBallOwn) nil)
    ((:pass_ball __pass_ball) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:receive_ball __receive_ball) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _robotnumber (round __robotnumber))
   (setq _pose __pose)
   (setq _available __available)
   (setq _behavior (round __behavior))
   (setq _state (round __state))
   (setq _isConnected __isConnected)
   (setq _isManualPositioning __isManualPositioning)
   (setq _isBallOwn __isBallOwn)
   (setq _pass_ball __pass_ball)
   (setq _receive_ball __receive_ball)
   self)
  (:robotnumber
   (&optional __robotnumber)
   (if __robotnumber (setq _robotnumber __robotnumber)) _robotnumber)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:behavior
   (&optional __behavior)
   (if __behavior (setq _behavior __behavior)) _behavior)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:isConnected
   (&optional (__isConnected :null))
   (if (not (eq __isConnected :null)) (setq _isConnected __isConnected)) _isConnected)
  (:isManualPositioning
   (&optional (__isManualPositioning :null))
   (if (not (eq __isManualPositioning :null)) (setq _isManualPositioning __isManualPositioning)) _isManualPositioning)
  (:isBallOwn
   (&optional (__isBallOwn :null))
   (if (not (eq __isBallOwn :null)) (setq _isBallOwn __isBallOwn)) _isBallOwn)
  (:pass_ball
   (&optional __pass_ball)
   (if __pass_ball (setq _pass_ball __pass_ball)) _pass_ball)
  (:receive_ball
   (&optional __receive_ball)
   (if __receive_ball (setq _receive_ball __receive_ball)) _receive_ball)
  (:serialization-length
   ()
   (+
    ;; int32 _robotnumber
    4
    ;; geometry_msgs/Pose2D[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; bool[] _available
    (* 1    (length _available)) 4
    ;; int32 _behavior
    4
    ;; int32 _state
    4
    ;; bool _isConnected
    1
    ;; bool _isManualPositioning
    1
    ;; bool _isBallOwn
    1
    ;; bool[] _pass_ball
    (* 1    (length _pass_ball)) 4
    ;; bool[] _receive_ball
    (* 1    (length _receive_ball)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robotnumber
       (write-long _robotnumber s)
     ;; geometry_msgs/Pose2D[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; bool[] _available
     (write-long (length _available) s)
     (dotimes (i (length _available))
       (if (elt _available i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32 _behavior
       (write-long _behavior s)
     ;; int32 _state
       (write-long _state s)
     ;; bool _isConnected
       (if _isConnected (write-byte -1 s) (write-byte 0 s))
     ;; bool _isManualPositioning
       (if _isManualPositioning (write-byte -1 s) (write-byte 0 s))
     ;; bool _isBallOwn
       (if _isBallOwn (write-byte -1 s) (write-byte 0 s))
     ;; bool[] _pass_ball
     (write-long (length _pass_ball) s)
     (dotimes (i (length _pass_ball))
       (if (elt _pass_ball i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _receive_ball
     (write-long (length _receive_ball) s)
     (dotimes (i (length _receive_ball))
       (if (elt _receive_ball i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robotnumber
     (setq _robotnumber (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool[] _available
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available (make-list n))
     (dotimes (i n)
     (setf (elt _available i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32 _behavior
     (setq _behavior (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isConnected
     (setq _isConnected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isManualPositioning
     (setq _isManualPositioning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isBallOwn
     (setq _isBallOwn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool[] _pass_ball
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pass_ball (make-list n))
     (dotimes (i n)
     (setf (elt _pass_ball i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _receive_ball
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _receive_ball (make-list n))
     (dotimes (i n)
     (setf (elt _receive_ball i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get fukuro_common::Teammates :md5sum-) "9d9d85ad8ed32eac7013d69f18ea4e63")
(setf (get fukuro_common::Teammates :datatype-) "fukuro_common/Teammates")
(setf (get fukuro_common::Teammates :definition-)
      "int32 robotnumber
geometry_msgs/Pose2D[] pose
bool[] available
int32 behavior
int32 state
bool isConnected
bool isManualPositioning
bool isBallOwn
bool[] pass_ball
bool[] receive_ball
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



(provide :fukuro_common/Teammates "9d9d85ad8ed32eac7013d69f18ea4e63")


