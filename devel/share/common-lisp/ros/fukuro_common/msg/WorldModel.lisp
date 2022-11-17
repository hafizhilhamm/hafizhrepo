; Auto-generated. Do not edit!


(cl:in-package fukuro_common-msg)


;//! \htmlinclude WorldModel.msg.html

(cl:defclass <WorldModel> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (ball_visible
    :reader ball_visible
    :initarg :ball_visible
    :type cl:boolean
    :initform cl:nil)
   (obstacle_visible
    :reader obstacle_visible
    :initarg :obstacle_visible
    :type cl:boolean
    :initform cl:nil)
   (friend_visible
    :reader friend_visible
    :initarg :friend_visible
    :type cl:boolean
    :initform cl:nil)
   (available
    :reader available
    :initarg :available
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (set_obstacle
    :reader set_obstacle
    :initarg :set_obstacle
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (teammates
    :reader teammates
    :initarg :teammates
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (local_friend
    :reader local_friend
    :initarg :local_friend
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (global_friend
    :reader global_friend
    :initarg :global_friend
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (local_ball
    :reader local_ball
    :initarg :local_ball
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (global_ball
    :reader global_ball
    :initarg :global_ball
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (local_balls
    :reader local_balls
    :initarg :local_balls
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (balls
    :reader balls
    :initarg :balls
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (way_points
    :reader way_points
    :initarg :way_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector fukuro_common-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Obstacle :initial-element (cl:make-instance 'fukuro_common-msg:Obstacle)))
   (obstacle1
    :reader obstacle1
    :initarg :obstacle1
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (obstacle2
    :reader obstacle2
    :initarg :obstacle2
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (kiper_obstacle
    :reader kiper_obstacle
    :initarg :kiper_obstacle
    :type fukuro_common-msg:Obstacle
    :initform (cl:make-instance 'fukuro_common-msg:Obstacle))
   (local_obstacles
    :reader local_obstacles
    :initarg :local_obstacles
    :type (cl:vector fukuro_common-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Point2d :initial-element (cl:make-instance 'fukuro_common-msg:Point2d)))
   (global_obstacles
    :reader global_obstacles
    :initarg :global_obstacles
    :type (cl:vector fukuro_common-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'fukuro_common-msg:Point2d :initial-element (cl:make-instance 'fukuro_common-msg:Point2d))))
)

(cl:defclass WorldModel (<WorldModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fukuro_common-msg:<WorldModel> is deprecated: use fukuro_common-msg:WorldModel instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:robot_name-val is deprecated.  Use fukuro_common-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'ball_visible-val :lambda-list '(m))
(cl:defmethod ball_visible-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:ball_visible-val is deprecated.  Use fukuro_common-msg:ball_visible instead.")
  (ball_visible m))

(cl:ensure-generic-function 'obstacle_visible-val :lambda-list '(m))
(cl:defmethod obstacle_visible-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle_visible-val is deprecated.  Use fukuro_common-msg:obstacle_visible instead.")
  (obstacle_visible m))

(cl:ensure-generic-function 'friend_visible-val :lambda-list '(m))
(cl:defmethod friend_visible-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:friend_visible-val is deprecated.  Use fukuro_common-msg:friend_visible instead.")
  (friend_visible m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:available-val is deprecated.  Use fukuro_common-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'set_obstacle-val :lambda-list '(m))
(cl:defmethod set_obstacle-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:set_obstacle-val is deprecated.  Use fukuro_common-msg:set_obstacle instead.")
  (set_obstacle m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:position-val is deprecated.  Use fukuro_common-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'teammates-val :lambda-list '(m))
(cl:defmethod teammates-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:teammates-val is deprecated.  Use fukuro_common-msg:teammates instead.")
  (teammates m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:velocity-val is deprecated.  Use fukuro_common-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'local_friend-val :lambda-list '(m))
(cl:defmethod local_friend-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:local_friend-val is deprecated.  Use fukuro_common-msg:local_friend instead.")
  (local_friend m))

(cl:ensure-generic-function 'global_friend-val :lambda-list '(m))
(cl:defmethod global_friend-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:global_friend-val is deprecated.  Use fukuro_common-msg:global_friend instead.")
  (global_friend m))

(cl:ensure-generic-function 'local_ball-val :lambda-list '(m))
(cl:defmethod local_ball-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:local_ball-val is deprecated.  Use fukuro_common-msg:local_ball instead.")
  (local_ball m))

(cl:ensure-generic-function 'global_ball-val :lambda-list '(m))
(cl:defmethod global_ball-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:global_ball-val is deprecated.  Use fukuro_common-msg:global_ball instead.")
  (global_ball m))

(cl:ensure-generic-function 'local_balls-val :lambda-list '(m))
(cl:defmethod local_balls-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:local_balls-val is deprecated.  Use fukuro_common-msg:local_balls instead.")
  (local_balls m))

(cl:ensure-generic-function 'balls-val :lambda-list '(m))
(cl:defmethod balls-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:balls-val is deprecated.  Use fukuro_common-msg:balls instead.")
  (balls m))

(cl:ensure-generic-function 'way_points-val :lambda-list '(m))
(cl:defmethod way_points-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:way_points-val is deprecated.  Use fukuro_common-msg:way_points instead.")
  (way_points m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacles-val is deprecated.  Use fukuro_common-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'obstacle1-val :lambda-list '(m))
(cl:defmethod obstacle1-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle1-val is deprecated.  Use fukuro_common-msg:obstacle1 instead.")
  (obstacle1 m))

(cl:ensure-generic-function 'obstacle2-val :lambda-list '(m))
(cl:defmethod obstacle2-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:obstacle2-val is deprecated.  Use fukuro_common-msg:obstacle2 instead.")
  (obstacle2 m))

(cl:ensure-generic-function 'kiper_obstacle-val :lambda-list '(m))
(cl:defmethod kiper_obstacle-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:kiper_obstacle-val is deprecated.  Use fukuro_common-msg:kiper_obstacle instead.")
  (kiper_obstacle m))

(cl:ensure-generic-function 'local_obstacles-val :lambda-list '(m))
(cl:defmethod local_obstacles-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:local_obstacles-val is deprecated.  Use fukuro_common-msg:local_obstacles instead.")
  (local_obstacles m))

(cl:ensure-generic-function 'global_obstacles-val :lambda-list '(m))
(cl:defmethod global_obstacles-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fukuro_common-msg:global_obstacles-val is deprecated.  Use fukuro_common-msg:global_obstacles instead.")
  (global_obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldModel>) ostream)
  "Serializes a message object of type '<WorldModel>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ball_visible) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle_visible) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'friend_visible) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'available))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_obstacle) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'teammates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'teammates))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_friend) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_friend) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_ball) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_ball) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_balls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'local_balls))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'balls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'balls))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'way_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'way_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kiper_obstacle) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'local_obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'global_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'global_obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldModel>) istream)
  "Deserializes a message object of type '<WorldModel>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'ball_visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle_visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'friend_visible) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:setf (cl:slot-value msg 'set_obstacle) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'teammates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'teammates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_friend) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_friend) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_ball) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_ball) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_balls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_balls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'balls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'balls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'way_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'way_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kiper_obstacle) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'global_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'global_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fukuro_common-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldModel>)))
  "Returns string type for a message object of type '<WorldModel>"
  "fukuro_common/WorldModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldModel)))
  "Returns string type for a message object of type 'WorldModel"
  "fukuro_common/WorldModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldModel>)))
  "Returns md5sum for a message object of type '<WorldModel>"
  "83b86ec7340f012e81177e9324633119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldModel)))
  "Returns md5sum for a message object of type 'WorldModel"
  "83b86ec7340f012e81177e9324633119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldModel>)))
  "Returns full string definition for message of type '<WorldModel>"
  (cl:format cl:nil "string robot_name~%bool ball_visible~%bool obstacle_visible~%bool friend_visible~%bool[] available~%bool set_obstacle # untuk lomba online~%geometry_msgs/Pose2D position~%geometry_msgs/Pose2D[] teammates~%geometry_msgs/Pose2D velocity~%geometry_msgs/Point local_friend~%geometry_msgs/Point global_friend~%geometry_msgs/Point local_ball~%geometry_msgs/Point global_ball~%geometry_msgs/Point[] local_balls~%geometry_msgs/Point[] balls~%geometry_msgs/Point[] way_points~%Obstacle[] obstacles~%Obstacle obstacle1   # untuk lomba online~%Obstacle obstacle2   # untuk lomba online~%Obstacle kiper_obstacle # untuk lomba online~%Point2d[] local_obstacles~%Point2d[] global_obstacles~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: fukuro_common/Obstacle~%Point2d pos~%float64 r~%int8 shape~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldModel)))
  "Returns full string definition for message of type 'WorldModel"
  (cl:format cl:nil "string robot_name~%bool ball_visible~%bool obstacle_visible~%bool friend_visible~%bool[] available~%bool set_obstacle # untuk lomba online~%geometry_msgs/Pose2D position~%geometry_msgs/Pose2D[] teammates~%geometry_msgs/Pose2D velocity~%geometry_msgs/Point local_friend~%geometry_msgs/Point global_friend~%geometry_msgs/Point local_ball~%geometry_msgs/Point global_ball~%geometry_msgs/Point[] local_balls~%geometry_msgs/Point[] balls~%geometry_msgs/Point[] way_points~%Obstacle[] obstacles~%Obstacle obstacle1   # untuk lomba online~%Obstacle obstacle2   # untuk lomba online~%Obstacle kiper_obstacle # untuk lomba online~%Point2d[] local_obstacles~%Point2d[] global_obstacles~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: fukuro_common/Obstacle~%Point2d pos~%float64 r~%int8 shape~%================================================================================~%MSG: fukuro_common/Point2d~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldModel>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'teammates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_friend))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_friend))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_ball))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_ball))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_balls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'balls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'way_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kiper_obstacle))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'global_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldModel>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldModel
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':ball_visible (ball_visible msg))
    (cl:cons ':obstacle_visible (obstacle_visible msg))
    (cl:cons ':friend_visible (friend_visible msg))
    (cl:cons ':available (available msg))
    (cl:cons ':set_obstacle (set_obstacle msg))
    (cl:cons ':position (position msg))
    (cl:cons ':teammates (teammates msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':local_friend (local_friend msg))
    (cl:cons ':global_friend (global_friend msg))
    (cl:cons ':local_ball (local_ball msg))
    (cl:cons ':global_ball (global_ball msg))
    (cl:cons ':local_balls (local_balls msg))
    (cl:cons ':balls (balls msg))
    (cl:cons ':way_points (way_points msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':obstacle1 (obstacle1 msg))
    (cl:cons ':obstacle2 (obstacle2 msg))
    (cl:cons ':kiper_obstacle (kiper_obstacle msg))
    (cl:cons ':local_obstacles (local_obstacles msg))
    (cl:cons ':global_obstacles (global_obstacles msg))
))
