; Auto-generated. Do not edit!


(cl:in-package turtlebot2i_block_manipulation-msg)


;//! \htmlinclude BlockPose.msg.html

(cl:defclass <BlockPose> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass BlockPose (<BlockPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlockPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlockPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot2i_block_manipulation-msg:<BlockPose> is deprecated: use turtlebot2i_block_manipulation-msg:BlockPose instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <BlockPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_block_manipulation-msg:position-val is deprecated.  Use turtlebot2i_block_manipulation-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <BlockPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_block_manipulation-msg:orientation-val is deprecated.  Use turtlebot2i_block_manipulation-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <BlockPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot2i_block_manipulation-msg:color-val is deprecated.  Use turtlebot2i_block_manipulation-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlockPose>) ostream)
  "Serializes a message object of type '<BlockPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlockPose>) istream)
  "Deserializes a message object of type '<BlockPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlockPose>)))
  "Returns string type for a message object of type '<BlockPose>"
  "turtlebot2i_block_manipulation/BlockPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockPose)))
  "Returns string type for a message object of type 'BlockPose"
  "turtlebot2i_block_manipulation/BlockPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlockPose>)))
  "Returns md5sum for a message object of type '<BlockPose>"
  "d8177f1ddf34f13385e0621f5b132e51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlockPose)))
  "Returns md5sum for a message object of type 'BlockPose"
  "d8177f1ddf34f13385e0621f5b132e51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlockPose>)))
  "Returns full string definition for message of type '<BlockPose>"
  (cl:format cl:nil "geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%std_msgs/ColorRGBA color~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlockPose)))
  "Returns full string definition for message of type 'BlockPose"
  (cl:format cl:nil "geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%std_msgs/ColorRGBA color~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlockPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlockPose>))
  "Converts a ROS message object to a list"
  (cl:list 'BlockPose
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':color (color msg))
))
