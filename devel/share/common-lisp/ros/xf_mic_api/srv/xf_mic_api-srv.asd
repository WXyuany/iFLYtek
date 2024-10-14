
(cl:in-package :asdf)

(defsystem "xf_mic_api-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Adjust_Voice_srv" :depends-on ("_package_Adjust_Voice_srv"))
    (:file "_package_Adjust_Voice_srv" :depends-on ("_package"))
    (:file "Delete_Target_Wav_srv" :depends-on ("_package_Delete_Target_Wav_srv"))
    (:file "_package_Delete_Target_Wav_srv" :depends-on ("_package"))
    (:file "Get_Wav_List_srv" :depends-on ("_package_Get_Wav_List_srv"))
    (:file "_package_Get_Wav_List_srv" :depends-on ("_package"))
    (:file "Play_Target_Wav_srv" :depends-on ("_package_Play_Target_Wav_srv"))
    (:file "_package_Play_Target_Wav_srv" :depends-on ("_package"))
    (:file "Stop_To_Play_srv" :depends-on ("_package_Stop_To_Play_srv"))
    (:file "_package_Stop_To_Play_srv" :depends-on ("_package"))
  ))