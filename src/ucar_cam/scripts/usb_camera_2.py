import numpy as np
import cv2
import time
import os

cap = cv2.VideoCapture("/dev/ucar_video")
weight = 320
height = 240
cap.set(3, weight)
cap.set(4, height)
codec = cv2.VideoWriter.fourcc('M', 'J', 'P', 'G')
print(codec)

cap.set(cv2.CAP_PROP_FOURCC, codec)
fps = cap.get(cv2.CAP_PROP_FPS)
b_fps = time.time()
count = 0   #
save_images = False  #
save_path = "/home/ucar/ucar_ws/src/ucar_cam/photos/2"  #
if not os.path.exists(save_path):
    os.makedirs(save_path)

while True:
    f_fps = time.time()
    fps_now = str(round(1 / (f_fps - b_fps), 2))
    b_fps = f_fps
    ret, frame = cap.read()
    frame = cv2.flip(frame, 1)
    h, w = frame.shape[:2]
    print(h, w)
    print("fps:", fps)
    cv2.imshow('Camera_USB', frame)

    if save_images:
        count += 1
        filename = os.path.join(save_path, 'photo' + str(count) + '.jpg')
        cv2.imwrite(filename, frame)
        print("Successful! Save As:", filename)
        save_images = False

    key = cv2.waitKey(1)
    if key & 0xFF == ord('s'):
        save_images = True
    elif key == 27:
        break

cap.release()
cv2.destroyAllWindows()
