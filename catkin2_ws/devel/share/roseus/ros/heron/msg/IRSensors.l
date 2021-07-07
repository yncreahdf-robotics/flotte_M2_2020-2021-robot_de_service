;; Auto-generated. Do not edit!


(when (boundp 'heron::IRSensors)
  (if (not (find-package "HERON"))
    (make-package "HERON"))
  (shadow 'IRSensors (find-package "HERON")))
(unless (find-package "HERON::IRSENSORS")
  (make-package "HERON::IRSENSORS"))

(in-package "ROS")
;;//! \htmlinclude IRSensors.msg.html


(defclass heron::IRSensors
  :super ros::object
  :slots (_av_gauche _av_droit _ar_gauche _ar_droit _ar ))

(defmethod heron::IRSensors
  (:init
   (&key
    ((:av_gauche __av_gauche) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    ((:av_droit __av_droit) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    ((:ar_gauche __ar_gauche) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    ((:ar_droit __ar_droit) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    ((:ar __ar) (let (r) (dotimes (i 4) (push (instance heron::ValueUnitFloat :init) r)) r))
    )
   (send-super :init)
   (setq _av_gauche __av_gauche)
   (setq _av_droit __av_droit)
   (setq _ar_gauche __ar_gauche)
   (setq _ar_droit __ar_droit)
   (setq _ar __ar)
   self)
  (:av_gauche
   (&rest __av_gauche)
   (if (keywordp (car __av_gauche))
       (send* _av_gauche __av_gauche)
     (progn
       (if __av_gauche (setq _av_gauche (car __av_gauche)))
       _av_gauche)))
  (:av_droit
   (&rest __av_droit)
   (if (keywordp (car __av_droit))
       (send* _av_droit __av_droit)
     (progn
       (if __av_droit (setq _av_droit (car __av_droit)))
       _av_droit)))
  (:ar_gauche
   (&rest __ar_gauche)
   (if (keywordp (car __ar_gauche))
       (send* _ar_gauche __ar_gauche)
     (progn
       (if __ar_gauche (setq _ar_gauche (car __ar_gauche)))
       _ar_gauche)))
  (:ar_droit
   (&rest __ar_droit)
   (if (keywordp (car __ar_droit))
       (send* _ar_droit __ar_droit)
     (progn
       (if __ar_droit (setq _ar_droit (car __ar_droit)))
       _ar_droit)))
  (:ar
   (&rest __ar)
   (if (keywordp (car __ar))
       (send* _ar __ar)
     (progn
       (if __ar (setq _ar (car __ar)))
       _ar)))
  (:serialization-length
   ()
   (+
    ;; heron/ValueUnitFloat[4] _av_gauche
    (apply #'+ (send-all _av_gauche :serialization-length))
    ;; heron/ValueUnitFloat[4] _av_droit
    (apply #'+ (send-all _av_droit :serialization-length))
    ;; heron/ValueUnitFloat[4] _ar_gauche
    (apply #'+ (send-all _ar_gauche :serialization-length))
    ;; heron/ValueUnitFloat[4] _ar_droit
    (apply #'+ (send-all _ar_droit :serialization-length))
    ;; heron/ValueUnitFloat[4] _ar
    (apply #'+ (send-all _ar :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; heron/ValueUnitFloat[4] _av_gauche
     (dolist (elem _av_gauche)
       (send elem :serialize s)
       )
     ;; heron/ValueUnitFloat[4] _av_droit
     (dolist (elem _av_droit)
       (send elem :serialize s)
       )
     ;; heron/ValueUnitFloat[4] _ar_gauche
     (dolist (elem _ar_gauche)
       (send elem :serialize s)
       )
     ;; heron/ValueUnitFloat[4] _ar_droit
     (dolist (elem _ar_droit)
       (send elem :serialize s)
       )
     ;; heron/ValueUnitFloat[4] _ar
     (dolist (elem _ar)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; heron/ValueUnitFloat[4] _av_gauche
   (dotimes (i 4)
     (send (elt _av_gauche i) :deserialize buf ptr-) (incf ptr- (send (elt _av_gauche i) :serialization-length))
     )
   ;; heron/ValueUnitFloat[4] _av_droit
   (dotimes (i 4)
     (send (elt _av_droit i) :deserialize buf ptr-) (incf ptr- (send (elt _av_droit i) :serialization-length))
     )
   ;; heron/ValueUnitFloat[4] _ar_gauche
   (dotimes (i 4)
     (send (elt _ar_gauche i) :deserialize buf ptr-) (incf ptr- (send (elt _ar_gauche i) :serialization-length))
     )
   ;; heron/ValueUnitFloat[4] _ar_droit
   (dotimes (i 4)
     (send (elt _ar_droit i) :deserialize buf ptr-) (incf ptr- (send (elt _ar_droit i) :serialization-length))
     )
   ;; heron/ValueUnitFloat[4] _ar
   (dotimes (i 4)
     (send (elt _ar i) :deserialize buf ptr-) (incf ptr- (send (elt _ar i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get heron::IRSensors :md5sum-) "d2d4f6afdad29c06c7d455d83f2670d6")
(setf (get heron::IRSensors :datatype-) "heron/IRSensors")
(setf (get heron::IRSensors :definition-)
      "ValueUnitFloat[4] av_gauche
ValueUnitFloat[4] av_droit
ValueUnitFloat[4] ar_gauche
ValueUnitFloat[4] ar_droit
ValueUnitFloat[4] ar

================================================================================
MSG: heron/ValueUnitFloat
float64 value
string unit

")



(provide :heron/IRSensors "d2d4f6afdad29c06c7d455d83f2670d6")


