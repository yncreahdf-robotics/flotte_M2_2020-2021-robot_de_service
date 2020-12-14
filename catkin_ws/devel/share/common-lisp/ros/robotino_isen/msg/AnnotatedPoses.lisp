; Auto-generated. Do not edit!


(cl:in-package robotino_isen-msg)


;//! \htmlinclude AnnotatedPoses.msg.html

(cl:defclass <AnnotatedPoses> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass AnnotatedPoses (<AnnotatedPoses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedPoses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedPoses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_isen-msg:<AnnotatedPoses> is deprecated: use robotino_isen-msg:AnnotatedPoses instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AnnotatedPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_isen-msg:name-val is deprecated.  Use robotino_isen-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AnnotatedPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_isen-msg:pose-val is deprecated.  Use robotino_isen-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedPoses>) ostream)
  "Serializes a message object of type '<AnnotatedPoses>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedPoses>) istream)
  "Deserializes a message object of type '<AnnotatedPoses>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedPoses>)))
  "Returns string type for a message object of type '<AnnotatedPoses>"
  "robotino_isen/AnnotatedPoses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPoses)))
  "Returns string type for a message object of type 'AnnotatedPoses"
  "robotino_isen/AnnotatedPoses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedPoses>)))
  "Returns md5sum for a message object of type '<AnnotatedPoses>"
  "75e825a453c409c5eb9493536e0300c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedPoses)))
  "Returns md5sum for a message object of type 'AnnotatedPoses"
  "75e825a453c409c5eb9493536e0300c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedPoses>)))
  "Returns full string definition for message of type '<AnnotatedPoses>"
  (cl:format cl:nil "string name~%geometry_msgs/Point pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedPoses)))
  "Returns full string definition for message of type 'AnnotatedPoses"
  (cl:format cl:nil "string name~%geometry_msgs/Point pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedPoses>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedPoses>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedPoses
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
))
