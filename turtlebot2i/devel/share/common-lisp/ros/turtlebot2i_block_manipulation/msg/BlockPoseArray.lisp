; Auto-generated. Do not edit!


(cl:in-package turtlebot2i_block_manipulation-msg)


;//! \htmlinclude BlockPoseArray.msg.html

(cl:defclass <BlockPoseArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector turtlebot2i_block_manipulation-msg:BlockPose)
   :initform (cl:make-array 0 :element-type 'turtlebot2i_block_manipulation-msg:BlockPose :initial-element (cl:make-instance 'turtlebot2i_block_manipulation-msg:BlockPose))))
)

(cl:defclass BlockPoseArray (<BlockPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlockPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlockPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot2i_block_manipulation-msg:<BlockPoseArray> is deprecated: use turtlebot2i_block_manipulation-msg:BlockPoseArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BlockPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_block_manipulation-msg:header-val is deprecated.  Use turtlebot2i_block_manipulation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <BlockPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_block_manipulation-msg:poses-val is deprecated.  Use turtlebot2i_block_manipulation-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlockPoseArray>) ostream)
  "Serializes a message object of type '<BlockPoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlockPoseArray>) istream)
  "Deserializes a message object of type '<BlockPoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'turtlebot2i_block_manipulation-msg:BlockPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlockPoseArray>)))
  "Returns string type for a message object of type '<BlockPoseArray>"
  "turtlebot2i_block_manipulation/BlockPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockPoseArray)))
  "Returns string type for a message object of type 'BlockPoseArray"
  "turtlebot2i_block_manipulation/BlockPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlockPoseArray>)))
  "Returns md5sum for a message object of type '<BlockPoseArray>"
  "0b9009808bd0695c0ca2990c0003dcea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlockPoseArray)))
  "Returns md5sum for a message object of type 'BlockPoseArray"
  "0b9009808bd0695c0ca2990c0003dcea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlockPoseArray>)))
  "Returns full string definition for message of type '<BlockPoseArray>"
  (cl:format cl:nil "std_msgs/Header header~%turtlebot2i_block_manipulation/BlockPose[] poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: turtlebot2i_block_manipulation/BlockPose~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%std_msgs/ColorRGBA color~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlockPoseArray)))
  "Returns full string definition for message of type 'BlockPoseArray"
  (cl:format cl:nil "std_msgs/Header header~%turtlebot2i_block_manipulation/BlockPose[] poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: turtlebot2i_block_manipulation/BlockPose~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%std_msgs/ColorRGBA color~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlockPoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlockPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BlockPoseArray
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
