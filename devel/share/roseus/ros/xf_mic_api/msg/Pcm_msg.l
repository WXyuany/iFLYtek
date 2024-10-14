;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_api::Pcm_msg)
  (if (not (find-package "XF_MIC_API"))
    (make-package "XF_MIC_API"))
  (shadow 'Pcm_msg (find-package "XF_MIC_API")))
(unless (find-package "XF_MIC_API::PCM_MSG")
  (make-package "XF_MIC_API::PCM_MSG"))

(in-package "ROS")
;;//! \htmlinclude Pcm_msg.msg.html


(defclass xf_mic_api::Pcm_msg
  :super ros::object
  :slots (_length _pcm_buf ))

(defmethod xf_mic_api::Pcm_msg
  (:init
   (&key
    ((:length __length) 0)
    ((:pcm_buf __pcm_buf) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _length (round __length))
   (setq _pcm_buf __pcm_buf)
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:pcm_buf
   (&optional __pcm_buf)
   (if __pcm_buf (setq _pcm_buf __pcm_buf)) _pcm_buf)
  (:serialization-length
   ()
   (+
    ;; int8 _length
    1
    ;; char[] _pcm_buf
    (* 1    (length _pcm_buf)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _length
       (write-byte _length s)
     ;; char[] _pcm_buf
     (write-long (length _pcm_buf) s)
     (dotimes (i (length _pcm_buf))
       (write-byte (elt _pcm_buf i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _length 127) (setq _length (- _length 256)))
   ;; char[] _pcm_buf
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pcm_buf (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pcm_buf i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get xf_mic_api::Pcm_msg :md5sum-) "16b54b71ac26cea4c3b47ae21456fcc5")
(setf (get xf_mic_api::Pcm_msg :datatype-) "xf_mic_api/Pcm_msg")
(setf (get xf_mic_api::Pcm_msg :definition-)
      "int8 length
char[] pcm_buf

")



(provide :xf_mic_api/Pcm_msg "16b54b71ac26cea4c3b47ae21456fcc5")


