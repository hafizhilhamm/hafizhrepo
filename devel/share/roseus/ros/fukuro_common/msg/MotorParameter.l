;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::MotorParameter)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'MotorParameter (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::MOTORPARAMETER")
  (make-package "FUKURO_COMMON::MOTORPARAMETER"))

(in-package "ROS")
;;//! \htmlinclude MotorParameter.msg.html


(defclass fukuro_common::MotorParameter
  :super ros::object
  :slots (_n_speed _motor1 _motor2 _motor3 ))

(defmethod fukuro_common::MotorParameter
  (:init
   (&key
    ((:n_speed __n_speed) 0)
    ((:motor1 __motor1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor2 __motor2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor3 __motor3) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _n_speed (round __n_speed))
   (setq _motor1 __motor1)
   (setq _motor2 __motor2)
   (setq _motor3 __motor3)
   self)
  (:n_speed
   (&optional __n_speed)
   (if __n_speed (setq _n_speed __n_speed)) _n_speed)
  (:motor1
   (&optional __motor1)
   (if __motor1 (setq _motor1 __motor1)) _motor1)
  (:motor2
   (&optional __motor2)
   (if __motor2 (setq _motor2 __motor2)) _motor2)
  (:motor3
   (&optional __motor3)
   (if __motor3 (setq _motor3 __motor3)) _motor3)
  (:serialization-length
   ()
   (+
    ;; int8 _n_speed
    1
    ;; float64[] _motor1
    (* 8    (length _motor1)) 4
    ;; float64[] _motor2
    (* 8    (length _motor2)) 4
    ;; float64[] _motor3
    (* 8    (length _motor3)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _n_speed
       (write-byte _n_speed s)
     ;; float64[] _motor1
     (write-long (length _motor1) s)
     (dotimes (i (length _motor1))
       (sys::poke (elt _motor1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor2
     (write-long (length _motor2) s)
     (dotimes (i (length _motor2))
       (sys::poke (elt _motor2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor3
     (write-long (length _motor3) s)
     (dotimes (i (length _motor3))
       (sys::poke (elt _motor3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _n_speed
     (setq _n_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _n_speed 127) (setq _n_speed (- _n_speed 256)))
   ;; float64[] _motor1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get fukuro_common::MotorParameter :md5sum-) "8645ce99acc3de9f5817e6d22e97aae7")
(setf (get fukuro_common::MotorParameter :datatype-) "fukuro_common/MotorParameter")
(setf (get fukuro_common::MotorParameter :definition-)
      "int8 n_speed
float64[] motor1
float64[] motor2
float64[] motor3
")



(provide :fukuro_common/MotorParameter "8645ce99acc3de9f5817e6d22e97aae7")


