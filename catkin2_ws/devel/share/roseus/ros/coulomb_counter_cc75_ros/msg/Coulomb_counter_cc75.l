;; Auto-generated. Do not edit!


(when (boundp 'coulomb_counter_cc75_ros::Coulomb_counter_cc75)
  (if (not (find-package "COULOMB_COUNTER_CC75_ROS"))
    (make-package "COULOMB_COUNTER_CC75_ROS"))
  (shadow 'Coulomb_counter_cc75 (find-package "COULOMB_COUNTER_CC75_ROS")))
(unless (find-package "COULOMB_COUNTER_CC75_ROS::COULOMB_COUNTER_CC75")
  (make-package "COULOMB_COUNTER_CC75_ROS::COULOMB_COUNTER_CC75"))

(in-package "ROS")
;;//! \htmlinclude Coulomb_counter_cc75.msg.html


(defclass coulomb_counter_cc75_ros::Coulomb_counter_cc75
  :super ros::object
  :slots (_percentage _voltage _capacity _current _remaining_time _power ))

(defmethod coulomb_counter_cc75_ros::Coulomb_counter_cc75
  (:init
   (&key
    ((:percentage __percentage) (instance coulomb_counter_cc75_ros::ValueUnitInt :init))
    ((:voltage __voltage) (instance coulomb_counter_cc75_ros::ValueUnitFloat :init))
    ((:capacity __capacity) (instance coulomb_counter_cc75_ros::ValueUnitFloat :init))
    ((:current __current) (instance coulomb_counter_cc75_ros::ValueUnitFloat :init))
    ((:remaining_time __remaining_time) (instance coulomb_counter_cc75_ros::ValueUnitInt :init))
    ((:power __power) (instance coulomb_counter_cc75_ros::ValueUnitFloat :init))
    )
   (send-super :init)
   (setq _percentage __percentage)
   (setq _voltage __voltage)
   (setq _capacity __capacity)
   (setq _current __current)
   (setq _remaining_time __remaining_time)
   (setq _power __power)
   self)
  (:percentage
   (&rest __percentage)
   (if (keywordp (car __percentage))
       (send* _percentage __percentage)
     (progn
       (if __percentage (setq _percentage (car __percentage)))
       _percentage)))
  (:voltage
   (&rest __voltage)
   (if (keywordp (car __voltage))
       (send* _voltage __voltage)
     (progn
       (if __voltage (setq _voltage (car __voltage)))
       _voltage)))
  (:capacity
   (&rest __capacity)
   (if (keywordp (car __capacity))
       (send* _capacity __capacity)
     (progn
       (if __capacity (setq _capacity (car __capacity)))
       _capacity)))
  (:current
   (&rest __current)
   (if (keywordp (car __current))
       (send* _current __current)
     (progn
       (if __current (setq _current (car __current)))
       _current)))
  (:remaining_time
   (&rest __remaining_time)
   (if (keywordp (car __remaining_time))
       (send* _remaining_time __remaining_time)
     (progn
       (if __remaining_time (setq _remaining_time (car __remaining_time)))
       _remaining_time)))
  (:power
   (&rest __power)
   (if (keywordp (car __power))
       (send* _power __power)
     (progn
       (if __power (setq _power (car __power)))
       _power)))
  (:serialization-length
   ()
   (+
    ;; coulomb_counter_cc75_ros/ValueUnitInt _percentage
    (send _percentage :serialization-length)
    ;; coulomb_counter_cc75_ros/ValueUnitFloat _voltage
    (send _voltage :serialization-length)
    ;; coulomb_counter_cc75_ros/ValueUnitFloat _capacity
    (send _capacity :serialization-length)
    ;; coulomb_counter_cc75_ros/ValueUnitFloat _current
    (send _current :serialization-length)
    ;; coulomb_counter_cc75_ros/ValueUnitInt _remaining_time
    (send _remaining_time :serialization-length)
    ;; coulomb_counter_cc75_ros/ValueUnitFloat _power
    (send _power :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; coulomb_counter_cc75_ros/ValueUnitInt _percentage
       (send _percentage :serialize s)
     ;; coulomb_counter_cc75_ros/ValueUnitFloat _voltage
       (send _voltage :serialize s)
     ;; coulomb_counter_cc75_ros/ValueUnitFloat _capacity
       (send _capacity :serialize s)
     ;; coulomb_counter_cc75_ros/ValueUnitFloat _current
       (send _current :serialize s)
     ;; coulomb_counter_cc75_ros/ValueUnitInt _remaining_time
       (send _remaining_time :serialize s)
     ;; coulomb_counter_cc75_ros/ValueUnitFloat _power
       (send _power :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; coulomb_counter_cc75_ros/ValueUnitInt _percentage
     (send _percentage :deserialize buf ptr-) (incf ptr- (send _percentage :serialization-length))
   ;; coulomb_counter_cc75_ros/ValueUnitFloat _voltage
     (send _voltage :deserialize buf ptr-) (incf ptr- (send _voltage :serialization-length))
   ;; coulomb_counter_cc75_ros/ValueUnitFloat _capacity
     (send _capacity :deserialize buf ptr-) (incf ptr- (send _capacity :serialization-length))
   ;; coulomb_counter_cc75_ros/ValueUnitFloat _current
     (send _current :deserialize buf ptr-) (incf ptr- (send _current :serialization-length))
   ;; coulomb_counter_cc75_ros/ValueUnitInt _remaining_time
     (send _remaining_time :deserialize buf ptr-) (incf ptr- (send _remaining_time :serialization-length))
   ;; coulomb_counter_cc75_ros/ValueUnitFloat _power
     (send _power :deserialize buf ptr-) (incf ptr- (send _power :serialization-length))
   ;;
   self)
  )

(setf (get coulomb_counter_cc75_ros::Coulomb_counter_cc75 :md5sum-) "a1bb334f77b5f975a6c36fc77930ac52")
(setf (get coulomb_counter_cc75_ros::Coulomb_counter_cc75 :datatype-) "coulomb_counter_cc75_ros/Coulomb_counter_cc75")
(setf (get coulomb_counter_cc75_ros::Coulomb_counter_cc75 :definition-)
      "ValueUnitInt percentage
ValueUnitFloat voltage
ValueUnitFloat capacity
ValueUnitFloat current
ValueUnitInt remaining_time
ValueUnitFloat power

================================================================================
MSG: coulomb_counter_cc75_ros/ValueUnitInt
uint64 value
string unit

================================================================================
MSG: coulomb_counter_cc75_ros/ValueUnitFloat
float64 value
string unit

")



(provide :coulomb_counter_cc75_ros/Coulomb_counter_cc75 "a1bb334f77b5f975a6c36fc77930ac52")


