
(cl:in-package :asdf)

(defsystem "turtle_diff_drive-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wheel_velocity" :depends-on ("_package_wheel_velocity"))
    (:file "_package_wheel_velocity" :depends-on ("_package"))
  ))