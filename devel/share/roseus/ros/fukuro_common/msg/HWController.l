;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::HWController)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'HWController (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::HWCONTROLLER")
  (make-package "FUKURO_COMMON::HWCONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude HWController.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fukuro_common::HWController
  :super ros::object
  :slots (_encoder _freewheel _pwm _compass _ir _vel _vel_cmd ))

(defmethod fukuro_common::HWController
  (:init
   (&key
    ((:encoder __encoder) (instance fukuro_common::Encoder :init))
    ((:freewheel __freewheel) (instance fukuro_common::Encoder :init))
    ((:pwm __pwm) (instance fukuro_common::PWM :init))
    ((:compass __compass) (instance fukuro_common::Compass :init))
    ((:ir __ir) 0)
    ((:vel __vel) (instance geometry_msgs::Pose2D :init))
    ((:vel_cmd __vel_cmd) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _encoder __encoder)
   (setq _freewheel __freewheel)
   (setq _pwm __pwm)
   (setq _compass __compass)
   (setq _ir (round __ir))
   (setq _vel __vel)
   (setq _vel_cmd __vel_cmd)
   self)
  (:encoder
   (&rest __encoder)
   (if (keywordp (car __encoder))
       (send* _encoder __encoder)
     (progn
       (if __encoder (setq _encoder (car __encoder)))
       _encoder)))
  (:freewheel
   (&rest __freewheel)
   (if (keywordp (car __freewheel))
       (send* _freewheel __freewheel)
     (progn
       (if __freewheel (setq _freewheel (car __freewheel)))
       _freewheel)))
  (:pwm
   (&rest __pwm)
   (if (keywordp (car __pwm))
       (send* _pwm __pwm)
     (progn
       (if __pwm (setq _pwm (car __pwm)))
       _pwm)))
  (:compass
   (&rest __compass)
   (if (keywordp (car __compass))
       (send* _compass __compass)
     (progn
       (if __compass (setq _compass (car __compass)))
       _compass)))
  (:ir
   (&optional __ir)
   (if __ir (setq _ir __ir)) _ir)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:vel_cmd
   (&rest __vel_cmd)
   (if (keywordp (car __vel_cmd))
       (send* _vel_cmd __vel_cmd)
     (progn
       (if __vel_cmd (setq _vel_cmd (car __vel_cmd)))
       _vel_cmd)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Encoder _encoder
    (send _encoder :serialization-length)
    ;; fukuro_common/Encoder _freewheel
    (send _freewheel :serialization-length)
    ;; fukuro_common/PWM _pwm
    (send _pwm :serialization-length)
    ;; fukuro_common/Compass _compass
    (send _compass :serialization-length)
    ;; int8 _ir
    1
    ;; geometry_msgs/Pose2D _vel
    (send _vel :serialization-length)
    ;; geometry_msgs/Pose2D _vel_cmd
    (send _vel_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Encoder _encoder
       (send _encoder :serialize s)
     ;; fukuro_common/Encoder _freewheel
       (send _freewheel :serialize s)
     ;; fukuro_common/PWM _pwm
       (send _pwm :serialize s)
     ;; fukuro_common/Compass _compass
       (send _compass :serialize s)
     ;; int8 _ir
       (write-byte _ir s)
     ;; geometry_msgs/Pose2D _vel
       (send _vel :serialize s)
     ;; geometry_msgs/Pose2D _vel_cmd
       (send _vel_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Encoder _encoder
     (send _encoder :deserialize buf ptr-) (incf ptr- (send _encoder :serialization-length))
   ;; fukuro_common/Encoder _freewheel
     (send _freewheel :deserialize buf ptr-) (incf ptr- (send _freewheel :serialization-length))
   ;; fukuro_common/PWM _pwm
     (send _pwm :deserialize buf ptr-) (incf ptr- (send _pwm :serialization-length))
   ;; fukuro_common/Compass _compass
     (send _compass :deserialize buf ptr-) (incf ptr- (send _compass :serialization-length))
   ;; int8 _ir
     (setq _ir (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ir 127) (setq _ir (- _ir 256)))
   ;; geometry_msgs/Pose2D _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; geometry_msgs/Pose2D _vel_cmd
     (send _vel_cmd :deserialize buf ptr-) (incf ptr- (send _vel_cmd :serialization-length))
   ;;
   self)
  )

(setf (get fukuro_common::HWController :md5sum-) "5b17edd995ef9a46dfd3ca5601a27eaf")
(setf (get fukuro_common::HWController :datatype-) "fukuro_common/HWController")
(setf (get fukuro_common::HWController :definition-)
      "Encoder encoder
Encoder freewheel
PWM pwm
Compass compass
int8 ir
geometry_msgs/Pose2D vel
geometry_msgs/Pose2D vel_cmd
================================================================================
MSG: fukuro_common/Encoder
int32 m1
int32 m2
int32 m3
================================================================================
MSG: fukuro_common/PWM
float64 m1
float64 m2
float64 m3
================================================================================
MSG: fukuro_common/Compass
float64 cmps
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



(provide :fukuro_common/HWController "5b17edd995ef9a46dfd3ca5601a27eaf")


