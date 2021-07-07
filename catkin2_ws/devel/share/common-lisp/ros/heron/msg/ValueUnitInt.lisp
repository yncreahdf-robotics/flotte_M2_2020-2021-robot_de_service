; Auto-generated. Do not edit!


(cl:in-package heron-msg)


;//! \htmlinclude ValueUnitInt.msg.html

(cl:defclass <ValueUnitInt> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform ""))
)

(cl:defclass ValueUnitInt (<ValueUnitInt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ValueUnitInt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ValueUnitInt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron-msg:<ValueUnitInt> is deprecated: use heron-msg:ValueUnitInt instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ValueUnitInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:value-val is deprecated.  Use heron-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <ValueUnitInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:unit-val is deprecated.  Use heron-msg:unit instead.")
  (unit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ValueUnitInt>) ostream)
  "Serializes a message object of type '<ValueUnitInt>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'value)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ValueUnitInt>) istream)
  "Deserializes a message object of type '<ValueUnitInt>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'value)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ValueUnitInt>)))
  "Returns string type for a message object of type '<ValueUnitInt>"
  "heron/ValueUnitInt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValueUnitInt)))
  "Returns string type for a message object of type 'ValueUnitInt"
  "heron/ValueUnitInt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ValueUnitInt>)))
  "Returns md5sum for a message object of type '<ValueUnitInt>"
  "32ce32447b073bfe214d2602da608273")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ValueUnitInt)))
  "Returns md5sum for a message object of type 'ValueUnitInt"
  "32ce32447b073bfe214d2602da608273")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ValueUnitInt>)))
  "Returns full string definition for message of type '<ValueUnitInt>"
  (cl:format cl:nil "uint64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ValueUnitInt)))
  "Returns full string definition for message of type 'ValueUnitInt"
  (cl:format cl:nil "uint64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ValueUnitInt>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'unit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ValueUnitInt>))
  "Converts a ROS message object to a list"
  (cl:list 'ValueUnitInt
    (cl:cons ':value (value msg))
    (cl:cons ':unit (unit msg))
))
