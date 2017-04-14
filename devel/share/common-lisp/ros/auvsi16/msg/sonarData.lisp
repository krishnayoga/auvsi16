; Auto-generated. Do not edit!


(cl:in-package auvsi16-msg)


;//! \htmlinclude sonarData.msg.html

(cl:defclass <sonarData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 13 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass sonarData (<sonarData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sonarData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sonarData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auvsi16-msg:<sonarData> is deprecated: use auvsi16-msg:sonarData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <sonarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auvsi16-msg:data-val is deprecated.  Use auvsi16-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sonarData>) ostream)
  "Serializes a message object of type '<sonarData>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sonarData>) istream)
  "Deserializes a message object of type '<sonarData>"
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 13))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 13)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sonarData>)))
  "Returns string type for a message object of type '<sonarData>"
  "auvsi16/sonarData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sonarData)))
  "Returns string type for a message object of type 'sonarData"
  "auvsi16/sonarData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sonarData>)))
  "Returns md5sum for a message object of type '<sonarData>"
  "02fbb5521aaac1e6a77790f6244b5c32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sonarData)))
  "Returns md5sum for a message object of type 'sonarData"
  "02fbb5521aaac1e6a77790f6244b5c32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sonarData>)))
  "Returns full string definition for message of type '<sonarData>"
  (cl:format cl:nil "uint16[13] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sonarData)))
  "Returns full string definition for message of type 'sonarData"
  (cl:format cl:nil "uint16[13] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sonarData>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sonarData>))
  "Converts a ROS message object to a list"
  (cl:list 'sonarData
    (cl:cons ':data (data msg))
))
