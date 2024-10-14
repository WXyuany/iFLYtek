;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_api::Stop_To_Play_srv)
  (if (not (find-package "XF_MIC_API"))
    (make-package "XF_MIC_API"))
  (shadow 'Stop_To_Play_srv (find-package "XF_MIC_API")))
(unless (find-package "XF_MIC_API::STOP_TO_PLAY_SRV")
  (make-package "XF_MIC_API::STOP_TO_PLAY_SRV"))
(unless (find-package "XF_MIC_API::STOP_TO_PLAY_SRVREQUEST")
  (make-package "XF_MIC_API::STOP_TO_PLAY_SRVREQUEST"))
(unless (find-package "XF_MIC_API::STOP_TO_PLAY_SRVRESPONSE")
  (make-package "XF_MIC_API::STOP_TO_PLAY_SRVRESPONSE"))

(in-package "ROS")





(defclass xf_mic_api::Stop_To_Play_srvRequest
  :super ros::object
  :slots (_stop_play ))

(defmethod xf_mic_api::Stop_To_Play_srvRequest
  (:init
   (&key
    ((:stop_play __stop_play) 0)
    )
   (send-super :init)
   (setq _stop_play (round __stop_play))
   self)
  (:stop_play
   (&optional __stop_play)
   (if __stop_play (setq _stop_play __stop_play)) _stop_play)
  (:serialization-length
   ()
   (+
    ;; int8 _stop_play
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _stop_play
       (write-byte _stop_play s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _stop_play
     (setq _stop_play (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stop_play 127) (setq _stop_play (- _stop_play 256)))
   ;;
   self)
  )

(defclass xf_mic_api::Stop_To_Play_srvResponse
  :super ros::object
  :slots (_result _fail_reason ))

(defmethod xf_mic_api::Stop_To_Play_srvResponse
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

(defclass xf_mic_api::Stop_To_Play_srv
  :super ros::object
  :slots ())

(setf (get xf_mic_api::Stop_To_Play_srv :md5sum-) "0204824c56e88dfd8a1e8d415331b53f")
(setf (get xf_mic_api::Stop_To_Play_srv :datatype-) "xf_mic_api/Stop_To_Play_srv")
(setf (get xf_mic_api::Stop_To_Play_srv :request) xf_mic_api::Stop_To_Play_srvRequest)
(setf (get xf_mic_api::Stop_To_Play_srv :response) xf_mic_api::Stop_To_Play_srvResponse)

(defmethod xf_mic_api::Stop_To_Play_srvRequest
  (:response () (instance xf_mic_api::Stop_To_Play_srvResponse :init)))

(setf (get xf_mic_api::Stop_To_Play_srvRequest :md5sum-) "0204824c56e88dfd8a1e8d415331b53f")
(setf (get xf_mic_api::Stop_To_Play_srvRequest :datatype-) "xf_mic_api/Stop_To_Play_srvRequest")
(setf (get xf_mic_api::Stop_To_Play_srvRequest :definition-)
      "int8 stop_play
---
string result
string fail_reason

")

(setf (get xf_mic_api::Stop_To_Play_srvResponse :md5sum-) "0204824c56e88dfd8a1e8d415331b53f")
(setf (get xf_mic_api::Stop_To_Play_srvResponse :datatype-) "xf_mic_api/Stop_To_Play_srvResponse")
(setf (get xf_mic_api::Stop_To_Play_srvResponse :definition-)
      "int8 stop_play
---
string result
string fail_reason

")



(provide :xf_mic_api/Stop_To_Play_srv "0204824c56e88dfd8a1e8d415331b53f")


