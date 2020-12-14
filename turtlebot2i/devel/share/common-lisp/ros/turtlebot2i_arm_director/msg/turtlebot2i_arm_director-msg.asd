
(cl:in-package :asdf)

(defsystem "turtlebot2i_arm_director-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "NamedPoseDirectorAction" :depends-on ("_package_NamedPoseDirectorAction"))
    (:file "_package_NamedPoseDirectorAction" :depends-on ("_package"))
    (:file "NamedPoseDirectorActionFeedback" :depends-on ("_package_NamedPoseDirectorActionFeedback"))
    (:file "_package_NamedPoseDirectorActionFeedback" :depends-on ("_package"))
    (:file "NamedPoseDirectorActionGoal" :depends-on ("_package_NamedPoseDirectorActionGoal"))
    (:file "_package_NamedPoseDirectorActionGoal" :depends-on ("_package"))
    (:file "NamedPoseDirectorActionResult" :depends-on ("_package_NamedPoseDirectorActionResult"))
    (:file "_package_NamedPoseDirectorActionResult" :depends-on ("_package"))
    (:file "NamedPoseDirectorFeedback" :depends-on ("_package_NamedPoseDirectorFeedback"))
    (:file "_package_NamedPoseDirectorFeedback" :depends-on ("_package"))
    (:file "NamedPoseDirectorGoal" :depends-on ("_package_NamedPoseDirectorGoal"))
    (:file "_package_NamedPoseDirectorGoal" :depends-on ("_package"))
    (:file "NamedPoseDirectorResult" :depends-on ("_package_NamedPoseDirectorResult"))
    (:file "_package_NamedPoseDirectorResult" :depends-on ("_package"))
  ))