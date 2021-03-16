
(cl:in-package :asdf)

(defsystem "robotino_isen-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AnnotatedPoses" :depends-on ("_package_AnnotatedPoses"))
    (:file "_package_AnnotatedPoses" :depends-on ("_package"))
  ))