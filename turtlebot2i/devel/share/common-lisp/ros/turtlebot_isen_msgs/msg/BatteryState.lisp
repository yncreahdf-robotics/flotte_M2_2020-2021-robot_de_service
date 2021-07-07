; Auto-generated. Do not edit!


(cl:in-package turtlebot_isen_msgs-msg)


;//! \htmlinclude BatteryState.msg.html

(cl:defclass <BatteryState> (roslisp-msg-protocol:ros-message)
  ((Charger
    :reader Charger
    :initarg :Charger
    :type cl:string
    :initform "")
   (Battery
    :reader Battery
    :initarg :Battery
    :type cl:float
    :initform 0.0))
)

(cl:defclass BatteryState (<BatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_isen_msgs-msg:<BatteryState> is deprecated: use turtlebot_isen_msgs-msg:BatteryState instead.")))

(cl:ensure-generic-function 'Charger-val :lambda-list '(m))
(cl:defmethod Charger-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_isen_msgs-msg:Charger-val is deprecated.  Use turtlebot_isen_msgs-msg:Charger instead.")
  (Charger m))

(cl:ensure-generic-function 'Battery-val :lambda-list '(m))
(cl:defmethod Battery-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_isen_msgs-msg:Battery-val is deprecated.  Use turtlebot_isen_msgs-msg:Battery instead.")
  (Battery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState>) ostream)
  "Serializes a message object of type '<BatteryState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Charger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Charger))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState>) istream)
  "Deserializes a message object of type '<BatteryState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Charger) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Charger) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState>)))
  "Returns string type for a message object of type '<BatteryState>"
  "turtlebot_isen_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a message object of type 'BatteryState"
  "turtlebot_isen_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState>)))
  "Returns md5sum for a message object of type '<BatteryState>"
  "7d9e281ba46539ec900610c49fadf3ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState)))
  "Returns md5sum for a message object of type 'BatteryState"
  "7d9e281ba46539ec900610c49fadf3ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState>)))
  "Returns full string definition for message of type '<BatteryState>"
  (cl:format cl:nil "~%string Charger~%~%float32 Battery~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState)))
  "Returns full string definition for message of type 'BatteryState"
  (cl:format cl:nil "~%string Charger~%~%float32 Battery~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Charger))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState
    (cl:cons ':Charger (Charger msg))
    (cl:cons ':Battery (Battery msg))
))
