; Auto-generated. Do not edit!


(cl:in-package turtlebot2i_block_manipulation-msg)


;//! \htmlinclude BlockDetectionFeedback.msg.html

(cl:defclass <BlockDetectionFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BlockDetectionFeedback (<BlockDetectionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlockDetectionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlockDetectionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot2i_block_manipulation-msg:<BlockDetectionFeedback> is deprecated: use turtlebot2i_block_manipulation-msg:BlockDetectionFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlockDetectionFeedback>) ostream)
  "Serializes a message object of type '<BlockDetectionFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlockDetectionFeedback>) istream)
  "Deserializes a message object of type '<BlockDetectionFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlockDetectionFeedback>)))
  "Returns string type for a message object of type '<BlockDetectionFeedback>"
  "turtlebot2i_block_manipulation/BlockDetectionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockDetectionFeedback)))
  "Returns string type for a message object of type 'BlockDetectionFeedback"
  "turtlebot2i_block_manipulation/BlockDetectionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlockDetectionFeedback>)))
  "Returns md5sum for a message object of type '<BlockDetectionFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlockDetectionFeedback)))
  "Returns md5sum for a message object of type 'BlockDetectionFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlockDetectionFeedback>)))
  "Returns full string definition for message of type '<BlockDetectionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlockDetectionFeedback)))
  "Returns full string definition for message of type 'BlockDetectionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlockDetectionFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlockDetectionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'BlockDetectionFeedback
))
