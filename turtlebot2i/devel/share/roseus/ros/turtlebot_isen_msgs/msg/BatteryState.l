;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_isen_msgs::BatteryState)
  (if (not (find-package "TURTLEBOT_ISEN_MSGS"))
    (make-package "TURTLEBOT_ISEN_MSGS"))
  (shadow 'BatteryState (find-package "TURTLEBOT_ISEN_MSGS")))
(unless (find-package "TURTLEBOT_ISEN_MSGS::BATTERYSTATE")
  (make-package "TURTLEBOT_ISEN_MSGS::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html


(defclass turtlebot_isen_msgs::BatteryState
  :super ros::object
  :slots (_Charger _Battery ))

(defmethod turtlebot_isen_msgs::BatteryState
  (:init
   (&key
    ((:Charger __Charger) "")
    ((:Battery __Battery) 0.0)
    )
   (send-super :init)
   (setq _Charger (string __Charger))
   (setq _Battery (float __Battery))
   self)
  (:Charger
   (&optional __Charger)
   (if __Charger (setq _Charger __Charger)) _Charger)
  (:Battery
   (&optional __Battery)
   (if __Battery (setq _Battery __Battery)) _Battery)
  (:serialization-length
   ()
   (+
    ;; string _Charger
    4 (length _Charger)
    ;; float32 _Battery
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Charger
       (write-long (length _Charger) s) (princ _Charger s)
     ;; float32 _Battery
       (sys::poke _Battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Charger
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Charger (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _Battery
     (setq _Battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlebot_isen_msgs::BatteryState :md5sum-) "7d9e281ba46539ec900610c49fadf3ce")
(setf (get turtlebot_isen_msgs::BatteryState :datatype-) "turtlebot_isen_msgs/BatteryState")
(setf (get turtlebot_isen_msgs::BatteryState :definition-)
      "
string Charger

float32 Battery

")



(provide :turtlebot_isen_msgs/BatteryState "7d9e281ba46539ec900610c49fadf3ce")


