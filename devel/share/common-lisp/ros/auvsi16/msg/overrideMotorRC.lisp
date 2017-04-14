; Auto-generated. Do not edit!


(cl:in-package auvsi16-msg)


;//! \htmlinclude overrideMotorRC.msg.html

(cl:defclass <overrideMotorRC> (roslisp-msg-protocol:ros-message)
  ((steering
    :reader steering
    :initarg :steering
    :type cl:fixnum
    :initform 0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass overrideMotorRC (<overrideMotorRC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <overrideMotorRC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'overrideMotorRC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auvsi16-msg:<overrideMotorRC> is deprecated: use auvsi16-msg:overrideMotorRC instead.")))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <overrideMotorRC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:steering-val is deprecated.  Use auvsi16-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <overrideMotorRC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:throttle-val is deprecated.  Use auvsi16-msg:throttle instead.")
  (throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <overrideMotorRC>) ostream)
  "Serializes a message object of type '<overrideMotorRC>"
  (cl:let* ((signed (cl:slot-value msg 'steering)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'throttle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <overrideMotorRC>) istream)
  "Deserializes a message object of type '<overrideMotorRC>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<overrideMotorRC>)))
  "Returns string type for a message object of type '<overrideMotorRC>"
  "auvsi16/overrideMotorRC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'overrideMotorRC)))
  "Returns string type for a message object of type 'overrideMotorRC"
  "auvsi16/overrideMotorRC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<overrideMotorRC>)))
  "Returns md5sum for a message object of type '<overrideMotorRC>"
  "c4dd5817de7802d91e66008f92eca79e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'overrideMotorRC)))
  "Returns md5sum for a message object of type 'overrideMotorRC"
  "c4dd5817de7802d91e66008f92eca79e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<overrideMotorRC>)))
  "Returns full string definition for message of type '<overrideMotorRC>"
  (cl:format cl:nil "int16 steering~%int16 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'overrideMotorRC)))
  "Returns full string definition for message of type 'overrideMotorRC"
  (cl:format cl:nil "int16 steering~%int16 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <overrideMotorRC>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <overrideMotorRC>))
  "Converts a ROS message object to a list"
  (cl:list 'overrideMotorRC
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle (throttle msg))
))
