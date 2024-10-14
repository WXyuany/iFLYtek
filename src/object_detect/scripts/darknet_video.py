#!/usr/bin/python3
from ctypes import *
import math
import rospy
import random
import os
import cv2
import numpy as np
import time
import darknet
from std_msgs.msg import Header
from sensor_msgs.msg import Image

image_width = 640
image_height = 480

Z=153
fx = 420.11
cx = 319.60
fy = 421.68 
cy = 244.82
txt_path="/home/U-arm/xf_arm_ws/src/object_detect/scripts/default_config.txt"
R_C_W = np.loadtxt(txt_path,delimiter=',')

print("R_C_W:", R_C_W)
k1, k2, p1, p2, k3 = -0.318607, 0.097228, 0.000029, 0.000642, 0.
R_C_U = np.array([[fx, 0.000000, cx], [0.000000, fy, cy], [0, 0, 1]])
R_U_C = np.linalg.inv(R_C_U)
k = np.array([
    [fx, 0, cx],
    [0, fy, cy],
    [0, 0, 1]
])

d = np.array([
    k1, k2, p1, p2, k3
])
# h, w = img.shape[:2]
mapx, mapy = cv2.initUndistortRectifyMap(k, d, None, k, (image_width, image_height), 5)

card_list = [b"Energy saving light", b"pinapple", b"comb", b"Banana peel", b"Medical gloves", b"socket", b"X-ray film",
             b"waste lock"]


def caclute_3d_location(Xu, Xv):
    print("xu:%.2f,yu:%.2f" % (Xu, Xv))
    m = [[Xu], [Xv], [1]]
    Xc = Z * np.dot(R_U_C, m)[0, :]
    Yc = Z * np.dot(R_U_C, m)[1, :]
    Zc = Z * np.dot(R_U_C, m)[2, :]

    N = [[Xc], [Yc], [Z], [1]]
    Xw = np.dot(R_C_W, N)[0, :]
    Yw = np.dot(R_C_W, N)[1, :]
    print("xc:%.2f,yc:%.2f,zc:%.2f" % (Xc, Yc, Zc))  ##error
    print("xw:%.2f,yw:%.2f" % (Xw, Yw))  ##error
    # if Yw<0:
    # return Xc,Yc,5
    # else:
    # return Xc+5,Yc+3,5
    # if Yw<0:
    return Xw, Yw, 5.0


def undistort(img):
    return cv2.remap(img, mapx, mapy, cv2.INTER_LINEAR)


def convertBack(x, y, w, h):
    xmin = int(round(x - (w / 2)))
    xmax = int(round(x + (w / 2)))
    ymin = int(round(y - (h / 2)))
    ymax = int(round(y + (h / 2)))
    return xmin, ymin, xmax, ymax


def cvDrawBoxes(detections, img):
    for detection in detections:
        x, y, w, h = detection[2][0], \
                     detection[2][1], \
                     detection[2][2], \
                     detection[2][3]
        xmin, ymin, xmax, ymax = convertBack(
            float(x), float(y), float(w), float(h))
        pt1 = (xmin, ymin)
        pt2 = (xmax, ymax)
        cv2.rectangle(img, pt1, pt2, (0, 255, 0), 1)
        cv2.putText(img,
                    detection[0].decode() +
                    " [" + str(round(detection[1] * 100, 2)) + "]",
                    (pt1[0], pt1[1] - 5), cv2.FONT_HERSHEY_SIMPLEX, 0.5,
                    [0, 255, 0], 2)
    return img


netMain = None
metaMain = None
altNames = None


#发布图片
def publish_image(imgdata):
    image_temp = Image()  # 定义是一张图片
    header = Header(stamp=rospy.Time.now())  # 定义图片header
    header.frame_id = 'opencv'  # 定义图片header里的id号
    image_temp.height = image_height  # 定义图片高度480
    image_temp.width = image_width  # 定义图片宽度640
    image_temp.encoding = 'rgb8'  # 图片格式
    image_temp.data = np.array(imgdata).tostring()  # 图片内容，这里要转换成字符串
    image_temp.is_bigendian = True
    image_temp.header = header  # 定义这个图片的header
    image_temp.step = image_width * 3  # 告诉ROS图片每行的大小 28是宽度3是3byte像素（rgb）
    image_pubulish.publish(image_temp)  # 发布图片


