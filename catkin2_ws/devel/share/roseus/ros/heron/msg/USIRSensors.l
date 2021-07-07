;; Auto-generated. Do not edit!


(when (boundp 'heron::USIRSensors)
  (if (not (find-package "HERON"))
    (make-package "HERON"))
  (shadow 'USIRSensors (find-package "HERON")))
(unless (find-package "HERON::USIRSENSORS")
  (make-package "HERON::USIRSENSORS"))

(in-package "ROS")
;;//! \htmlinclude USIRSensors.msg.html


(defclass heron::USIRSensors
  :super ros::object
  :slots (_gauche _droit ))

(defmethod heron::USIRSensors
  (:init
   (&key
    ((:gauche __gauche) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    ((:droit __droit) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    )
   (send-super :init)
   (setq _gauche __gauche)
   (setq _droit __droit)
   self)
  (:gauche
   (&rest __gauche)
   (if (keywordp (car __gauche))
       (send* _gauche __gauche)
     (progn
       (if __gauche (setq _gauche (car __gauche)))
       _gauche)))
  (:droit
   (&rest __droit)
   (if (keywordp (car __droit))
       (send* _droit __droit)
     (progn
       (if __droit (setq _droit (car __droit)))
       _droit)))
  (:serialization-length
   ()
   (+
    ;; heron/ValueUnitFloat[4] _gauche
    (apply #'+ (send-all _gauche :serialization-length))
    ;; heron/ValueUnitFloat[4] _droit
    (apply #'+ (send-all _droit :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; heron/ValueUnitFloat[4] _gauche
     (dolist (elem _gauche)
       (send elem :serialize s)
       )
     ;; heron/ValueUnitFloat[4] _droit
     (dolist (elem _droit)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; heron/ValueUnitFloat[4] _gauche
   (dotimes (i 4)
     (send (elt _gauche i) :deserialize buf ptr-) (incf ptr- (send (elt _gauche i) :serialization-length))
     )
   ;; heron/ValueUnitFloat[4] _droit
   (dotimes (i 4)
     (send (elt _droit i) :deserialize buf ptr-) (incf ptr- (send (elt _droit i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get heron::USIRSensors :md5sum-) "ec3639fb43a99ba8f34b5269205642b7")
(setf (get heron::USIRSensors :datatype-) "heron/USIRSensors")
(setf (get heron::USIRSensors :definition-)
      "ValueUnitFloat[4] gauche
ValueUnitFloat[4] droit

================================================================================
MSG: heron/ValueUnitFloat
float64 value
string unit

")



(provide :heron/USIRSensors "ec3639fb43a99ba8f34b5269205642b7")


