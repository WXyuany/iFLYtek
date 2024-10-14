
(cl:in-package :asdf)

(defsystem "xf_mic_tts_online-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Play_TTS_Online_srv" :depends-on ("_package_Play_TTS_Online_srv"))
    (:file "_package_Play_TTS_Online_srv" :depends-on ("_package"))
  ))