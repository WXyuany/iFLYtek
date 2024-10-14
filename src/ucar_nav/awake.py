#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32
import subprocess

def callback(data):
    angle = data.data
    rospy.loginfo("Received angle: %f", angle)
    # 运行1.py脚本
    subprocess.call(["python", "/home/ucar/ucar_ws/src/ucar_nav/clean.py"])
    subprocess.call(["python", "/home/ucar/ucar_ws/src/ucar_nav/multi3.py"])

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/mic/awake/angle", Int32, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
