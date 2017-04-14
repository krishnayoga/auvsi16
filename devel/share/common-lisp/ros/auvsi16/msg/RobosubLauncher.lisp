; Auto-generated. Do not edit!


(cl:in-package auvsi16-msg)


;//! \htmlinclude RobosubLauncher.msg.html

(cl:defclass <RobosubLauncher> (roslisp-msg-protocol:ros-message)
  ((motor_direction
    :reader motor_direction
    :initarg :motor_direction
    :type cl:fixnum
    :initform 0)
   (motor_speed
    :reader motor_speed
    :initarg :motor_speed
    :type cl:fixnum
    :initform 0)
   (launcher_heater
    :reader launcher_heater
    :initarg :launcher_heater
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobosubLauncher (<RobosubLauncher>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobosubLauncher>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobosubLauncher)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auvsi16-msg:<RobosubLauncher> is deprecated: use auvsi16-msg:RobosubLauncher instead.")))

(cl:ensure-generic-function 'motor_direction-val :lambda-list '(m))
(cl:defmethod motor_direction-val ((m <RobosubLauncher>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:motor_direction-val is deprecated.  Use auvsi16-msg:motor_direction instead.")
  (motor_direction m))

(cl:ensure-generic-function 'motor_speed-val :lambda-list '(m))
(cl:defmethod motor_speed-val ((m <RobosubLauncher>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:motor_speed-val is deprecated.  Use auvsi16-msg:motor_speed instead.")
  (motor_speed m))

(cl:ensure-generic-function 'launcher_heater-val :lambda-list '(m))
(cl:defmethod launcher_heater-val ((m <RobosubLauncher>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:launcher_heater-val is deprecated.  Use auvsi16-msg:launcher_heater instead.")
  (launcher_heater m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobosubLauncher>) ostream)
  "Serializes a message object of type '<RobosubLauncher>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launcher_heater) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobosubLauncher>) istream)
  "Deserializes a message object of type '<RobosubLauncher>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_speed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'launcher_heater) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobosubLauncher>)))
  "Returns string type for a message object of type '<RobosubLauncher>"
  "auvsi16/RobosubLauncher")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobosubLauncher)))
  "Returns string type for a message object of type 'RobosubLauncher"
  "auvsi16/RobosubLauncher")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobosubLauncher>)))
  "Returns md5sum for a message object of type '<RobosubLauncher>"
  "e49e391094591d98b7d658e6aca54cc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobosubLauncher)))
  "Returns md5sum for a message object of type 'RobosubLauncher"
  "e49e391094591d98b7d658e6aca54cc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobosubLauncher>)))
  "Returns full string definition for message of type '<RobosubLauncher>"
  (cl:format cl:nil "uint8 motor_direction~%uint8 motor_speed~%bool launcher_heater~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobosubLauncher)))
  "Returns full string definition for message of type 'RobosubLauncher"
  (cl:format cl:nil "uint8 motor_direction~%uint8 motor_speed~%bool launcher_heater~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobosubLauncher>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobosubLauncher>))
  "Converts a ROS message object to a list"
  (cl:list 'RobosubLauncher
    (cl:cons ':motor_direction (motor_direction msg))
    (cl:cons ':motor_speed (motor_speed msg))
    (cl:cons ':launcher_heater (launcher_heater msg))
))
