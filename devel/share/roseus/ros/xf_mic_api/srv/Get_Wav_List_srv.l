;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_api::Get_Wav_List_srv)
  (if (not (find-package "XF_MIC_API"))
    (make-package "XF_MIC_API"))
  (shadow 'Get_Wav_List_srv (find-package "XF_MIC_API")))
(unless (find-package "XF_MIC_API::GET_WAV_LIST_SRV")
  (make-package "XF_MIC_API::GET_WAV_LIST_SRV"))
(unless (find-package "XF_MIC_API::GET_WAV_LIST_SRVREQUEST")
  (make-package "XF_MIC_API::GET_WAV_LIST_SRVREQUEST"))
(unless (find-package "XF_MIC_API::GET_WAV_LIST_SRVRESPONSE")
  (make-package "XF_MIC_API::GET_WAV_LIST_SRVRESPONSE"))

(in-package "ROS")





(defclass xf_mic_api::Get_Wav_List_srvRequest
  :super ros::object
  :slots (_get_list ))

(defmethod xf_mic_api::Get_Wav_List_srvRequest
  (:init
   (&key
    ((:get_list __get_list) 0)
    )
   (send-super :init)
   (setq _get_list (round __get_list))
   self)
  (:get_list
   (&optional __get_list)
   (if __get_list (setq _get_list __get_list)) _get_list)
  (:serialization-length
   ()
   (+
    ;; int8 _get_list
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _get_list
       (write-byte _get_list s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _get_list
     (setq _get_list (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _get_list 127) (setq _get_list (- _get_list 256)))
   ;;
   self)
  )

(defclass xf_mic_api::Get_Wav_List_srvResponse
  :super ros::object
  :slots (_result _fail_reason _number _wav_list ))

(defmethod xf_mic_api::Get_Wav_List_srvResponse
  (:init
   (&key
    ((:result __result) "")
    ((:fail_reason __fail_reason) "")
    ((:number __number) 0)
    ((:wav_list __wav_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _fail_reason (string __fail_reason))
   (setq _number (round __number))
   (setq _wav_list __wav_list)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:fail_reason
   (&optional __fail_reason)
   (if __fail_reason (setq _fail_reason __fail_reason)) _fail_reason)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:wav_list
   (&optional __wav_list)
   (if __wav_list (setq _wav_list __wav_list)) _wav_list)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; string _fail_reason
    4 (length _fail_reason)
    ;; int8 _number
    1
    ;; string[] _wav_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _wav_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _fail_reason
       (write-long (length _fail_reason) s) (princ _fail_reason s)
     ;; int8 _number
       (write-byte _number s)
     ;; string[] _wav_list
     (write-long (length _wav_list) s)
     (dolist (elem _wav_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _fail_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fail_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _number
     (setq _number (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _number 127) (setq _number (- _number 256)))
   ;; string[] _wav_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wav_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _wav_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass xf_mic_api::Get_Wav_List_srv
  :super ros::object
  :slots ())

(setf (get xf_mic_api::Get_Wav_List_srv :md5sum-) "b9fb17ba35cb24b08a954cbed3a86ace")
(setf (get xf_mic_api::Get_Wav_List_srv :datatype-) "xf_mic_api/Get_Wav_List_srv")
(setf (get xf_mic_api::Get_Wav_List_srv :request) xf_mic_api::Get_Wav_List_srvRequest)
(setf (get xf_mic_api::Get_Wav_List_srv :response) xf_mic_api::Get_Wav_List_srvResponse)

(defmethod xf_mic_api::Get_Wav_List_srvRequest
  (:response () (instance xf_mic_api::Get_Wav_List_srvResponse :init)))

(setf (get xf_mic_api::Get_Wav_List_srvRequest :md5sum-) "b9fb17ba35cb24b08a954cbed3a86ace")
(setf (get xf_mic_api::Get_Wav_List_srvRequest :datatype-) "xf_mic_api/Get_Wav_List_srvRequest")
(setf (get xf_mic_api::Get_Wav_List_srvRequest :definition-)
      "int8 get_list
---
string result
string fail_reason
int8 number
string[] wav_list

")

(setf (get xf_mic_api::Get_Wav_List_srvResponse :md5sum-) "b9fb17ba35cb24b08a954cbed3a86ace")
(setf (get xf_mic_api::Get_Wav_List_srvResponse :datatype-) "xf_mic_api/Get_Wav_List_srvResponse")
(setf (get xf_mic_api::Get_Wav_List_srvResponse :definition-)
      "int8 get_list
---
string result
string fail_reason
int8 number
string[] wav_list

")



(provide :xf_mic_api/Get_Wav_List_srv "b9fb17ba35cb24b08a954cbed3a86ace")


