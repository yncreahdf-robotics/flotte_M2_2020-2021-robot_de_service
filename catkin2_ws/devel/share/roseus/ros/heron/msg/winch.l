;; Auto-generated. Do not edit!


(when (boundp 'heron::winch)
  (if (not (find-package "HERON"))
    (make-package "HERON"))
  (shadow 'winch (find-package "HERON")))
(unless (find-package "HERON::WINCH")
  (make-package "HERON::WINCH"))

(in-package "ROS")
;;//! \htmlinclude winch.msg.html


(defclass heron::winch
  :super ros::object
  :slots (_height _heightTicks ))

(defmethod heron::winch
  (:init
   (&key
    ((:height __height) 0.0)
    ((:heightTicks __heightTicks) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   (setq _heightTicks (float __heightTicks))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:heightTicks
   (&optional __heightTicks)
   (if __heightTicks (setq _heightTicks __heightTicks)) _heightTicks)
  (:serialization-length
   ()
   (+
    ;; float32 _height
    4
    ;; float32 _heightTicks
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heightTicks
       (sys::poke _heightTicks (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heightTicks
     (setq _heightTicks (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get heron::winch :md5sum-) "9c1d8d82efdc45aeff9d8a7722fdb8ca")
(setf (get heron::winch :datatype-) "heron/winch")
(setf (get heron::winch :definition-)
      "float32 height
float32 heightTicks
")



(provide :heron/winch "9c1d8d82efdc45aeff9d8a7722fdb8ca")


