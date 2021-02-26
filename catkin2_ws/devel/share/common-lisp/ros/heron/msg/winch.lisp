; Auto-generated. Do not edit!


(cl:in-package heron-msg)


;//! \htmlinclude winch.msg.html

(cl:defclass <winch> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (heightTicks
    :reader heightTicks
    :initarg :heightTicks
    :type cl:float
    :initform 0.0))
)

(cl:defclass winch (<winch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <winch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'winch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron-msg:<winch> is deprecated: use heron-msg:winch instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <winch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:height-val is deprecated.  Use heron-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'heightTicks-val :lambda-list '(m))
(cl:defmethod heightTicks-val ((m <winch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:heightTicks-val is deprecated.  Use heron-msg:heightTicks instead.")
  (heightTicks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <winch>) ostream)
  "Serializes a message object of type '<winch>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heightTicks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <winch>) istream)
  "Deserializes a message object of type '<winch>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heightTicks) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<winch>)))
  "Returns string type for a message object of type '<winch>"
  "heron/winch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'winch)))
  "Returns string type for a message object of type 'winch"
  "heron/winch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<winch>)))
  "Returns md5sum for a message object of type '<winch>"
  "9c1d8d82efdc45aeff9d8a7722fdb8ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'winch)))
  "Returns md5sum for a message object of type 'winch"
  "9c1d8d82efdc45aeff9d8a7722fdb8ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<winch>)))
  "Returns full string definition for message of type '<winch>"
  (cl:format cl:nil "float32 height~%float32 heightTicks~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'winch)))
  "Returns full string definition for message of type 'winch"
  (cl:format cl:nil "float32 height~%float32 heightTicks~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <winch>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <winch>))
  "Converts a ROS message object to a list"
  (cl:list 'winch
    (cl:cons ':height (height msg))
    (cl:cons ':heightTicks (heightTicks msg))
))
