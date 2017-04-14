; Auto-generated. Do not edit!


(cl:in-package auvsi16-msg)


;//! \htmlinclude ImageProcessing.msg.html

(cl:defclass <ImageProcessing> (roslisp-msg-protocol:ros-message)
  ((buoy_number
    :reader buoy_number
    :initarg :buoy_number
    :type cl:integer
    :initform 0)
   (center_buoy_x
    :reader center_buoy_x
    :initarg :center_buoy_x
    :type cl:integer
    :initform 0)
   (center_buoy_y
    :reader center_buoy_y
    :initarg :center_buoy_y
    :type cl:integer
    :initform 0)
   (buoy_area
    :reader buoy_area
    :initarg :buoy_area
    :type cl:integer
    :initform 0)
   (radius_buoy
    :reader radius_buoy
    :initarg :radius_buoy
    :type cl:integer
    :initform 0)
   (detection_status
    :reader detection_status
    :initarg :detection_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ImageProcessing (<ImageProcessing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageProcessing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageProcessing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auvsi16-msg:<ImageProcessing> is deprecated: use auvsi16-msg:ImageProcessing instead.")))

(cl:ensure-generic-function 'buoy_number-val :lambda-list '(m))
(cl:defmethod buoy_number-val ((m <ImageProcessing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:buoy_number-val is deprecated.  Use auvsi16-msg:buoy_number instead.")
  (buoy_number m))

(cl:ensure-generic-function 'center_buoy_x-val :lambda-list '(m))
(cl:defmethod center_buoy_x-val ((m <ImageProcessing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:center_buoy_x-val is deprecated.  Use auvsi16-msg:center_buoy_x instead.")
  (center_buoy_x m))

(cl:ensure-generic-function 'center_buoy_y-val :lambda-list '(m))
(cl:defmethod center_buoy_y-val ((m <ImageProcessing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:center_buoy_y-val is deprecated.  Use auvsi16-msg:center_buoy_y instead.")
  (center_buoy_y m))

(cl:ensure-generic-function 'buoy_area-val :lambda-list '(m))
(cl:defmethod buoy_area-val ((m <ImageProcessing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:buoy_area-val is deprecated.  Use auvsi16-msg:buoy_area instead.")
  (buoy_area m))

(cl:ensure-generic-function 'radius_buoy-val :lambda-list '(m))
(cl:defmethod radius_buoy-val ((m <ImageProcessing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:radius_buoy-val is deprecated.  Use auvsi16-msg:radius_buoy instead.")
  (radius_buoy m))

(cl:ensure-generic-function 'detection_status-val :lambda-list '(m))
(cl:defmethod detection_status-val ((m <ImageProcessing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:detection_status-val is deprecated.  Use auvsi16-msg:detection_status instead.")
  (detection_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageProcessing>) ostream)
  "Serializes a message object of type '<ImageProcessing>"
  (cl:let* ((signed (cl:slot-value msg 'buoy_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'center_buoy_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'center_buoy_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'buoy_area)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'radius_buoy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detection_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageProcessing>) istream)
  "Deserializes a message object of type '<ImageProcessing>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buoy_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'center_buoy_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'center_buoy_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buoy_area) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radius_buoy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'detection_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageProcessing>)))
  "Returns string type for a message object of type '<ImageProcessing>"
  "auvsi16/ImageProcessing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageProcessing)))
  "Returns string type for a message object of type 'ImageProcessing"
  "auvsi16/ImageProcessing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageProcessing>)))
  "Returns md5sum for a message object of type '<ImageProcessing>"
  "1ff3d57280d166d6d98513c0249ee9a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageProcessing)))
  "Returns md5sum for a message object of type 'ImageProcessing"
  "1ff3d57280d166d6d98513c0249ee9a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageProcessing>)))
  "Returns full string definition for message of type '<ImageProcessing>"
  (cl:format cl:nil "int32 buoy_number~%int32 center_buoy_x~%int32 center_buoy_y~%int32 buoy_area~%int32 radius_buoy~%bool detection_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageProcessing)))
  "Returns full string definition for message of type 'ImageProcessing"
  (cl:format cl:nil "int32 buoy_number~%int32 center_buoy_x~%int32 center_buoy_y~%int32 buoy_area~%int32 radius_buoy~%bool detection_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageProcessing>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageProcessing>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageProcessing
    (cl:cons ':buoy_number (buoy_number msg))
    (cl:cons ':center_buoy_x (center_buoy_x msg))
    (cl:cons ':center_buoy_y (center_buoy_y msg))
    (cl:cons ':buoy_area (buoy_area msg))
    (cl:cons ':radius_buoy (radius_buoy msg))
    (cl:cons ':detection_status (detection_status msg))
))
