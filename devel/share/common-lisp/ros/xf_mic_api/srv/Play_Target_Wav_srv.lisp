; Auto-generated. Do not edit!


(cl:in-package xf_mic_api-srv)


;//! \htmlinclude Play_Target_Wav_srv-request.msg.html

(cl:defclass <Play_Target_Wav_srv-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass Play_Target_Wav_srv-request (<Play_Target_Wav_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Play_Target_Wav_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Play_Target_Wav_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xf_mic_api-srv:<Play_Target_Wav_srv-request> is deprecated: use xf_mic_api-srv:Play_Target_Wav_srv-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <Play_Target_Wav_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:filename-val is deprecated.  Use xf_mic_api-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Play_Target_Wav_srv-request>) ostream)
  "Serializes a message object of type '<Play_Target_Wav_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Play_Target_Wav_srv-request>) istream)
  "Deserializes a message object of type '<Play_Target_Wav_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Play_Target_Wav_srv-request>)))
  "Returns string type for a service object of type '<Play_Target_Wav_srv-request>"
  "xf_mic_api/Play_Target_Wav_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play_Target_Wav_srv-request)))
  "Returns string type for a service object of type 'Play_Target_Wav_srv-request"
  "xf_mic_api/Play_Target_Wav_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Play_Target_Wav_srv-request>)))
  "Returns md5sum for a message object of type '<Play_Target_Wav_srv-request>"
  "5aa99f2f28c1cb6aae94bf660532cf80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Play_Target_Wav_srv-request)))
  "Returns md5sum for a message object of type 'Play_Target_Wav_srv-request"
  "5aa99f2f28c1cb6aae94bf660532cf80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Play_Target_Wav_srv-request>)))
  "Returns full string definition for message of type '<Play_Target_Wav_srv-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Play_Target_Wav_srv-request)))
  "Returns full string definition for message of type 'Play_Target_Wav_srv-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Play_Target_Wav_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Play_Target_Wav_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Play_Target_Wav_srv-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude Play_Target_Wav_srv-response.msg.html

(cl:defclass <Play_Target_Wav_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (fail_reason
    :reader fail_reason
    :initarg :fail_reason
    :type cl:string
    :initform ""))
)

(cl:defclass Play_Target_Wav_srv-response (<Play_Target_Wav_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Play_Target_Wav_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Play_Target_Wav_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xf_mic_api-srv:<Play_Target_Wav_srv-response> is deprecated: use xf_mic_api-srv:Play_Target_Wav_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Play_Target_Wav_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:result-val is deprecated.  Use xf_mic_api-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'fail_reason-val :lambda-list '(m))
(cl:defmethod fail_reason-val ((m <Play_Target_Wav_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:fail_reason-val is deprecated.  Use xf_mic_api-srv:fail_reason instead.")
  (fail_reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Play_Target_Wav_srv-response>) ostream)
  "Serializes a message object of type '<Play_Target_Wav_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fail_reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fail_reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Play_Target_Wav_srv-response>) istream)
  "Deserializes a message object of type '<Play_Target_Wav_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fail_reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fail_reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Play_Target_Wav_srv-response>)))
  "Returns string type for a service object of type '<Play_Target_Wav_srv-response>"
  "xf_mic_api/Play_Target_Wav_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play_Target_Wav_srv-response)))
  "Returns string type for a service object of type 'Play_Target_Wav_srv-response"
  "xf_mic_api/Play_Target_Wav_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Play_Target_Wav_srv-response>)))
  "Returns md5sum for a message object of type '<Play_Target_Wav_srv-response>"
  "5aa99f2f28c1cb6aae94bf660532cf80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Play_Target_Wav_srv-response)))
  "Returns md5sum for a message object of type 'Play_Target_Wav_srv-response"
  "5aa99f2f28c1cb6aae94bf660532cf80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Play_Target_Wav_srv-response>)))
  "Returns full string definition for message of type '<Play_Target_Wav_srv-response>"
  (cl:format cl:nil "string result~%string fail_reason~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Play_Target_Wav_srv-response)))
  "Returns full string definition for message of type 'Play_Target_Wav_srv-response"
  (cl:format cl:nil "string result~%string fail_reason~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Play_Target_Wav_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:length (cl:slot-value msg 'fail_reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Play_Target_Wav_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Play_Target_Wav_srv-response
    (cl:cons ':result (result msg))
    (cl:cons ':fail_reason (fail_reason msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Play_Target_Wav_srv)))
  'Play_Target_Wav_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Play_Target_Wav_srv)))
  'Play_Target_Wav_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play_Target_Wav_srv)))
  "Returns string type for a service object of type '<Play_Target_Wav_srv>"
  "xf_mic_api/Play_Target_Wav_srv")