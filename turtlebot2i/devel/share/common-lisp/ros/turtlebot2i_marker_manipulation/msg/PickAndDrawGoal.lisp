; Auto-generated. Do not edit!


(cl:in-package turtlebot2i_marker_manipulation-msg)


;//! \htmlinclude PickAndDrawGoal.msg.html

(cl:defclass <PickAndDrawGoal> (roslisp-msg-protocol:ros-message)
  ((frame
    :reader frame
    :initarg :frame
    :type cl:string
    :initform "")
   (gripper_open
    :reader gripper_open
    :initarg :gripper_open
    :type cl:float
    :initform 0.0)
   (gripper_closed
    :reader gripper_closed
    :initarg :gripper_closed
    :type cl:float
    :initform 0.0)
   (pickup_pose
    :reader pickup_pose
    :initarg :pickup_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (draw_pose
    :reader draw_pose
    :initarg :draw_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass PickAndDrawGoal (<PickAndDrawGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickAndDrawGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickAndDrawGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot2i_marker_manipulation-msg:<PickAndDrawGoal> is deprecated: use turtlebot2i_marker_manipulation-msg:PickAndDrawGoal instead.")))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <PickAndDrawGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_marker_manipulation-msg:frame-val is deprecated.  Use turtlebot2i_marker_manipulation-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'gripper_open-val :lambda-list '(m))
(cl:defmethod gripper_open-val ((m <PickAndDrawGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_marker_manipulation-msg:gripper_open-val is deprecated.  Use turtlebot2i_marker_manipulation-msg:gripper_open instead.")
  (gripper_open m))

(cl:ensure-generic-function 'gripper_closed-val :lambda-list '(m))
(cl:defmethod gripper_closed-val ((m <PickAndDrawGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_marker_manipulation-msg:gripper_closed-val is deprecated.  Use turtlebot2i_marker_manipulation-msg:gripper_closed instead.")
  (gripper_closed m))

(cl:ensure-generic-function 'pickup_pose-val :lambda-list '(m))
(cl:defmethod pickup_pose-val ((m <PickAndDrawGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_marker_manipulation-msg:pickup_pose-val is deprecated.  Use turtlebot2i_marker_manipulation-msg:pickup_pose instead.")
  (pickup_pose m))

(cl:ensure-generic-function 'draw_pose-val :lambda-list '(m))
(cl:defmethod draw_pose-val ((m <PickAndDrawGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_marker_manipulation-msg:draw_pose-val is deprecated.  Use turtlebot2i_marker_manipulation-msg:draw_pose instead.")
  (draw_pose m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <PickAndDrawGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_marker_manipulation-msg:topic-val is deprecated.  Use turtlebot2i_marker_manipulation-msg:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickAndDrawGoal>) ostream)
  "Serializes a message object of type '<PickAndDrawGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gripper_open))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gripper_closed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pickup_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'draw_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickAndDrawGoal>) istream)
  "Deserializes a message object of type '<PickAndDrawGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper_open) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper_closed) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pickup_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'draw_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickAndDrawGoal>)))
  "Returns string type for a message object of type '<PickAndDrawGoal>"
  "turtlebot2i_marker_manipulation/PickAndDrawGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickAndDrawGoal)))
  "Returns string type for a message object of type 'PickAndDrawGoal"
  "turtlebot2i_marker_manipulation/PickAndDrawGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickAndDrawGoal>)))
  "Returns md5sum for a message object of type '<PickAndDrawGoal>"
  "9383bb3006be8c9f40bc0d194a56a031")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickAndDrawGoal)))
  "Returns md5sum for a message object of type 'PickAndDrawGoal"
  "9383bb3006be8c9f40bc0d194a56a031")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickAndDrawGoal>)))
  "Returns full string definition for message of type '<PickAndDrawGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string frame~%float32 gripper_open~%float32 gripper_closed~%geometry_msgs/Pose pickup_pose~%geometry_msgs/Pose draw_pose~%string topic~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickAndDrawGoal)))
  "Returns full string definition for message of type 'PickAndDrawGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string frame~%float32 gripper_open~%float32 gripper_closed~%geometry_msgs/Pose pickup_pose~%geometry_msgs/Pose draw_pose~%string topic~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickAndDrawGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pickup_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'draw_pose))
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickAndDrawGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PickAndDrawGoal
    (cl:cons ':frame (frame msg))
    (cl:cons ':gripper_open (gripper_open msg))
    (cl:cons ':gripper_closed (gripper_closed msg))
    (cl:cons ':pickup_pose (pickup_pose msg))
    (cl:cons ':draw_pose (draw_pose msg))
    (cl:cons ':topic (topic msg))
))
