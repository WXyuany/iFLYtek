;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_tts_online::Play_TTS_Online_srv)
  (if (not (find-package "XF_MIC_TTS_ONLINE"))
    (make-package "XF_MIC_TTS_ONLINE"))
  (shadow 'Play_TTS_Online_srv (find-package "XF_MIC_TTS_ONLINE")))
(unless (find-package "XF_MIC_TTS_ONLINE::PLAY_TTS_ONLINE_SRV")
  (make-package "XF_MIC_TTS_ONLINE::PLAY_TTS_ONLINE_SRV"))
(unless (find-package "XF_MIC_TTS_ONLINE::PLAY_TTS_ONLINE_SRVREQUEST")
  (make-package "XF_MIC_TTS_ONLINE::PLAY_TTS_ONLINE_SRVREQUEST"))
(unless (find-package "XF_MIC_TTS_ONLINE::PLAY_TTS_ONLINE_SRVRESPONSE")
  (make-package "XF_MIC_TTS_ONLINE::PLAY_TTS_ONLINE_SRVRESPONSE"))

(in-package "ROS")





(defclass xf_mic_tts_online::Play_TTS_Online_srvRequest
  :super ros::object
  :slots (_text _appID _speakerName ))

(defmethod xf_mic_tts_online::Play_TTS_Online_srvRequest
  (:init
   (&key
    ((:text __text) "")
    ((:appID __appID) "")
    ((:speakerName __speakerName) "")
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _appID (string __appID))
   (setq _speakerName (string __speakerName))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:appID
   (&optional __appID)
   (if __appID (setq _appID __appID)) _appID)
  (:speakerName
   (&optional __speakerName)
   (if __speakerName (setq _speakerName __speakerName)) _speakerName)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; string _appID
    4 (length _appID)
    ;; string _speakerName
    4 (length _speakerName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _appID
       (write-long (length _appID) s) (princ _appID s)
     ;; string _speakerName
       (write-long (length _speakerName) s) (princ _speakerName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _appID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _appID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _speakerName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speakerName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xf_mic_tts_online::Play_TTS_Online_srvResponse
  :super ros::object
  :slots (_result _fail_reason ))

(defmethod xf_mic_tts_online::Play_TTS_Online_srvResponse
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

(defclass xf_mic_tts_online::Play_TTS_Online_srv
  :super ros::object
  :slots ())

(setf (get xf_mic_tts_online::Play_TTS_Online_srv :md5sum-) "8933c186a674fd503166dc2df31b3720")
(setf (get xf_mic_tts_online::Play_TTS_Online_srv :datatype-) "xf_mic_tts_online/Play_TTS_Online_srv")
(setf (get xf_mic_tts_online::Play_TTS_Online_srv :request) xf_mic_tts_online::Play_TTS_Online_srvRequest)
(setf (get xf_mic_tts_online::Play_TTS_Online_srv :response) xf_mic_tts_online::Play_TTS_Online_srvResponse)

(defmethod xf_mic_tts_online::Play_TTS_Online_srvRequest
  (:response () (instance xf_mic_tts_online::Play_TTS_Online_srvResponse :init)))

(setf (get xf_mic_tts_online::Play_TTS_Online_srvRequest :md5sum-) "8933c186a674fd503166dc2df31b3720")
(setf (get xf_mic_tts_online::Play_TTS_Online_srvRequest :datatype-) "xf_mic_tts_online/Play_TTS_Online_srvRequest")
(setf (get xf_mic_tts_online::Play_TTS_Online_srvRequest :definition-)
      "string text
string appID
string speakerName
---
string result
string fail_reason

")

(setf (get xf_mic_tts_online::Play_TTS_Online_srvResponse :md5sum-) "8933c186a674fd503166dc2df31b3720")
(setf (get xf_mic_tts_online::Play_TTS_Online_srvResponse :datatype-) "xf_mic_tts_online/Play_TTS_Online_srvResponse")
(setf (get xf_mic_tts_online::Play_TTS_Online_srvResponse :definition-)
      "string text
string appID
string speakerName
---
string result
string fail_reason

")



(provide :xf_mic_tts_online/Play_TTS_Online_srv "8933c186a674fd503166dc2df31b3720")


