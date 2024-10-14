# for box in msg.bounding_boxes:
#     if getattr(box, 'Class', None) in class_names:
#         consecutive_count += 1

import rospy
import multi3
from geometry_msgs.msg import Twist
from darknet_ros_msgs.msg import BoundingBoxes
import subprocess


# 全局计数器
counter = 0
consecutive_count = 0  # 用于记录连续出现的次数
counter_furit = 0

# 回调函数，接收bounding_boxes消息
def bounding_boxes_callback(msg):
    global counter
    global consecutive_count
    global counter_furit

    class_name_5 = "corn"  # 目标类别为"cornveg"
    class_name_6 = "2corn"  # 目标类别为"cornveg"
    class_name_7 = "watermelon"  # 目标类别为"cornveg"
    class_name_8 = "cucumber"  # 目标类别为"cornveg"
    class_name_9 = "2cucumber"  # 目标类别为"cornveg"
    class_name_10 = "3cucumber"  # 目标类别为"cornveg"
    class_name_11 = "corn2"  # 目标类别为"cornveg"
    class_names = [class_name_5, class_name_6, class_name_7, class_name_8, class_name_9, class_name_10, class_name_11]    

    for box in msg.bounding_boxes:
        if getattr(box, 'Class', None) in class_names:
            # consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

        elif box.Class in class_names:
            consecutive_count += 1
            if consecutive_count == 1:
                counter_furit += 1
                with open('data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)
    
                subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])
                
        if counter_furit >= 1:
            print("Received 3 bounding boxes. Stopping the program...")
            rospy.signal_shutdown("Received 3 VEG bounding boxes")