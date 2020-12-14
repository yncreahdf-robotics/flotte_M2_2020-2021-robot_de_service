; Auto-generated. Do not edit!


(cl:in-package robotino_isen-srv)


;//! \htmlinclude AnnotatedPose-request.msg.html

(cl:defclass <AnnotatedPose-request> (roslisp-msg-protocol:ros-message)
  ((annotatedPose
    :reader annotatedPose
    :initarg :annotatedPose
    :type robotino_isen-msg:AnnotatedPoses
    :initform (cl:make-instance 'robotino_isen-msg:AnnotatedPoses)))
)

(cl:defclass AnnotatedPose-request (<AnnotatedPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_isen-srv:<AnnotatedPose-request> is deprecated: use robotino_isen-srv:AnnotatedPose-request instead.")))

(cl:ensure-generic-function 'annotatedPose-val :lambda-list '(m))
(cl:defmethod annotatedPose-val ((m <AnnotatedPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_isen-srv:annotatedPose-val is deprecated.  Use robotino_isen-srv:annotatedPose instead.")
  (annotatedPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedPose-request>) ostream)
  "Serializes a message object of type '<AnnotatedPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'annotatedPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedPose-request>) istream)
  "Deserializes a message object of type '<AnnotatedPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'annotatedPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedPose-request>)))
  "Returns string type for a service object of type '<AnnotatedPose-request>"
  "robotino_isen/AnnotatedPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPose-request)))
  "Returns string type for a service object of type 'AnnotatedPose-request"
  "robotino_isen/AnnotatedPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedPose-request>)))
  "Returns md5sum for a message object of type '<AnnotatedPose-request>"
  "4d0ccfa12f5e09103ce667ff0b82b210")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedPose-request)))
  "Returns md5sum for a message object of type 'AnnotatedPose-request"
  "4d0ccfa12f5e09103ce667ff0b82b210")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedPose-request>)))
  "Returns full string definition for message of type '<AnnotatedPose-request>"
  (cl:format cl:nil "AnnotatedPoses annotatedPose~%~%================================================================================~%MSG: robotino_isen/AnnotatedPoses~%string name~%geometry_msgs/Point pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedPose-request)))
  "Returns full string definition for message of type 'AnnotatedPose-request"
  (cl:format cl:nil "AnnotatedPoses annotatedPose~%~%================================================================================~%MSG: robotino_isen/AnnotatedPoses~%string name~%geometry_msgs/Point pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'annotatedPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedPose-request
    (cl:cons ':annotatedPose (annotatedPose msg))
))
;//! \htmlinclude AnnotatedPose-response.msg.html

(cl:defclass <AnnotatedPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AnnotatedPose-response (<AnnotatedPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_isen-srv:<AnnotatedPose-response> is deprecated: use robotino_isen-srv:AnnotatedPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedPose-response>) ostream)
  "Serializes a message object of type '<AnnotatedPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedPose-response>) istream)
  "Deserializes a message object of type '<AnnotatedPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedPose-response>)))
  "Returns string type for a service object of type '<AnnotatedPose-response>"
  "robotino_isen/AnnotatedPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPose-response)))
  "Returns string type for a service object of type 'AnnotatedPose-response"
  "robotino_isen/AnnotatedPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedPose-response>)))
  "Returns md5sum for a message object of type '<AnnotatedPose-response>"
  "4d0ccfa12f5e09103ce667ff0b82b210")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedPose-response)))
  "Returns md5sum for a message object of type 'AnnotatedPose-response"
  "4d0ccfa12f5e09103ce667ff0b82b210")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedPose-response>)))
  "Returns full string definition for message of type '<AnnotatedPose-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedPose-response)))
  "Returns full string definition for message of type 'AnnotatedPose-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AnnotatedPose)))
  'AnnotatedPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AnnotatedPose)))
  'AnnotatedPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPose)))
  "Returns string type for a service object of type '<AnnotatedPose>"
  "robotino_isen/AnnotatedPose")