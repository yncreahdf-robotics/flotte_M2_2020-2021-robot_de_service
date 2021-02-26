;; Auto-generated. Do not edit!


(when (boundp 'coulomb_counter_cc75_ros::ValueUnitInt)
  (if (not (find-package "COULOMB_COUNTER_CC75_ROS"))
    (make-package "COULOMB_COUNTER_CC75_ROS"))
  (shadow 'ValueUnitInt (find-package "COULOMB_COUNTER_CC75_ROS")))
(unless (find-package "COULOMB_COUNTER_CC75_ROS::VALUEUNITINT")
  (make-package "COULOMB_COUNTER_CC75_ROS::VALUEUNITINT"))

(in-package "ROS")
;;//! \htmlinclude ValueUnitInt.msg.html


(defclass coulomb_counter_cc75_ros::ValueUnitInt
  :super ros::object
  :slots (_value _unit ))

(defmethod coulomb_counter_cc75_ros::ValueUnitInt
  (:init
   (&key
    ((:value __value) 0)
    ((:unit __unit) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _unit (string __unit))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:serialization-length
   ()
   (+
    ;; uint64 _value
    8
    ;; string _unit
    4 (length _unit)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _value
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value) (= (length (_value . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value . bv) 0) 0) s)
              (write-long (ash (elt (_value . bv) 1) -1) s))
             ((and (class _value) (= (length (_value . bv)) 1)) ;; big1
              (write-long (elt (_value . bv) 0) s)
              (write-long (if (>= _value 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value s)(write-long (if (>= _value 0) 0 #xffffffff) s)))
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _value
     
#+(or :alpha :irix6 :x86_64)
      (setf _value (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get coulomb_counter_cc75_ros::ValueUnitInt :md5sum-) "32ce32447b073bfe214d2602da608273")
(setf (get coulomb_counter_cc75_ros::ValueUnitInt :datatype-) "coulomb_counter_cc75_ros/ValueUnitInt")
(setf (get coulomb_counter_cc75_ros::ValueUnitInt :definition-)
      "uint64 value
string unit

")



(provide :coulomb_counter_cc75_ros/ValueUnitInt "32ce32447b073bfe214d2602da608273")


