
(cl:in-package :asdf)

(defsystem "robotino_isen-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robotino_isen-msg
)
  :components ((:file "_package")
    (:file "AnnotatedPose" :depends-on ("_package_AnnotatedPose"))
    (:file "_package_AnnotatedPose" :depends-on ("_package"))
  ))