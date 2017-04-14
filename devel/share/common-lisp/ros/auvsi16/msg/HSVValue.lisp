; Auto-generated. Do not edit!


(cl:in-package auvsi16-msg)


;//! \htmlinclude HSVValue.msg.html

(cl:defclass <HSVValue> (roslisp-msg-protocol:ros-message)
  ((iLowH
    :reader iLowH
    :initarg :iLowH
    :type cl:integer
    :initform 0)
   (iHighH
    :reader iHighH
    :initarg :iHighH
    :type cl:integer
    :initform 0)
   (iLowS
    :reader iLowS
    :initarg :iLowS
    :type cl:integer
    :initform 0)
   (iHighS
    :reader iHighS
    :initarg :iHighS
    :type cl:integer
    :initform 0)
   (iLowV
    :reader iLowV
    :initarg :iLowV
    :type cl:integer
    :initform 0)
   (iHighV
    :reader iHighV
    :initarg :iHighV
    :type cl:integer
    :initform 0))
)

(cl:defclass HSVValue (<HSVValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HSVValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HSVValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auvsi16-msg:<HSVValue> is deprecated: use auvsi16-msg:HSVValue instead.")))

(cl:ensure-generic-function 'iLowH-val :lambda-list '(m))
(cl:defmethod iLowH-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:iLowH-val is deprecated.  Use auvsi16-msg:iLowH instead.")
  (iLowH m))

(cl:ensure-generic-function 'iHighH-val :lambda-list '(m))
(cl:defmethod iHighH-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:iHighH-val is deprecated.  Use auvsi16-msg:iHighH instead.")
  (iHighH m))

(cl:ensure-generic-function 'iLowS-val :lambda-list '(m))
(cl:defmethod iLowS-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:iLowS-val is deprecated.  Use auvsi16-msg:iLowS instead.")
  (iLowS m))

(cl:ensure-generic-function 'iHighS-val :lambda-list '(m))
(cl:defmethod iHighS-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:iHighS-val is deprecated.  Use auvsi16-msg:iHighS instead.")
  (iHighS m))

(cl:ensure-generic-function 'iLowV-val :lambda-list '(m))
(cl:defmethod iLowV-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:iLowV-val is deprecated.  Use auvsi16-msg:iLowV instead.")
  (iLowV m))

(cl:ensure-generic-function 'iHighV-val :lambda-list '(m))
(cl:defmethod iHighV-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:iHighV-val is deprecated.  Use auvsi16-msg:iHighV instead.")
  (iHighV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HSVValue>) ostream)
  "Serializes a message object of type '<HSVValue>"
  (cl:let* ((signed (cl:slot-value msg 'iLowH)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iHighH)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iLowS)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iHighS)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iLowV)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iHighV)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HSVValue>) istream)
  "Deserializes a message object of type '<HSVValue>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iLowH) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iHighH) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iLowS) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iHighS) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iLowV) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iHighV) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HSVValue>)))
  "Returns string type for a message object of type '<HSVValue>"
  "auvsi16/HSVValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HSVValue)))
  "Returns string type for a message object of type 'HSVValue"
  "auvsi16/HSVValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HSVValue>)))
  "Returns md5sum for a message object of type '<HSVValue>"
  "19ceef5ba7ddd7e83c3e574d372bbffc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HSVValue)))
  "Returns md5sum for a message object of type 'HSVValue"
  "19ceef5ba7ddd7e83c3e574d372bbffc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HSVValue>)))
  "Returns full string definition for message of type '<HSVValue>"
  (cl:format cl:nil "int32 iLowH~%int32 iHighH~%int32 iLowS~%int32 iHighS~%int32 iLowV~%int32 iHighV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HSVValue)))
  "Returns full string definition for message of type 'HSVValue"
  (cl:format cl:nil "int32 iLowH~%int32 iHighH~%int32 iLowS~%int32 iHighS~%int32 iLowV~%int32 iHighV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HSVValue>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HSVValue>))
  "Converts a ROS message object to a list"
  (cl:list 'HSVValue
    (cl:cons ':iLowH (iLowH msg))
    (cl:cons ':iHighH (iHighH msg))
    (cl:cons ':iLowS (iLowS msg))
    (cl:cons ':iHighS (iHighS msg))
    (cl:cons ':iLowV (iLowV msg))
    (cl:cons ':iHighV (iHighV msg))
))
