;; Auto-generated. Do not edit!


(when (boundp 'robotino_isen::AnnotatedPoses)
  (if (not (find-package "ROBOTINO_ISEN"))
    (make-package "ROBOTINO_ISEN"))
  (shadow 'AnnotatedPoses (find-package "ROBOTINO_ISEN")))
(unless (find-package "ROBOTINO_ISEN::ANNOTATEDPOSES")
  (make-package "ROBOTINO_ISEN::ANNOTATEDPOSES"))

(in-package "ROS")
;;//! \htmlinclude AnnotatedPoses.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotino_isen::AnnotatedPoses
  :super ros::object
  :slots (_name _pose ))

(defmethod robotino_isen::AnnotatedPoses
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Point _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Point _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get robotino_isen::AnnotatedPoses :md5sum-) "75e825a453c409c5eb9493536e0300c0")
(setf (get robotino_isen::AnnotatedPoses :datatype-) "robotino_isen/AnnotatedPoses")
(setf (get robotino_isen::AnnotatedPoses :definition-)
      "string name
geometry_msgs/Point pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :robotino_isen/AnnotatedPoses "75e825a453c409c5eb9493536e0300c0")


