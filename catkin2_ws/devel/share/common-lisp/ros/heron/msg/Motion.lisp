; Auto-generated. Do not edit!


(cl:in-package heron-msg)


;//! \htmlinclude Motion.msg.html

(cl:defclass <Motion> (roslisp-msg-protocol:ros-message)
  ((position_x
    :reader position_x
    :initarg :position_x
    :type cl:float
    :initform 0.0)
   (position_y
    :reader position_y
    :initarg :position_y
    :type cl:float
    :initform 0.0)
   (orientation_z
    :reader orientation_z
    :initarg :orientation_z
    :type cl:float
    :initform 0.0)
   (orientation_w
    :reader orientation_w
    :initarg :orientation_w
    :type cl:float
    :initform 0.0)
   (plate_height
    :reader plate_height
    :initarg :plate_height
    :type cl:float
    :initform 0.0))
)

(cl:defclass Motion (<Motion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron-msg:<Motion> is deprecated: use heron-msg:Motion instead.")))

(cl:ensure-generic-function 'position_x-val :lambda-list '(m))
(cl:defmethod position_x-val ((m <Motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:position_x-val is deprecated.  Use heron-msg:position_x instead.")
  (position_x m))

(cl:ensure-generic-function 'position_y-val :lambda-list '(m))
(cl:defmethod position_y-val ((m <Motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:position_y-val is deprecated.  Use heron-msg:position_y instead.")
  (position_y m))

(cl:ensure-generic-function 'orientation_z-val :lambda-list '(m))
(cl:defmethod orientation_z-val ((m <Motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:orientation_z-val is deprecated.  Use heron-msg:orientation_z instead.")
  (orientation_z m))

(cl:ensure-generic-function 'orientation_w-val :lambda-list '(m))
(cl:defmethod orientation_w-val ((m <Motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:orientation_w-val is deprecated.  Use heron-msg:orientation_w instead.")
  (orientation_w m))

(cl:ensure-generic-function 'plate_height-val :lambda-list '(m))
(cl:defmethod plate_height-val ((m <Motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:plate_height-val is deprecated.  Use heron-msg:plate_height instead.")
  (plate_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motion>) ostream)
  "Serializes a message object of type '<Motion>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'plate_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motion>) istream)
  "Deserializes a message object of type '<Motion>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'plate_height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motion>)))
  "Returns string type for a message object of type '<Motion>"
  "heron/Motion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motion)))
  "Returns string type for a message object of type 'Motion"
  "heron/Motion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motion>)))
  "Returns md5sum for a message object of type '<Motion>"
  "095414ef2073631e78bdbf064814a71b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motion)))
  "Returns md5sum for a message object of type 'Motion"
  "095414ef2073631e78bdbf064814a71b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motion>)))
  "Returns full string definition for message of type '<Motion>"
  (cl:format cl:nil "float32 position_x~%float32 position_y~%~%float32 orientation_z~%float32 orientation_w~%~%float32 plate_height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motion)))
  "Returns full string definition for message of type 'Motion"
  (cl:format cl:nil "float32 position_x~%float32 position_y~%~%float32 orientation_z~%float32 orientation_w~%~%float32 plate_height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motion>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motion>))
  "Converts a ROS message object to a list"
  (cl:list 'Motion
    (cl:cons ':position_x (position_x msg))
    (cl:cons ':position_y (position_y msg))
    (cl:cons ':orientation_z (orientation_z msg))
    (cl:cons ':orientation_w (orientation_w msg))
    (cl:cons ':plate_height (plate_height msg))
))
