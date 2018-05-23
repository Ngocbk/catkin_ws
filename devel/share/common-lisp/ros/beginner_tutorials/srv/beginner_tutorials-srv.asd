
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoToCertainCell" :depends-on ("_package_GoToCertainCell"))
    (:file "_package_GoToCertainCell" :depends-on ("_package"))
  ))