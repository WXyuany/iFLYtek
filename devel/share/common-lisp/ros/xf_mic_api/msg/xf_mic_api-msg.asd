
(cl:in-package :asdf)

(defsystem "xf_mic_api-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pcm_msg" :depends-on ("_package_Pcm_msg"))
    (:file "_package_Pcm_msg" :depends-on ("_package"))
  ))