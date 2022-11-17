;; Auto-generated. Do not edit!


(when (boundp 'fukuro_common::StrategyInfo)
  (if (not (find-package "FUKURO_COMMON"))
    (make-package "FUKURO_COMMON"))
  (shadow 'StrategyInfo (find-package "FUKURO_COMMON")))
(unless (find-package "FUKURO_COMMON::STRATEGYINFO")
  (make-package "FUKURO_COMMON::STRATEGYINFO"))

(in-package "ROS")
;;//! \htmlinclude StrategyInfo.msg.html


(defclass fukuro_common::StrategyInfo
  :super ros::object
  :slots (_strategy_state _role _option _ball_passed _ready_receive ))

(defmethod fukuro_common::StrategyInfo
  (:init
   (&key
    ((:strategy_state __strategy_state) "")
    ((:role __role) "")
    ((:option __option) "")
    ((:ball_passed __ball_passed) nil)
    ((:ready_receive __ready_receive) nil)
    )
   (send-super :init)
   (setq _strategy_state (string __strategy_state))
   (setq _role (string __role))
   (setq _option (string __option))
   (setq _ball_passed __ball_passed)
   (setq _ready_receive __ready_receive)
   self)
  (:strategy_state
   (&optional __strategy_state)
   (if __strategy_state (setq _strategy_state __strategy_state)) _strategy_state)
  (:role
   (&optional __role)
   (if __role (setq _role __role)) _role)
  (:option
   (&optional __option)
   (if __option (setq _option __option)) _option)
  (:ball_passed
   (&optional (__ball_passed :null))
   (if (not (eq __ball_passed :null)) (setq _ball_passed __ball_passed)) _ball_passed)
  (:ready_receive
   (&optional (__ready_receive :null))
   (if (not (eq __ready_receive :null)) (setq _ready_receive __ready_receive)) _ready_receive)
  (:serialization-length
   ()
   (+
    ;; string _strategy_state
    4 (length _strategy_state)
    ;; string _role
    4 (length _role)
    ;; string _option
    4 (length _option)
    ;; bool _ball_passed
    1
    ;; bool _ready_receive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _strategy_state
       (write-long (length _strategy_state) s) (princ _strategy_state s)
     ;; string _role
       (write-long (length _role) s) (princ _role s)
     ;; string _option
       (write-long (length _option) s) (princ _option s)
     ;; bool _ball_passed
       (if _ball_passed (write-byte -1 s) (write-byte 0 s))
     ;; bool _ready_receive
       (if _ready_receive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _strategy_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strategy_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _role
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _role (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _option
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _option (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _ball_passed
     (setq _ball_passed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready_receive
     (setq _ready_receive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fukuro_common::StrategyInfo :md5sum-) "b91c76e9e4337807ddef2cd407b15d2a")
(setf (get fukuro_common::StrategyInfo :datatype-) "fukuro_common/StrategyInfo")
(setf (get fukuro_common::StrategyInfo :definition-)
      "string strategy_state
string role
string option
bool ball_passed
bool ready_receive
")



(provide :fukuro_common/StrategyInfo "b91c76e9e4337807ddef2cd407b15d2a")


