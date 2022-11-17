;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::Localization)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'Localization (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::LOCALIZATION")
  (make-package "FUKURO_COMMON::LOCALIZATION"))

(in-package "ROS")
;;//! \htmlinclude Localization.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fukuro_common::Localization
  :super ros::object
  :slots (_estimate_pos _estimate_pos_descrete _particles _best_estimation _weights _best_estimation_weight _grid_size ))

(defmethod fukuro_common::Localization
  (:init
   (&key
    ((:estimate_pos __estimate_pos) (instance geometry_msgs::Pose2D :init))
    ((:estimate_pos_descrete __estimate_pos_descrete) (instance geometry_msgs::Pose2D :init))
    ((:particles __particles) ())
    ((:best_estimation __best_estimation) (instance geometry_msgs::Pose2D :init))
    ((:weights __weights) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:best_estimation_weight __best_estimation_weight) 0.0)
    ((:grid_size __grid_size) 0)
    )
   (send-super :init)
   (setq _estimate_pos __estimate_pos)
   (setq _estimate_pos_descrete __estimate_pos_descrete)
   (setq _particles __particles)
   (setq _best_estimation __best_estimation)
   (setq _weights __weights)
   (setq _best_estimation_weight (float __best_estimation_weight))
   (setq _grid_size (round __grid_size))
   self)
  (:estimate_pos
   (&rest __estimate_pos)
   (if (keywordp (car __estimate_pos))
       (send* _estimate_pos __estimate_pos)
     (progn
       (if __estimate_pos (setq _estimate_pos (car __estimate_pos)))
       _estimate_pos)))
  (:estimate_pos_descrete
   (&rest __estimate_pos_descrete)
   (if (keywordp (car __estimate_pos_descrete))
       (send* _estimate_pos_descrete __estimate_pos_descrete)
     (progn
       (if __estimate_pos_descrete (setq _estimate_pos_descrete (car __estimate_pos_descrete)))
       _estimate_pos_descrete)))
  (:particles
   (&rest __particles)
   (if (keywordp (car __particles))
       (send* _particles __particles)
     (progn
       (if __particles (setq _particles (car __particles)))
       _particles)))
  (:best_estimation
   (&rest __best_estimation)
   (if (keywordp (car __best_estimation))
       (send* _best_estimation __best_estimation)
     (progn
       (if __best_estimation (setq _best_estimation (car __best_estimation)))
       _best_estimation)))
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:best_estimation_weight
   (&optional __best_estimation_weight)
   (if __best_estimation_weight (setq _best_estimation_weight __best_estimation_weight)) _best_estimation_weight)
  (:grid_size
   (&optional __grid_size)
   (if __grid_size (setq _grid_size __grid_size)) _grid_size)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _estimate_pos
    (send _estimate_pos :serialization-length)
    ;; geometry_msgs/Pose2D _estimate_pos_descrete
    (send _estimate_pos_descrete :serialization-length)
    ;; geometry_msgs/Pose2D[] _particles
    (apply #'+ (send-all _particles :serialization-length)) 4
    ;; geometry_msgs/Pose2D _best_estimation
    (send _best_estimation :serialization-length)
    ;; float64[] _weights
    (* 8    (length _weights)) 4
    ;; float64 _best_estimation_weight
    8
    ;; int32 _grid_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _estimate_pos
       (send _estimate_pos :serialize s)
     ;; geometry_msgs/Pose2D _estimate_pos_descrete
       (send _estimate_pos_descrete :serialize s)
     ;; geometry_msgs/Pose2D[] _particles
     (write-long (length _particles) s)
     (dolist (elem _particles)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose2D _best_estimation
       (send _best_estimation :serialize s)
     ;; float64[] _weights
     (write-long (length _weights) s)
     (dotimes (i (length _weights))
       (sys::poke (elt _weights i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _best_estimation_weight
       (sys::poke _best_estimation_weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _grid_size
       (write-long _grid_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _estimate_pos
     (send _estimate_pos :deserialize buf ptr-) (incf ptr- (send _estimate_pos :serialization-length))
   ;; geometry_msgs/Pose2D _estimate_pos_descrete
     (send _estimate_pos_descrete :deserialize buf ptr-) (incf ptr- (send _estimate_pos_descrete :serialization-length))
   ;; geometry_msgs/Pose2D[] _particles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _particles (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _particles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose2D _best_estimation
     (send _best_estimation :deserialize buf ptr-) (incf ptr- (send _best_estimation :serialization-length))
   ;; float64[] _weights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weights (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weights i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _best_estimation_weight
     (setq _best_estimation_weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _grid_size
     (setq _grid_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fukuro_common::Localization :md5sum-) "d25fba6248365fe1c093e492c489b9fd")
(setf (get fukuro_common::Localization :datatype-) "fukuro_common/Localization")
(setf (get fukuro_common::Localization :definition-)
      "geometry_msgs/Pose2D estimate_pos
geometry_msgs/Pose2D estimate_pos_descrete
geometry_msgs/Pose2D[] particles
geometry_msgs/Pose2D best_estimation
float64[] weights
float64 best_estimation_weight
int32 grid_size

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



(provide :fukuro_common/Localization "d25fba6248365fe1c093e492c489b9fd")


