import numpy as np
import cv2
import time
import rospy

cap = cv2.VideoCapture("/dev/ucar_video")
weight=320
height=240
cap.set(3, weight)
cap.set(4, height)
codec = cv2.VideoWriter.fourcc('M', 'J', 'P', 'G')
print(codec)

cap.set(cv2.CAP_PROP_FOURCC, codec)
fps =cap.get(cv2.CAP_PROP_FPS)
b_fps=time.time()
count = 73  #
while(True):
    f_fps=time.time()
    fps_now=str(round(1/(f_fps-b_fps),2))
    b_fps=f_fps
    ret, frame = cap.read()
    frame = cv2.flip(frame,1)
    # cv2.putText(frame,'FPS:'+' '+fps_now,(10, 30), cv2.FONT_HERSHEY_COMPLEX_SMALL, 1 ,(0,0,255),2,cv2.LINE_AA)
    h,w=frame.shape[:2]
    print(h,w)
    print("fps:",fps)
    cv2.imshow('Camera_USB', frame)
    
    #
    if cv2.waitKey(1) & 0xFF == ord('s'):
        count += 1
        filename = 'photo' + str(count) + '.jpg'  #
        cv2.imwrite(filename, frame)
        print("Successful! Save As:", filename)
    
    if cv2.waitKey(1) & 0xFF == 27:
        break
cap.release()
cv2.destroyAllWindows()