def YOLO():
    global metaMain, netMain, altNames
    configPath = "./config/yolov3-tiny.cfg"#yolov3-tiny权重文件
    weightPath = "./weights/yolov3-tiny_final.weights"
    metaPath = "./config/voc.data"#包括识别的种类，具体名称
    if not os.path.exists(configPath):
        raise ValueError("Invalid config path `" +
                         os.path.abspath(configPath) + "`")
    if not os.path.exists(weightPath):
        raise ValueError("Invalid weight path `" +
                         os.path.abspath(weightPath) + "`")
    if not os.path.exists(metaPath):
        raise ValueError("Invalid data file path `" +
                         os.path.abspath(metaPath) + "`")
    if netMain is None:#None空，如果主网络为空
        netMain = darknet.load_net_custom(configPath.encode(
            "ascii"), weightPath.encode("ascii"), 0, 1)  # batch size = 1
    if metaMain is None:
        metaMain = darknet.load_meta(metaPath.encode("ascii"))
    if altNames is None:
        try:
            with open(metaPath) as metaFH:
                metaContents = metaFH.read()
                import re
                match = re.search("names *= *(.*)$", metaContents,
                                  re.IGNORECASE | re.MULTILINE)
                if match:
                    result = match.group(1)
                else:
                    result = None
                try:
                    if os.path.exists(result):
                        with open(result) as namesFH:
                            namesList = namesFH.read().strip().split("\n")
                            altNames = [x.strip() for x in namesList]
                except TypeError:
                    pass
        except Exception:
            pass
    cap = cv2.VideoCapture(0)
    # cap = cv2.VideoCapture(1)
    cap.set(3, image_width)
    cap.set(4, image_height)
    # out = cv2.VideoWriter(
    # "output.avi", cv2.VideoWriter_fourcc(*"MJPG"), 10.0,
    # (darknet.network_width(netMain), darknet.network_height(netMain)))
    # print("Starting the YOLO loop...")

    # Create an image we reuse for each detect
    darknet_image = darknet.make_image(darknet.network_width(netMain),
                                       darknet.network_height(netMain), 3)#设置适合darknet网络图片参数
    while not rospy.is_shutdown():
        prev_time = time.time()
        ret, frame_read = cap.read()
        #frame_read = cv2.flip(frame_read, -1)
        frame_read = cv2.flip(frame_read, 1)
        frame_read = undistort(frame_read)#矫正畸变
        frame_rgb = cv2.cvtColor(frame_read, cv2.COLOR_BGR2RGB)#转成灰度图
        frame_resized = cv2.resize(frame_rgb,
                                   (darknet.network_width(netMain),
                                    darknet.network_height(netMain)),
                                   interpolation=cv2.INTER_LINEAR)#尺寸转换

        darknet.copy_image_from_bytes(darknet_image, frame_resized.tobytes())#拷贝字节形式的灰度图到darknet_image

        detections = darknet.detect_image(netMain, metaMain, darknet_image, thresh=0.3, debug=False)#进行检测
        print("detection:")
        print(detections)#打印预测结果
        detection_result = []
        dw = image_width / darknet.network_width(netMain)#分块  
        dh = image_height / darknet.network_height(netMain)      

        if len(detections) == 0:#如果检测结果为空
            pub_list = Card()#定义卡片信息
            pub_list.data = 0#检测到的数量结果为0
            pub_list.pose = detection_result#检测到的方向结果也为空
            detection_pub.publish(pub_list)#detection_pub在main函数中做了定义，
        else:
            for i in range(len(detections)):#如果检测结果不为空
                global card_list
                list_index = card_list.index(detections[i][0])#卡片序号
                x, y, z = caclute_3d_location((detections[i][2][0]) * dw,
                                              (detections[i][2][1]) * dh)#获取计算得到的三维坐标
                detection_result.append(list_index)#追加检测结果到datection_result
                detection_result.append(x)
                detection_result.append(y)
                detection_result.append(z)
            pub_list = Card()
            pub_list.data = len(detections)
            pub_list.pose = detection_result
            detection_pub.publish(pub_list)#发布检测结果

        image = cvDrawBoxes(detections, frame_resized)#画框
        image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)#格式转换
        print("fps:%.2f" % (1 / (time.time() - prev_time)))#打印帧率间隔
        publish_image(image)#发布图像          
        image = cv2.flip(image, -1)#对图像进行翻转
        cv2.imshow('Demo', image)#显示检测到的结果
        cv2.waitKey(3)
    cap.release()#释放指针
    out.release()


if __name__ == "__main__":
    try:
        rospy.init_node('object_detect', anonymous=True)
        detection_pub = rospy.Publisher("/card/detection_result", Card, queue_size=1)
        image_pubulish = rospy.Publisher('/usb_cam/image_raw', Image, queue_size=1)
        rate = rospy.Rate(10)  # 10hz
        YOLO()
    except rospy.ROSInterruptException:
        cap.release()
        out.release()
        pass
