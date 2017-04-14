
(cl:in-package :asdf)

(defsystem "auvsi16-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobosubLauncher" :depends-on ("_package_RobosubLauncher"))
    (:file "_package_RobosubLauncher" :depends-on ("_package"))
    (:file "HSVValue" :depends-on ("_package_HSVValue"))
    (:file "_package_HSVValue" :depends-on ("_package"))
    (:file "sonarData" :depends-on ("_package_sonarData"))
    (:file "_package_sonarData" :depends-on ("_package"))
    (:file "overrideMotorRC" :depends-on ("_package_overrideMotorRC"))
    (:file "_package_overrideMotorRC" :depends-on ("_package"))
    (:file "ImageProcessing" :depends-on ("_package_ImageProcessing"))
    (:file "_package_ImageProcessing" :depends-on ("_package"))
    (:file "differential_controller" :depends-on ("_package_differential_controller"))
    (:file "_package_differential_controller" :depends-on ("_package"))
  ))