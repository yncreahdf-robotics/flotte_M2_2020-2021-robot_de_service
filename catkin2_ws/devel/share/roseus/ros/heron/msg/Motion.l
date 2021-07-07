;; Auto-generated. Do not edit!


(when (boundp 'heron::Motion)
  (if (not (find-package "HERON"))
    (make-package "HERON"))
  (shadow 'Motion (find-package "HERON")))
(unless (find-package "HERON::MOTION")
  (make-package "HERON::MOTION"))

(in-package "ROS")
;;//! \htmlinclude Motion.msg.html


(defclass heron::Motion
  :super ros::object
  :slots (_position_x _position_y _orientation_z _orientation_w _plate_height ))

(defmethod heron::Motion
  (:init
   (&key
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:orientation_z __orientation_z) 0.0)
    ((:orientation_w __orientation_w) 0.0)
    ((:plate_height __plate_height) 0.0)
    )
   (send-super :init)
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _orientation_z (float __orientation_z))
   (setq _orientation_w (float __orientation_w))
   (setq _plate_height (float __plate_height))
   self)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:orientation_z
   (&optional __orientation_z)
   (if __orientation_z (setq _orientation_z __orientation_z)) _orientation_z)
  (:orientation_w
   (&optional __orientation_w)
   (if __orientation_w (setq _orientation_w __orientation_w)) _orientation_w)
  (:plate_height
   (&optional __plate_height)
   (if __plate_height (setq _plate_height __plate_height)) _plate_height)
  (:serialization-length
   ()
   (+
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; float32 _orientation_z
    4
    ;; float32 _orientation_w
    4
    ;; float32 _plate_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_z
       (sys::poke _orientation_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_w
       (sys::poke _orientation_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _plate_height
       (sys::poke _plate_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_z
     (setq _orientation_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_w
     (setq _orientation_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _plate_height
     (setq _plate_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get heron::Motion :md5sum-) "095414ef2073631e78bdbf064814a71b")
(setf (get heron::Motion :datatype-) "heron/Motion")
(setf (get heron::Motion :definition-)
      "float32 position_x
float32 position_y

float32 orientation_z
float32 orientation_w

float32 plate_height
")



(provide :heron/Motion "095414ef2073631e78bdbf064814a71b")


