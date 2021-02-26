; Auto-generated. Do not edit!


(cl:in-package heron_isen-msg)


;//! \htmlinclude ValueUnitFloat.msg.html

(cl:defclass <ValueUnitFloat> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform ""))
)

(cl:defclass ValueUnitFloat (<ValueUnitFloat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ValueUnitFloat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ValueUnitFloat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron_isen-msg:<ValueUnitFloat> is deprecated: use heron_isen-msg:ValueUnitFloat instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ValueUnitFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_isen-msg:value-val is deprecated.  Use heron_isen-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <ValueUnitFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_isen-msg:unit-val is deprecated.  Use heron_isen-msg:unit instead.")
  (unit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ValueUnitFloat>) ostream)
  "Serializes a message object of type '<ValueUnitFloat>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ValueUnitFloat>) istream)
  "Deserializes a message object of type '<ValueUnitFloat>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ValueUnitFloat>)))
  "Returns string type for a message object of type '<ValueUnitFloat>"
  "heron_isen/ValueUnitFloat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValueUnitFloat)))
  "Returns string type for a message object of type 'ValueUnitFloat"
  "heron_isen/ValueUnitFloat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ValueUnitFloat>)))
  "Returns md5sum for a message object of type '<ValueUnitFloat>"
  "803cb15f868348d3b538d02fa83781fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ValueUnitFloat)))
  "Returns md5sum for a message object of type 'ValueUnitFloat"
  "803cb15f868348d3b538d02fa83781fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ValueUnitFloat>)))
  "Returns full string definition for message of type '<ValueUnitFloat>"
  (cl:format cl:nil "float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ValueUnitFloat)))
  "Returns full string definition for message of type 'ValueUnitFloat"
  (cl:format cl:nil "float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ValueUnitFloat>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'unit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ValueUnitFloat>))
  "Converts a ROS message object to a list"
  (cl:list 'ValueUnitFloat
    (cl:cons ':value (value msg))
    (cl:cons ':unit (unit msg))
))
