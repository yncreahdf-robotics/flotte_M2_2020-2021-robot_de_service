;; Auto-generated. Do not edit!


(when (boundp 'turtlebot2i_block_manipulation::BlockPose)
  (if (not (find-package "TURTLEBOT2I_BLOCK_MANIPULATION"))
    (make-package "TURTLEBOT2I_BLOCK_MANIPULATION"))
  (shadow 'BlockPose (find-package "TURTLEBOT2I_BLOCK_MANIPULATION")))
(unless (find-package "TURTLEBOT2I_BLOCK_MANIPULATION::BLOCKPOSE")
  (make-package "TURTLEBOT2I_BLOCK_MANIPULATION::BLOCKPOSE"))

(in-package "ROS")
;;//! \htmlinclude BlockPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass turtlebot2i_block_manipulation::BlockPose
  :super ros::object
  :slots (_position _orientation _color ))

(defmethod turtlebot2i_block_manipulation::BlockPose
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _color __color)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get turtlebot2i_block_manipulation::BlockPose :md5sum-) "d8177f1ddf34f13385e0621f5b132e51")
(setf (get turtlebot2i_block_manipulation::BlockPose :datatype-) "turtlebot2i_block_manipulation/BlockPose")
(setf (get turtlebot2i_block_manipulation::BlockPose :definition-)
      "geometry_msgs/Point position
geometry_msgs/Quaternion orientation
std_msgs/ColorRGBA color
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :turtlebot2i_block_manipulation/BlockPose "d8177f1ddf34f13385e0621f5b132e51")


