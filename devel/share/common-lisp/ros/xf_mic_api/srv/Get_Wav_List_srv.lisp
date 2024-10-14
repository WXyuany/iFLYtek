; Auto-generated. Do not edit!


(cl:in-package xf_mic_api-srv)


;//! \htmlinclude Get_Wav_List_srv-request.msg.html

(cl:defclass <Get_Wav_List_srv-request> (roslisp-msg-protocol:ros-message)
  ((get_list
    :reader get_list
    :initarg :get_list
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Get_Wav_List_srv-request (<Get_Wav_List_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Get_Wav_List_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Get_Wav_List_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xf_mic_api-srv:<Get_Wav_List_srv-request> is deprecated: use xf_mic_api-srv:Get_Wav_List_srv-request instead.")))

(cl:ensure-generic-function 'get_list-val :lambda-list '(m))
(cl:defmethod get_list-val ((m <Get_Wav_List_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:get_list-val is deprecated.  Use xf_mic_api-srv:get_list instead.")
  (get_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Get_Wav_List_srv-request>) ostream)
  "Serializes a message object of type '<Get_Wav_List_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'get_list)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Get_Wav_List_srv-request>) istream)
  "Deserializes a message object of type '<Get_Wav_List_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'get_list) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Get_Wav_List_srv-request>)))
  "Returns string type for a service object of type '<Get_Wav_List_srv-request>"
  "xf_mic_api/Get_Wav_List_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Get_Wav_List_srv-request)))
  "Returns string type for a service object of type 'Get_Wav_List_srv-request"
  "xf_mic_api/Get_Wav_List_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Get_Wav_List_srv-request>)))
  "Returns md5sum for a message object of type '<Get_Wav_List_srv-request>"
  "b9fb17ba35cb24b08a954cbed3a86ace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Get_Wav_List_srv-request)))
  "Returns md5sum for a message object of type 'Get_Wav_List_srv-request"
  "b9fb17ba35cb24b08a954cbed3a86ace")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Get_Wav_List_srv-request>)))
  "Returns full string definition for message of type '<Get_Wav_List_srv-request>"
  (cl:format cl:nil "int8 get_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Get_Wav_List_srv-request)))
  "Returns full string definition for message of type 'Get_Wav_List_srv-request"
  (cl:format cl:nil "int8 get_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Get_Wav_List_srv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Get_Wav_List_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Get_Wav_List_srv-request
    (cl:cons ':get_list (get_list msg))
))
;//! \htmlinclude Get_Wav_List_srv-response.msg.html

(cl:defclass <Get_Wav_List_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (fail_reason
    :reader fail_reason
    :initarg :fail_reason
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0)
   (wav_list
    :reader wav_list
    :initarg :wav_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Get_Wav_List_srv-response (<Get_Wav_List_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Get_Wav_List_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Get_Wav_List_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xf_mic_api-srv:<Get_Wav_List_srv-response> is deprecated: use xf_mic_api-srv:Get_Wav_List_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Get_Wav_List_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:result-val is deprecated.  Use xf_mic_api-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'fail_reason-val :lambda-list '(m))
(cl:defmethod fail_reason-val ((m <Get_Wav_List_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:fail_reason-val is deprecated.  Use xf_mic_api-srv:fail_reason instead.")
  (fail_reason m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <Get_Wav_List_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:number-val is deprecated.  Use xf_mic_api-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'wav_list-val :lambda-list '(m))
(cl:defmethod wav_list-val ((m <Get_Wav_List_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-srv:wav_list-val is deprecated.  Use xf_mic_api-srv:wav_list instead.")
  (wav_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Get_Wav_List_srv-response>) ostream)
  "Serializes a message object of type '<Get_Wav_List_srv-response>"
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
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wav_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'wav_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Get_Wav_List_srv-response>) istream)
  "Deserializes a message object of type '<Get_Wav_List_srv-response>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wav_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wav_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Get_Wav_List_srv-response>)))
  "Returns string type for a service object of type '<Get_Wav_List_srv-response>"
  "xf_mic_api/Get_Wav_List_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Get_Wav_List_srv-response)))
  "Returns string type for a service object of type 'Get_Wav_List_srv-response"
  "xf_mic_api/Get_Wav_List_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Get_Wav_List_srv-response>)))
  "Returns md5sum for a message object of type '<Get_Wav_List_srv-response>"
  "b9fb17ba35cb24b08a954cbed3a86ace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Get_Wav_List_srv-response)))
  "Returns md5sum for a message object of type 'Get_Wav_List_srv-response"
  "b9fb17ba35cb24b08a954cbed3a86ace")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Get_Wav_List_srv-response>)))
  "Returns full string definition for message of type '<Get_Wav_List_srv-response>"
  (cl:format cl:nil "string result~%string fail_reason~%int8 number~%string[] wav_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Get_Wav_List_srv-response)))
  "Returns full string definition for message of type 'Get_Wav_List_srv-response"
  (cl:format cl:nil "string result~%string fail_reason~%int8 number~%string[] wav_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Get_Wav_List_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:length (cl:slot-value msg 'fail_reason))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wav_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Get_Wav_List_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Get_Wav_List_srv-response
    (cl:cons ':result (result msg))
    (cl:cons ':fail_reason (fail_reason msg))
    (cl:cons ':number (number msg))
    (cl:cons ':wav_list (wav_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Get_Wav_List_srv)))
  'Get_Wav_List_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Get_Wav_List_srv)))
  'Get_Wav_List_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Get_Wav_List_srv)))
  "Returns string type for a service object of type '<Get_Wav_List_srv>"
  "xf_mic_api/Get_Wav_List_srv")