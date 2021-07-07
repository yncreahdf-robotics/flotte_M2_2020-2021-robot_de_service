
(cl:in-package :asdf)

(defsystem "coulomb_counter_cc75_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coulomb_counter_cc75" :depends-on ("_package_Coulomb_counter_cc75"))
    (:file "_package_Coulomb_counter_cc75" :depends-on ("_package"))
    (:file "ValueUnitFloat" :depends-on ("_package_ValueUnitFloat"))
    (:file "_package_ValueUnitFloat" :depends-on ("_package"))
    (:file "ValueUnitInt" :depends-on ("_package_ValueUnitInt"))
    (:file "_package_ValueUnitInt" :depends-on ("_package"))
  ))