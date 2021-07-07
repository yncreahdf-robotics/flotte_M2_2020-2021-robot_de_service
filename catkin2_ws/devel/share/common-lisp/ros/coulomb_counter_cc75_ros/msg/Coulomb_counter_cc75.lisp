; Auto-generated. Do not edit!


(cl:in-package coulomb_counter_cc75_ros-msg)


;//! \htmlinclude Coulomb_counter_cc75.msg.html

(cl:defclass <Coulomb_counter_cc75> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type coulomb_counter_cc75_ros-msg:ValueUnitInt
    :initform (cl:make-instance 'coulomb_counter_cc75_ros-msg:ValueUnitInt))
   (voltage
    :reader voltage
    :initarg :voltage
    :type coulomb_counter_cc75_ros-msg:ValueUnitFloat
    :initform (cl:make-instance 'coulomb_counter_cc75_ros-msg:ValueUnitFloat))
   (capacity
    :reader capacity
    :initarg :capacity
    :type coulomb_counter_cc75_ros-msg:ValueUnitFloat
    :initform (cl:make-instance 'coulomb_counter_cc75_ros-msg:ValueUnitFloat))
   (current
    :reader current
    :initarg :current
    :type coulomb_counter_cc75_ros-msg:ValueUnitFloat
    :initform (cl:make-instance 'coulomb_counter_cc75_ros-msg:ValueUnitFloat))
   (remaining_time
    :reader remaining_time
    :initarg :remaining_time
    :type coulomb_counter_cc75_ros-msg:ValueUnitInt
    :initform (cl:make-instance 'coulomb_counter_cc75_ros-msg:ValueUnitInt))
   (power
    :reader power
    :initarg :power
    :type coulomb_counter_cc75_ros-msg:ValueUnitFloat
    :initform (cl:make-instance 'coulomb_counter_cc75_ros-msg:ValueUnitFloat)))
)

(cl:defclass Coulomb_counter_cc75 (<Coulomb_counter_cc75>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coulomb_counter_cc75>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coulomb_counter_cc75)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coulomb_counter_cc75_ros-msg:<Coulomb_counter_cc75> is deprecated: use coulomb_counter_cc75_ros-msg:Coulomb_counter_cc75 instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <Coulomb_counter_cc75>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coulomb_counter_cc75_ros-msg:percentage-val is deprecated.  Use coulomb_counter_cc75_ros-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <Coulomb_counter_cc75>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coulomb_counter_cc75_ros-msg:voltage-val is deprecated.  Use coulomb_counter_cc75_ros-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <Coulomb_counter_cc75>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coulomb_counter_cc75_ros-msg:capacity-val is deprecated.  Use coulomb_counter_cc75_ros-msg:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <Coulomb_counter_cc75>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coulomb_counter_cc75_ros-msg:current-val is deprecated.  Use coulomb_counter_cc75_ros-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'remaining_time-val :lambda-list '(m))
(cl:defmethod remaining_time-val ((m <Coulomb_counter_cc75>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coulomb_counter_cc75_ros-msg:remaining_time-val is deprecated.  Use coulomb_counter_cc75_ros-msg:remaining_time instead.")
  (remaining_time m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Coulomb_counter_cc75>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coulomb_counter_cc75_ros-msg:power-val is deprecated.  Use coulomb_counter_cc75_ros-msg:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coulomb_counter_cc75>) ostream)
  "Serializes a message object of type '<Coulomb_counter_cc75>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'percentage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'voltage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'capacity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'remaining_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'power) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coulomb_counter_cc75>) istream)
  "Deserializes a message object of type '<Coulomb_counter_cc75>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'percentage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'voltage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'capacity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'remaining_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'power) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coulomb_counter_cc75>)))
  "Returns string type for a message object of type '<Coulomb_counter_cc75>"
  "coulomb_counter_cc75_ros/Coulomb_counter_cc75")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coulomb_counter_cc75)))
  "Returns string type for a message object of type 'Coulomb_counter_cc75"
  "coulomb_counter_cc75_ros/Coulomb_counter_cc75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coulomb_counter_cc75>)))
  "Returns md5sum for a message object of type '<Coulomb_counter_cc75>"
  "a1bb334f77b5f975a6c36fc77930ac52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coulomb_counter_cc75)))
  "Returns md5sum for a message object of type 'Coulomb_counter_cc75"
  "a1bb334f77b5f975a6c36fc77930ac52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coulomb_counter_cc75>)))
  "Returns full string definition for message of type '<Coulomb_counter_cc75>"
  (cl:format cl:nil "ValueUnitInt percentage~%ValueUnitFloat voltage~%ValueUnitFloat capacity~%ValueUnitFloat current~%ValueUnitInt remaining_time~%ValueUnitFloat power~%~%================================================================================~%MSG: coulomb_counter_cc75_ros/ValueUnitInt~%uint64 value~%string unit~%~%================================================================================~%MSG: coulomb_counter_cc75_ros/ValueUnitFloat~%float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coulomb_counter_cc75)))
  "Returns full string definition for message of type 'Coulomb_counter_cc75"
  (cl:format cl:nil "ValueUnitInt percentage~%ValueUnitFloat voltage~%ValueUnitFloat capacity~%ValueUnitFloat current~%ValueUnitInt remaining_time~%ValueUnitFloat power~%~%================================================================================~%MSG: coulomb_counter_cc75_ros/ValueUnitInt~%uint64 value~%string unit~%~%================================================================================~%MSG: coulomb_counter_cc75_ros/ValueUnitFloat~%float64 value~%string unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coulomb_counter_cc75>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'percentage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'voltage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'capacity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'remaining_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'power))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coulomb_counter_cc75>))
  "Converts a ROS message object to a list"
  (cl:list 'Coulomb_counter_cc75
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':current (current msg))
    (cl:cons ':remaining_time (remaining_time msg))
    (cl:cons ':power (power msg))
))
