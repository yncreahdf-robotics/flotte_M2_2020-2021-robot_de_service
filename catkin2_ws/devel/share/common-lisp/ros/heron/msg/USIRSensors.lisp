; Auto-generated. Do not edit!


(cl:in-package heron-msg)


;//! \htmlinclude USIRSensors.msg.html

(cl:defclass <USIRSensors> (roslisp-msg-protocol:ros-message)
  ((gauche
    :reader gauche
    :initarg :gauche
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat)))
   (droit
    :reader droit
    :initarg :droit
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat))))
)

(cl:defclass USIRSensors (<USIRSensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <USIRSensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'USIRSensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron-msg:<USIRSensors> is deprecated: use heron-msg:USIRSensors instead.")))

(cl:ensure-generic-function 'gauche-val :lambda-list '(m))
(cl:defmethod gauche-val ((m <USIRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:gauche-val is deprecated.  Use heron-msg:gauche instead.")
  (gauche m))

(cl:ensure-generic-function 'droit-val :lambda-list '(m))
(cl:defmethod droit-val ((m <USIRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:droit-val is deprecated.  Use heron-msg:droit instead.")
  (droit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <USIRSensors>) ostream)
  "Serializes a message object of type '<USIRSensors>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gauche))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'droit))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <USIRSensors>) istream)
  "Deserializes a message object of type '<USIRSensors>"
  (cl:setf (cl:slot-value msg 'gauche) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'gauche)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'droit) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'droit)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<USIRSensors>)))
  "Returns string type for a message object of type '<USIRSensors>"
  "heron/USIRSensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'USIRSensors)))
  "Returns string type for a message object of type 'USIRSensors"
  "heron/USIRSensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<USIRSensors>)))
  "Returns md5sum for a message object of type '<USIRSensors>"
  "ec3639fb43a99ba8f34b5269205642b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'USIRSensors)))
  "Returns md5sum for a message object of type 'USIRSensors"
  "ec3639fb43a99ba8f34b5269205642b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<USIRSensors>)))
  "Returns full string definition for message of type '<USIRSensors>"
  (cl:format cl:nil "ValueUnitFloat[4] gauche~%ValueUnitFloat[4] droit~%~%================================================================================~%MSG: heron/ValueUnitFloat~%float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'USIRSensors)))
  "Returns full string definition for message of type 'USIRSensors"
  (cl:format cl:nil "ValueUnitFloat[4] gauche~%ValueUnitFloat[4] droit~%~%================================================================================~%MSG: heron/ValueUnitFloat~%float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <USIRSensors>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gauche) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'droit) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <USIRSensors>))
  "Converts a ROS message object to a list"
  (cl:list 'USIRSensors
    (cl:cons ':gauche (gauche msg))
    (cl:cons ':droit (droit msg))
))
