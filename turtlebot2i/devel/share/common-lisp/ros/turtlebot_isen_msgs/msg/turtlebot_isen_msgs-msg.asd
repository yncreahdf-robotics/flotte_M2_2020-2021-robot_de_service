
(cl:in-package :asdf)

(defsystem "turtlebot_isen_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BatteryState" :depends-on ("_package_BatteryState"))
    (:file "_package_BatteryState" :depends-on ("_package"))
  ))