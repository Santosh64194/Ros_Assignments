; Auto-generated. Do not edit!


(cl:in-package turtle_diff_drive-msg)


;//! \htmlinclude wheel_velocity.msg.html

(cl:defclass <wheel_velocity> (roslisp-msg-protocol:ros-message)
  ((omega_l
    :reader omega_l
    :initarg :omega_l
    :type cl:float
    :initform 0.0)
   (omega_r
    :reader omega_r
    :initarg :omega_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass wheel_velocity (<wheel_velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheel_velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheel_velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_diff_drive-msg:<wheel_velocity> is deprecated: use turtle_diff_drive-msg:wheel_velocity instead.")))

(cl:ensure-generic-function 'omega_l-val :lambda-list '(m))
(cl:defmethod omega_l-val ((m <wheel_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_diff_drive-msg:omega_l-val is deprecated.  Use turtle_diff_drive-msg:omega_l instead.")
  (omega_l m))

(cl:ensure-generic-function 'omega_r-val :lambda-list '(m))
(cl:defmethod omega_r-val ((m <wheel_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_diff_drive-msg:omega_r-val is deprecated.  Use turtle_diff_drive-msg:omega_r instead.")
  (omega_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheel_velocity>) ostream)
  "Serializes a message object of type '<wheel_velocity>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omega_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omega_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheel_velocity>) istream)
  "Deserializes a message object of type '<wheel_velocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_r) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheel_velocity>)))
  "Returns string type for a message object of type '<wheel_velocity>"
  "turtle_diff_drive/wheel_velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheel_velocity)))
  "Returns string type for a message object of type 'wheel_velocity"
  "turtle_diff_drive/wheel_velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheel_velocity>)))
  "Returns md5sum for a message object of type '<wheel_velocity>"
  "060a9c3aa2e2b6228526d91e96852741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheel_velocity)))
  "Returns md5sum for a message object of type 'wheel_velocity"
  "060a9c3aa2e2b6228526d91e96852741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheel_velocity>)))
  "Returns full string definition for message of type '<wheel_velocity>"
  (cl:format cl:nil "float64 omega_l~%float64 omega_r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheel_velocity)))
  "Returns full string definition for message of type 'wheel_velocity"
  (cl:format cl:nil "float64 omega_l~%float64 omega_r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheel_velocity>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheel_velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'wheel_velocity
    (cl:cons ':omega_l (omega_l msg))
    (cl:cons ':omega_r (omega_r msg))
))
