; Auto-generated. Do not edit!


(cl:in-package vision_port-msg)


;//! \htmlinclude visionResult.msg.html

(cl:defclass <visionResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass visionResult (<visionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_port-msg:<visionResult> is deprecated: use vision_port-msg:visionResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <visionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_port-msg:result-val is deprecated.  Use vision_port-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visionResult>) ostream)
  "Serializes a message object of type '<visionResult>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visionResult>) istream)
  "Deserializes a message object of type '<visionResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visionResult>)))
  "Returns string type for a message object of type '<visionResult>"
  "vision_port/visionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visionResult)))
  "Returns string type for a message object of type 'visionResult"
  "vision_port/visionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visionResult>)))
  "Returns md5sum for a message object of type '<visionResult>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visionResult)))
  "Returns md5sum for a message object of type 'visionResult"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visionResult>)))
  "Returns full string definition for message of type '<visionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition.~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visionResult)))
  "Returns full string definition for message of type 'visionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition.~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visionResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'visionResult
    (cl:cons ':result (result msg))
))
