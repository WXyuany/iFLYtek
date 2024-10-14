;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_api::Adjust_Voice_srv)
  (if (not (find-package "XF_MIC_API"))
    (make-package "XF_MIC_API"))
  (shadow 'Adjust_Voice_srv (find-package "XF_MIC_API")))
(unless (find-package "XF_MIC_API::ADJUST_VOICE_SRV")
  (make-package "XF_MIC_API::ADJUST_VOICE_SRV"))
(unless (find-package "XF_MIC_API::ADJUST_VOICE_SRVREQUEST")
  (make-package "XF_MIC_API::ADJUST_VOICE_SRVREQUEST"))
(unless (find-package "XF_MIC_API::ADJUST_VOICE_SRVRESPONSE")
  (make-package "XF_MIC_API::ADJUST_VOICE_SRVRESPONSE"))

(in-package "ROS")





(defclass xf_mic_api::Adjust_Voice_srvRequest
  :super ros::object
  :slots (_voice ))

(defmethod xf_mic_api::Adjust_Voice_srvRequest
  (:init
   (&key
    ((:voice __voice) 0)
    )
   (send-super :init)
   (setq _voice (round __voice))
   self)
  (:voice
   (&optional __voice)
   (if __voice (setq _voice __voice)) _voice)
  (:serialization-length
   ()
   (+
    ;; int8 _voice
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _voice
       (write-byte _voice s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _voice
     (setq _voice (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _voice 127) (setq _voice (- _voice 256)))
   ;;
   self)
  )

(defclass xf_mic_api::Adjust_Voice_srvResponse
  :super ros::object
  :slots (_result _fail_reason ))

(defmethod xf_mic_api::Adjust_Voice_srvResponse
  (:init
   (&key
    ((:result __result) "")
    ((:fail_reason __fail_reason) "")
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _fail_reason (string __fail_reason))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:fail_reason
   (&optional __fail_reason)
   (if __fail_reason (setq _fail_reason __fail_reason)) _fail_reason)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; string _fail_reason
    4 (length _fail_reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _fail_reason
       (write-long (length _fail_reason) s) (princ _fail_reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _fail_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fail_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xf_mic_api::Adjust_Voice_srv
  :super ros::object
  :slots ())

(setf (get xf_mic_api::Adjust_Voice_srv :md5sum-) "1fe39a8a9d88b2ef00e2ad1af9f88f0d")
(setf (get xf_mic_api::Adjust_Voice_srv :datatype-) "xf_mic_api/Adjust_Voice_srv")
(setf (get xf_mic_api::Adjust_Voice_srv :request) xf_mic_api::Adjust_Voice_srvRequest)
(setf (get xf_mic_api::Adjust_Voice_srv :response) xf_mic_api::Adjust_Voice_srvResponse)

(defmethod xf_mic_api::Adjust_Voice_srvRequest
  (:response () (instance xf_mic_api::Adjust_Voice_srvResponse :init)))

(setf (get xf_mic_api::Adjust_Voice_srvRequest :md5sum-) "1fe39a8a9d88b2ef00e2ad1af9f88f0d")
(setf (get xf_mic_api::Adjust_Voice_srvRequest :datatype-) "xf_mic_api/Adjust_Voice_srvRequest")
(setf (get xf_mic_api::Adjust_Voice_srvRequest :definition-)
      "int8 voice # 1-100
---
string result
string fail_reason

")

(setf (get xf_mic_api::Adjust_Voice_srvResponse :md5sum-) "1fe39a8a9d88b2ef00e2ad1af9f88f0d")
(setf (get xf_mic_api::Adjust_Voice_srvResponse :datatype-) "xf_mic_api/Adjust_Voice_srvResponse")
(setf (get xf_mic_api::Adjust_Voice_srvResponse :definition-)
      "int8 voice # 1-100
---
string result
string fail_reason

")



(provide :xf_mic_api/Adjust_Voice_srv "1fe39a8a9d88b2ef00e2ad1af9f88f0d")


