;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_api::Play_Target_Wav_srv)
  (if (not (find-package "XF_MIC_API"))
    (make-package "XF_MIC_API"))
  (shadow 'Play_Target_Wav_srv (find-package "XF_MIC_API")))
(unless (find-package "XF_MIC_API::PLAY_TARGET_WAV_SRV")
  (make-package "XF_MIC_API::PLAY_TARGET_WAV_SRV"))
(unless (find-package "XF_MIC_API::PLAY_TARGET_WAV_SRVREQUEST")
  (make-package "XF_MIC_API::PLAY_TARGET_WAV_SRVREQUEST"))
(unless (find-package "XF_MIC_API::PLAY_TARGET_WAV_SRVRESPONSE")
  (make-package "XF_MIC_API::PLAY_TARGET_WAV_SRVRESPONSE"))

(in-package "ROS")





(defclass xf_mic_api::Play_Target_Wav_srvRequest
  :super ros::object
  :slots (_filename ))

(defmethod xf_mic_api::Play_Target_Wav_srvRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xf_mic_api::Play_Target_Wav_srvResponse
  :super ros::object
  :slots (_result _fail_reason ))

(defmethod xf_mic_api::Play_Target_Wav_srvResponse
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

(defclass xf_mic_api::Play_Target_Wav_srv
  :super ros::object
  :slots ())

(setf (get xf_mic_api::Play_Target_Wav_srv :md5sum-) "5aa99f2f28c1cb6aae94bf660532cf80")
(setf (get xf_mic_api::Play_Target_Wav_srv :datatype-) "xf_mic_api/Play_Target_Wav_srv")
(setf (get xf_mic_api::Play_Target_Wav_srv :request) xf_mic_api::Play_Target_Wav_srvRequest)
(setf (get xf_mic_api::Play_Target_Wav_srv :response) xf_mic_api::Play_Target_Wav_srvResponse)

(defmethod xf_mic_api::Play_Target_Wav_srvRequest
  (:response () (instance xf_mic_api::Play_Target_Wav_srvResponse :init)))

(setf (get xf_mic_api::Play_Target_Wav_srvRequest :md5sum-) "5aa99f2f28c1cb6aae94bf660532cf80")
(setf (get xf_mic_api::Play_Target_Wav_srvRequest :datatype-) "xf_mic_api/Play_Target_Wav_srvRequest")
(setf (get xf_mic_api::Play_Target_Wav_srvRequest :definition-)
      "string filename
---
string result
string fail_reason

")

(setf (get xf_mic_api::Play_Target_Wav_srvResponse :md5sum-) "5aa99f2f28c1cb6aae94bf660532cf80")
(setf (get xf_mic_api::Play_Target_Wav_srvResponse :datatype-) "xf_mic_api/Play_Target_Wav_srvResponse")
(setf (get xf_mic_api::Play_Target_Wav_srvResponse :definition-)
      "string filename
---
string result
string fail_reason

")



(provide :xf_mic_api/Play_Target_Wav_srv "5aa99f2f28c1cb6aae94bf660532cf80")


