;; Auto-generated. Do not edit!


(when (boundp 'robotino_isen::AnnotatedPose)
  (if (not (find-package "ROBOTINO_ISEN"))
    (make-package "ROBOTINO_ISEN"))
  (shadow 'AnnotatedPose (find-package "ROBOTINO_ISEN")))
(unless (find-package "ROBOTINO_ISEN::ANNOTATEDPOSE")
  (make-package "ROBOTINO_ISEN::ANNOTATEDPOSE"))
(unless (find-package "ROBOTINO_ISEN::ANNOTATEDPOSEREQUEST")
  (make-package "ROBOTINO_ISEN::ANNOTATEDPOSEREQUEST"))
(unless (find-package "ROBOTINO_ISEN::ANNOTATEDPOSERESPONSE")
  (make-package "ROBOTINO_ISEN::ANNOTATEDPOSERESPONSE"))

(in-package "ROS")





(defclass robotino_isen::AnnotatedPoseRequest
  :super ros::object
  :slots (_annotatedPose ))

(defmethod robotino_isen::AnnotatedPoseRequest
  (:init
   (&key
    ((:annotatedPose __annotatedPose) (instance robotino_isen::AnnotatedPoses :init))
    )
   (send-super :init)
   (setq _annotatedPose __annotatedPose)
   self)
  (:annotatedPose
   (&rest __annotatedPose)
   (if (keywordp (car __annotatedPose))
       (send* _annotatedPose __annotatedPose)
     (progn
       (if __annotatedPose (setq _annotatedPose (car __annotatedPose)))
       _annotatedPose)))
  (:serialization-length
   ()
   (+
    ;; robotino_isen/AnnotatedPoses _annotatedPose
    (send _annotatedPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotino_isen/AnnotatedPoses _annotatedPose
       (send _annotatedPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotino_isen/AnnotatedPoses _annotatedPose
     (send _annotatedPose :deserialize buf ptr-) (incf ptr- (send _annotatedPose :serialization-length))
   ;;
   self)
  )

(defclass robotino_isen::AnnotatedPoseResponse
  :super ros::object
  :slots ())

(defmethod robotino_isen::AnnotatedPoseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robotino_isen::AnnotatedPose
  :super ros::object
  :slots ())

(setf (get robotino_isen::AnnotatedPose :md5sum-) "4d0ccfa12f5e09103ce667ff0b82b210")
(setf (get robotino_isen::AnnotatedPose :datatype-) "robotino_isen/AnnotatedPose")
(setf (get robotino_isen::AnnotatedPose :request) robotino_isen::AnnotatedPoseRequest)
(setf (get robotino_isen::AnnotatedPose :response) robotino_isen::AnnotatedPoseResponse)

(defmethod robotino_isen::AnnotatedPoseRequest
  (:response () (instance robotino_isen::AnnotatedPoseResponse :init)))

(setf (get robotino_isen::AnnotatedPoseRequest :md5sum-) "4d0ccfa12f5e09103ce667ff0b82b210")
(setf (get robotino_isen::AnnotatedPoseRequest :datatype-) "robotino_isen/AnnotatedPoseRequest")
(setf (get robotino_isen::AnnotatedPoseRequest :definition-)
      "AnnotatedPoses annotatedPose

================================================================================
MSG: robotino_isen/AnnotatedPoses
string name
geometry_msgs/Point pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")

(setf (get robotino_isen::AnnotatedPoseResponse :md5sum-) "4d0ccfa12f5e09103ce667ff0b82b210")
(setf (get robotino_isen::AnnotatedPoseResponse :datatype-) "robotino_isen/AnnotatedPoseResponse")
(setf (get robotino_isen::AnnotatedPoseResponse :definition-)
      "AnnotatedPoses annotatedPose

================================================================================
MSG: robotino_isen/AnnotatedPoses
string name
geometry_msgs/Point pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")



(provide :robotino_isen/AnnotatedPose "4d0ccfa12f5e09103ce667ff0b82b210")


