;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::PathPlan)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'PathPlan (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::PATHPLAN")
  (make-package "FUKURO_COMMON::PATHPLAN"))

(in-package "ROS")
;;//! \htmlinclude PathPlan.msg.html


(defclass fukuro_common::PathPlan
  :super ros::object
  :slots (_obstacles _solutions _start _goal _search_time _solved _updated ))

(defmethod fukuro_common::PathPlan
  (:init
   (&key
    ((:obstacles __obstacles) ())
    ((:solutions __solutions) ())
    ((:start __start) (instance fukuro_common::Point2d :init))
    ((:goal __goal) (instance fukuro_common::Point2d :init))
    ((:search_time __search_time) 0.0)
    ((:solved __solved) nil)
    ((:updated __updated) nil)
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   (setq _solutions __solutions)
   (setq _start __start)
   (setq _goal __goal)
   (setq _search_time (float __search_time))
   (setq _solved __solved)
   (setq _updated __updated)
   self)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:solutions
   (&rest __solutions)
   (if (keywordp (car __solutions))
       (send* _solutions __solutions)
     (progn
       (if __solutions (setq _solutions (car __solutions)))
       _solutions)))
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:search_time
   (&optional __search_time)
   (if __search_time (setq _search_time __search_time)) _search_time)
  (:solved
   (&optional (__solved :null))
   (if (not (eq __solved :null)) (setq _solved __solved)) _solved)
  (:updated
   (&optional (__updated :null))
   (if (not (eq __updated :null)) (setq _updated __updated)) _updated)
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Point2d[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; fukuro_common/Point2d[] _solutions
    (apply #'+ (send-all _solutions :serialization-length)) 4
    ;; fukuro_common/Point2d _start
    (send _start :serialization-length)
    ;; fukuro_common/Point2d _goal
    (send _goal :serialization-length)
    ;; float64 _search_time
    8
    ;; bool _solved
    1
    ;; bool _updated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Point2d[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;; fukuro_common/Point2d[] _solutions
     (write-long (length _solutions) s)
     (dolist (elem _solutions)
       (send elem :serialize s)
       )
     ;; fukuro_common/Point2d _start
       (send _start :serialize s)
     ;; fukuro_common/Point2d _goal
       (send _goal :serialize s)
     ;; float64 _search_time
       (sys::poke _search_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _solved
       (if _solved (write-byte -1 s) (write-byte 0 s))
     ;; bool _updated
       (if _updated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Point2d[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance fukuro_common::Point2d :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; fukuro_common/Point2d[] _solutions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _solutions (let (r) (dotimes (i n) (push (instance fukuro_common::Point2d :init) r)) r))
     (dolist (elem- _solutions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; fukuro_common/Point2d _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; fukuro_common/Point2d _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; float64 _search_time
     (setq _search_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _solved
     (setq _solved (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _updated
     (setq _updated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::PathPlan :md5sum-) "bac9c86aba64a149e610ac3cafcaef0c")
(setf (get fukuro_common::PathPlan :datatype-) "fukuro_common/PathPlan")
(setf (get fukuro_common::PathPlan :definition-)
      "Point2d[] obstacles
Point2d[] solutions
Point2d start
Point2d goal
float64 search_time
bool solved
bool updated
================================================================================
MSG: fukuro_common/Point2d
float64 x
float64 y
")



(provide :fukuro_common/PathPlan "bac9c86aba64a149e610ac3cafcaef0c")


