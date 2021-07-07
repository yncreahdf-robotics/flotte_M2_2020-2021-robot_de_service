; Auto-generated. Do not edit!


(cl:in-package heron-msg)


;//! \htmlinclude IRSensors.msg.html

(cl:defclass <IRSensors> (roslisp-msg-protocol:ros-message)
  ((av_gauche
    :reader av_gauche
    :initarg :av_gauche
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat)))
   (av_droit
    :reader av_droit
    :initarg :av_droit
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat)))
   (ar_gauche
    :reader ar_gauche
    :initarg :ar_gauche
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat)))
   (ar_droit
    :reader ar_droit
    :initarg :ar_droit
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat)))
   (ar
    :reader ar
    :initarg :ar
    :type (cl:vector heron-msg:ValueUnitFloat)
   :initform (cl:make-array 4 :element-type 'heron-msg:ValueUnitFloat :initial-element (cl:make-instance 'heron-msg:ValueUnitFloat))))
)

(cl:defclass IRSensors (<IRSensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IRSensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IRSensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron-msg:<IRSensors> is deprecated: use heron-msg:IRSensors instead.")))

(cl:ensure-generic-function 'av_gauche-val :lambda-list '(m))
(cl:defmethod av_gauche-val ((m <IRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:av_gauche-val is deprecated.  Use heron-msg:av_gauche instead.")
  (av_gauche m))

(cl:ensure-generic-function 'av_droit-val :lambda-list '(m))
(cl:defmethod av_droit-val ((m <IRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:av_droit-val is deprecated.  Use heron-msg:av_droit instead.")
  (av_droit m))

(cl:ensure-generic-function 'ar_gauche-val :lambda-list '(m))
(cl:defmethod ar_gauche-val ((m <IRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:ar_gauche-val is deprecated.  Use heron-msg:ar_gauche instead.")
  (ar_gauche m))

(cl:ensure-generic-function 'ar_droit-val :lambda-list '(m))
(cl:defmethod ar_droit-val ((m <IRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:ar_droit-val is deprecated.  Use heron-msg:ar_droit instead.")
  (ar_droit m))

(cl:ensure-generic-function 'ar-val :lambda-list '(m))
(cl:defmethod ar-val ((m <IRSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron-msg:ar-val is deprecated.  Use heron-msg:ar instead.")
  (ar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IRSensors>) ostream)
  "Serializes a message object of type '<IRSensors>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'av_gauche))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'av_droit))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ar_gauche))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ar_droit))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IRSensors>) istream)
  "Deserializes a message object of type '<IRSensors>"
  (cl:setf (cl:slot-value msg 'av_gauche) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'av_gauche)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'av_droit) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'av_droit)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'ar_gauche) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'ar_gauche)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'ar_droit) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'ar_droit)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'ar) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'ar)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'heron-msg:ValueUnitFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IRSensors>)))
  "Returns string type for a message object of type '<IRSensors>"
  "heron/IRSensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IRSensors)))
  "Returns string type for a message object of type 'IRSensors"
  "heron/IRSensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IRSensors>)))
  "Returns md5sum for a message object of type '<IRSensors>"
  "d2d4f6afdad29c06c7d455d83f2670d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IRSensors)))
  "Returns md5sum for a message object of type 'IRSensors"
  "d2d4f6afdad29c06c7d455d83f2670d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IRSensors>)))
  "Returns full string definition for message of type '<IRSensors>"
  (cl:format cl:nil "ValueUnitFloat[4] av_gauche~%ValueUnitFloat[4] av_droit~%ValueUnitFloat[4] ar_gauche~%ValueUnitFloat[4] ar_droit~%ValueUnitFloat[4] ar~%~%================================================================================~%MSG: heron/ValueUnitFloat~%float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IRSensors)))
  "Returns full string definition for message of type 'IRSensors"
  (cl:format cl:nil "ValueUnitFloat[4] av_gauche~%ValueUnitFloat[4] av_droit~%ValueUnitFloat[4] ar_gauche~%ValueUnitFloat[4] ar_droit~%ValueUnitFloat[4] ar~%~%================================================================================~%MSG: heron/ValueUnitFloat~%float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IRSensors>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'av_gauche) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'av_droit) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ar_gauche) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ar_droit) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IRSensors>))
  "Converts a ROS message object to a list"
  (cl:list 'IRSensors
    (cl:cons ':av_gauche (av_gauche msg))
    (cl:cons ':av_droit (av_droit msg))
    (cl:cons ':ar_gauche (ar_gauche msg))
    (cl:cons ':ar_droit (ar_droit msg))
    (cl:cons ':ar (ar msg))
))
