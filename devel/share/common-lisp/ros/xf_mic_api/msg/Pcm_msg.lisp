; Auto-generated. Do not edit!


(cl:in-package xf_mic_api-msg)


;//! \htmlinclude Pcm_msg.msg.html

(cl:defclass <Pcm_msg> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (pcm_buf
    :reader pcm_buf
    :initarg :pcm_buf
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Pcm_msg (<Pcm_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pcm_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pcm_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xf_mic_api-msg:<Pcm_msg> is deprecated: use xf_mic_api-msg:Pcm_msg instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Pcm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-msg:length-val is deprecated.  Use xf_mic_api-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'pcm_buf-val :lambda-list '(m))
(cl:defmethod pcm_buf-val ((m <Pcm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_api-msg:pcm_buf-val is deprecated.  Use xf_mic_api-msg:pcm_buf instead.")
  (pcm_buf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pcm_msg>) ostream)
  "Serializes a message object of type '<Pcm_msg>"
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pcm_buf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'pcm_buf))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pcm_msg>) istream)
  "Deserializes a message object of type '<Pcm_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pcm_buf) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pcm_buf)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pcm_msg>)))
  "Returns string type for a message object of type '<Pcm_msg>"
  "xf_mic_api/Pcm_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pcm_msg)))
  "Returns string type for a message object of type 'Pcm_msg"
  "xf_mic_api/Pcm_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pcm_msg>)))
  "Returns md5sum for a message object of type '<Pcm_msg>"
  "16b54b71ac26cea4c3b47ae21456fcc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pcm_msg)))
  "Returns md5sum for a message object of type 'Pcm_msg"
  "16b54b71ac26cea4c3b47ae21456fcc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pcm_msg>)))
  "Returns full string definition for message of type '<Pcm_msg>"
  (cl:format cl:nil "int8 length~%char[] pcm_buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pcm_msg)))
  "Returns full string definition for message of type 'Pcm_msg"
  (cl:format cl:nil "int8 length~%char[] pcm_buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pcm_msg>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pcm_buf) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pcm_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Pcm_msg
    (cl:cons ':length (length msg))
    (cl:cons ':pcm_buf (pcm_buf msg))
))
