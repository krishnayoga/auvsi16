; Auto-generated. Do not edit!


(cl:in-package auvsi16-msg)


;//! \htmlinclude differential_controller.msg.html

(cl:defclass <differential_controller> (roslisp-msg-protocol:ros-message)
  ((left_pwm
    :reader left_pwm
    :initarg :left_pwm
    :type cl:fixnum
    :initform 0)
   (right_pwm
    :reader right_pwm
    :initarg :right_pwm
    :type cl:fixnum
    :initform 0)
   (override_apm
    :reader override_apm
    :initarg :override_apm
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass differential_controller (<differential_controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <differential_controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'differential_controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auvsi16-msg:<differential_controller> is deprecated: use auvsi16-msg:differential_controller instead.")))

(cl:ensure-generic-function 'left_pwm-val :lambda-list '(m))
(cl:defmethod left_pwm-val ((m <differential_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:left_pwm-val is deprecated.  Use auvsi16-msg:left_pwm instead.")
  (left_pwm m))

(cl:ensure-generic-function 'right_pwm-val :lambda-list '(m))
(cl:defmethod right_pwm-val ((m <differential_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:right_pwm-val is deprecated.  Use auvsi16-msg:right_pwm instead.")
  (right_pwm m))

(cl:ensure-generic-function 'override_apm-val :lambda-list '(m))
(cl:defmethod override_apm-val ((m <differential_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:override_apm-val is deprecated.  Use auvsi16-msg:override_apm instead.")
  (override_apm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <differential_controller>) ostream)
  "Serializes a message object of type '<differential_controller>"
  (cl:let* ((signed (cl:slot-value msg 'left_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_apm) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <differential_controller>) istream)
  "Deserializes a message object of type '<differential_controller>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_pwm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_pwm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'override_apm) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<differential_controller>)))
  "Returns string type for a message object of type '<differential_controller>"
  "auvsi16/differential_controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'differential_controller)))
  "Returns string type for a message object of type 'differential_controller"
  "auvsi16/differential_controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<differential_controller>)))
  "Returns md5sum for a message object of type '<differential_controller>"
  "365461bcf44bdfbb44bee48829b6d0e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'differential_controller)))
  "Returns md5sum for a message object of type 'differential_controller"
  "365461bcf44bdfbb44bee48829b6d0e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<differential_controller>)))
  "Returns full string definition for message of type '<differential_controller>"
  (cl:format cl:nil "int16 left_pwm~%int16 right_pwm~%bool override_apm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'differential_controller)))
  "Returns full string definition for message of type 'differential_controller"
  (cl:format cl:nil "int16 left_pwm~%int16 right_pwm~%bool override_apm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <differential_controller>))
  (cl:+ 0
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <differential_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'differential_controller
    (cl:cons ':left_pwm (left_pwm msg))
    (cl:cons ':right_pwm (right_pwm msg))
    (cl:cons ':override_apm (override_apm msg))
))
