; Auto-generated. Do not edit!


(cl:in-package turtlebot2i_arm_director-msg)


;//! \htmlinclude NamedPoseDirectorActionFeedback.msg.html

(cl:defclass <NamedPoseDirectorActionFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (feedback
    :reader feedback
    :initarg :feedback
    :type turtlebot2i_arm_director-msg:NamedPoseDirectorFeedback
    :initform (cl:make-instance 'turtlebot2i_arm_director-msg:NamedPoseDirectorFeedback)))
)

(cl:defclass NamedPoseDirectorActionFeedback (<NamedPoseDirectorActionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NamedPoseDirectorActionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NamedPoseDirectorActionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot2i_arm_director-msg:<NamedPoseDirectorActionFeedback> is deprecated: use turtlebot2i_arm_director-msg:NamedPoseDirectorActionFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NamedPoseDirectorActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_arm_director-msg:header-val is deprecated.  Use turtlebot2i_arm_director-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NamedPoseDirectorActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_arm_director-msg:status-val is deprecated.  Use turtlebot2i_arm_director-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <NamedPoseDirectorActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_arm_director-msg:feedback-val is deprecated.  Use turtlebot2i_arm_director-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NamedPoseDirectorActionFeedback>) ostream)
  "Serializes a message object of type '<NamedPoseDirectorActionFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NamedPoseDirectorActionFeedback>) istream)
  "Deserializes a message object of type '<NamedPoseDirectorActionFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NamedPoseDirectorActionFeedback>)))
  "Returns string type for a message object of type '<NamedPoseDirectorActionFeedback>"
  "turtlebot2i_arm_director/NamedPoseDirectorActionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NamedPoseDirectorActionFeedback)))
  "Returns string type for a message object of type 'NamedPoseDirectorActionFeedback"
  "turtlebot2i_arm_director/NamedPoseDirectorActionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NamedPoseDirectorActionFeedback>)))
  "Returns md5sum for a message object of type '<NamedPoseDirectorActionFeedback>"
  "aae20e09065c3809e8a8e87c4c8953fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NamedPoseDirectorActionFeedback)))
  "Returns md5sum for a message object of type 'NamedPoseDirectorActionFeedback"
  "aae20e09065c3809e8a8e87c4c8953fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NamedPoseDirectorActionFeedback>)))
  "Returns full string definition for message of type '<NamedPoseDirectorActionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%NamedPoseDirectorFeedback feedback~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: turtlebot2i_arm_director/NamedPoseDirectorFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NamedPoseDirectorActionFeedback)))
  "Returns full string definition for message of type 'NamedPoseDirectorActionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%NamedPoseDirectorFeedback feedback~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: turtlebot2i_arm_director/NamedPoseDirectorFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NamedPoseDirectorActionFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NamedPoseDirectorActionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'NamedPoseDirectorActionFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':feedback (feedback msg))
))
