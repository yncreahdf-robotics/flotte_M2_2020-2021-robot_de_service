;; Auto-generated. Do not edit!


(when (boundp 'heron_isen::ValueUnitFloat)
  (if (not (find-package "HERON_ISEN"))
    (make-package "HERON_ISEN"))
  (shadow 'ValueUnitFloat (find-package "HERON_ISEN")))
(unless (find-package "HERON_ISEN::VALUEUNITFLOAT")
  (make-package "HERON_ISEN::VALUEUNITFLOAT"))

(in-package "ROS")
;;//! \htmlinclude ValueUnitFloat.msg.html


(defclass heron_isen::ValueUnitFloat
  :super ros::object
  :slots (_value _unit ))

(defmethod heron_isen::ValueUnitFloat
  (:init
   (&key
    ((:value __value) 0.0)
    ((:unit __unit) "")
    )
   (send-super :init)
   (setq _value (float __value))
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
    ;; float64 _value
    8
    ;; string _unit
    4 (length _unit)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get heron_isen::ValueUnitFloat :md5sum-) "803cb15f868348d3b538d02fa83781fa")
(setf (get heron_isen::ValueUnitFloat :datatype-) "heron_isen/ValueUnitFloat")
(setf (get heron_isen::ValueUnitFloat :definition-)
      "float64 value
string unit

")



(provide :heron_isen/ValueUnitFloat "803cb15f868348d3b538d02fa83781fa")


