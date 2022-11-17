;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::StaticObstacle)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'StaticObstacle (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::STATICOBSTACLE")
  (make-package "FUKURO_COMMON::STATICOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude StaticObstacle.msg.html


(defclass fukuro_common::StaticObstacle
  :super ros::object
  :slots (_obstacle1 _obstacle2 _obstacle3 _obstacle4 _obstacle5 _obstacle6 _obstacle7 _obstacle8 ))

(defmethod fukuro_common::StaticObstacle
  (:init
   (&key
    ((:obstacle1 __obstacle1) (instance fukuro_common::Obstacle :init))
    ((:obstacle2 __obstacle2) (instance fukuro_common::Obstacle :init))
    ((:obstacle3 __obstacle3) (instance fukuro_common::Obstacle :init))
    ((:obstacle4 __obstacle4) (instance fukuro_common::Obstacle :init))
    ((:obstacle5 __obstacle5) (instance fukuro_common::Obstacle :init))
    ((:obstacle6 __obstacle6) (instance fukuro_common::Obstacle :init))
    ((:obstacle7 __obstacle7) (instance fukuro_common::Obstacle :init))
    ((:obstacle8 __obstacle8) (instance fukuro_common::Obstacle :init))
    )
   (send-super :init)
   (setq _obstacle1 __obstacle1)
   (setq _obstacle2 __obstacle2)
   (setq _obstacle3 __obstacle3)
   (setq _obstacle4 __obstacle4)
   (setq _obstacle5 __obstacle5)
   (setq _obstacle6 __obstacle6)
   (setq _obstacle7 __obstacle7)
   (setq _obstacle8 __obstacle8)
   self)
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
  (:obstacle3
   (&rest __obstacle3)
   (if (keywordp (car __obstacle3))
       (send* _obstacle3 __obstacle3)
     (progn
       (if __obstacle3 (setq _obstacle3 (car __obstacle3)))
       _obstacle3)))
  (:obstacle4
   (&rest __obstacle4)
   (if (keywordp (car __obstacle4))
       (send* _obstacle4 __obstacle4)
     (progn
       (if __obstacle4 (setq _obstacle4 (car __obstacle4)))
       _obstacle4)))
  (:obstacle5
   (&rest __obstacle5)
   (if (keywordp (car __obstacle5))
       (send* _obstacle5 __obstacle5)
     (progn
       (if __obstacle5 (setq _obstacle5 (car __obstacle5)))
       _obstacle5)))
  (:obstacle6
   (&rest __obstacle6)
   (if (keywordp (car __obstacle6))
       (send* _obstacle6 __obstacle6)
     (progn
       (if __obstacle6 (setq _obstacle6 (car __obstacle6)))
       _obstacle6)))
  (:obstacle7
   (&rest __obstacle7)
   (if (keywordp (car __obstacle7))
       (send* _obstacle7 __obstacle7)
     (progn
       (if __obstacle7 (setq _obstacle7 (car __obstacle7)))
       _obstacle7)))
  (:obstacle8
   (&rest __obstacle8)
   (if (keywordp (car __obstacle8))
       (send* _obstacle8 __obstacle8)
     (progn
       (if __obstacle8 (setq _obstacle8 (car __obstacle8)))
       _obstacle8)))
  (:serialization-length
   ()
   (+
    ;; fukuro_common/Obstacle _obstacle1
    (send _obstacle1 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle2
    (send _obstacle2 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle3
    (send _obstacle3 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle4
    (send _obstacle4 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle5
    (send _obstacle5 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle6
    (send _obstacle6 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle7
    (send _obstacle7 :serialization-length)
    ;; fukuro_common/Obstacle _obstacle8
    (send _obstacle8 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fukuro_common/Obstacle _obstacle1
       (send _obstacle1 :serialize s)
     ;; fukuro_common/Obstacle _obstacle2
       (send _obstacle2 :serialize s)
     ;; fukuro_common/Obstacle _obstacle3
       (send _obstacle3 :serialize s)
     ;; fukuro_common/Obstacle _obstacle4
       (send _obstacle4 :serialize s)
     ;; fukuro_common/Obstacle _obstacle5
       (send _obstacle5 :serialize s)
     ;; fukuro_common/Obstacle _obstacle6
       (send _obstacle6 :serialize s)
     ;; fukuro_common/Obstacle _obstacle7
       (send _obstacle7 :serialize s)
     ;; fukuro_common/Obstacle _obstacle8
       (send _obstacle8 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fukuro_common/Obstacle _obstacle1
     (send _obstacle1 :deserialize buf ptr-) (incf ptr- (send _obstacle1 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle2
     (send _obstacle2 :deserialize buf ptr-) (incf ptr- (send _obstacle2 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle3
     (send _obstacle3 :deserialize buf ptr-) (incf ptr- (send _obstacle3 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle4
     (send _obstacle4 :deserialize buf ptr-) (incf ptr- (send _obstacle4 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle5
     (send _obstacle5 :deserialize buf ptr-) (incf ptr- (send _obstacle5 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle6
     (send _obstacle6 :deserialize buf ptr-) (incf ptr- (send _obstacle6 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle7
     (send _obstacle7 :deserialize buf ptr-) (incf ptr- (send _obstacle7 :serialization-length))
   ;; fukuro_common/Obstacle _obstacle8
     (send _obstacle8 :deserialize buf ptr-) (incf ptr- (send _obstacle8 :serialization-length))
   ;;
   self)
  )

(setf (get fukuro_common::StaticObstacle :md5sum-) "46d3fb587aed8a021e47dcb530b200ee")
(setf (get fukuro_common::StaticObstacle :datatype-) "fukuro_common/StaticObstacle")
(setf (get fukuro_common::StaticObstacle :definition-)
      "Obstacle obstacle1
Obstacle obstacle2
Obstacle obstacle3
Obstacle obstacle4
Obstacle obstacle5
Obstacle obstacle6
Obstacle obstacle7
Obstacle obstacle8
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



(provide :fukuro_common/StaticObstacle "46d3fb587aed8a021e47dcb530b200ee")


