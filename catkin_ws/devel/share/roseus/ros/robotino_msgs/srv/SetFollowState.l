;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::SetFollowState)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'SetFollowState (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::SETFOLLOWSTATE")
  (make-package "ROBOTINO_MSGS::SETFOLLOWSTATE"))
(unless (find-package "ROBOTINO_MSGS::SETFOLLOWSTATEREQUEST")
  (make-package "ROBOTINO_MSGS::SETFOLLOWSTATEREQUEST"))
(unless (find-package "ROBOTINO_MSGS::SETFOLLOWSTATERESPONSE")
  (make-package "ROBOTINO_MSGS::SETFOLLOWSTATERESPONSE"))

(in-package "ROS")





(intern "*STOPPED*" (find-package "ROBOTINO_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*STOPPED* (find-package "ROBOTINO_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant robotino_msgs::SetFollowStateRequest::*STOPPED* 0)
(intern "*FOLLOW*" (find-package "ROBOTINO_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*FOLLOW* (find-package "ROBOTINO_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant robotino_msgs::SetFollowStateRequest::*FOLLOW* 1)
(defclass robotino_msgs::SetFollowStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robotino_msgs::SetFollowStateRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(intern "*OK*" (find-package "ROBOTINO_MSGS::SETFOLLOWSTATERESPONSE"))
(shadow '*OK* (find-package "ROBOTINO_MSGS::SETFOLLOWSTATERESPONSE"))
(defconstant robotino_msgs::SetFollowStateResponse::*OK* 0)
(intern "*ERROR*" (find-package "ROBOTINO_MSGS::SETFOLLOWSTATERESPONSE"))
(shadow '*ERROR* (find-package "ROBOTINO_MSGS::SETFOLLOWSTATERESPONSE"))
(defconstant robotino_msgs::SetFollowStateResponse::*ERROR* 1)
(defclass robotino_msgs::SetFollowStateResponse
  :super ros::object
  :slots (_result ))

(defmethod robotino_msgs::SetFollowStateResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotino_msgs::SetFollowState
  :super ros::object
  :slots ())

(setf (get robotino_msgs::SetFollowState :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get robotino_msgs::SetFollowState :datatype-) "robotino_msgs/SetFollowState")
(setf (get robotino_msgs::SetFollowState :request) robotino_msgs::SetFollowStateRequest)
(setf (get robotino_msgs::SetFollowState :response) robotino_msgs::SetFollowStateResponse)

(defmethod robotino_msgs::SetFollowStateRequest
  (:response () (instance robotino_msgs::SetFollowStateResponse :init)))

(setf (get robotino_msgs::SetFollowStateRequest :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get robotino_msgs::SetFollowStateRequest :datatype-) "robotino_msgs/SetFollowStateRequest")
(setf (get robotino_msgs::SetFollowStateRequest :definition-)
      "uint8 STOPPED = 0
uint8 FOLLOW  = 1


uint8 state

---

uint8 OK    = 0
uint8 ERROR = 1

uint8 result

")

(setf (get robotino_msgs::SetFollowStateResponse :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get robotino_msgs::SetFollowStateResponse :datatype-) "robotino_msgs/SetFollowStateResponse")
(setf (get robotino_msgs::SetFollowStateResponse :definition-)
      "uint8 STOPPED = 0
uint8 FOLLOW  = 1


uint8 state

---

uint8 OK    = 0
uint8 ERROR = 1

uint8 result

")



(provide :robotino_msgs/SetFollowState "6095eaec0ed61c547340fdc2200c8372")


