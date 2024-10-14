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
    class_name_1 = "cornveg"  # 目标类别为"cornveg"
    class_name_2 = "riceveg"  # 目标类别为"cornveg"
    class_name_3 = "wheatveg"  # 目标类别为"cornveg"
    class_name_4 = "cucumberveg"  # 目标类别为"cornveg"
    
    # 遍历所有的bounding box
    for box in msg.bounding_boxes:
        # 如果类别为目标类别
        ###########################################################################
        if box.Class == class_name_1:
            consecutive_count += 1
            # subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])
        # else:
        #     consecutive_count = 0

            if consecutive_count == 1:
                counter += 1
                # 打开文档，并以写入模式写入内容
                with open('/home/ucar/ucar_ws/src/ucar_nav/data.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

                # print("Class:", multi3.class_name_results)
                # print("Class:", box.Class)

        ###########################################################################
        # 如果类别为目标类别
        if box.Class == class_name_2:
            consecutive_count += 1
            # subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        # 如果类别为目标类别
        if box.Class == class_name_3:
            consecutive_count += 1
            # subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        # 如果类别为目标类别
        if box.Class == class_name_4:
            consecutive_count += 1
            # subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

    # 判断计数器是否达到3
    if counter >= 1:
        print("Received 3 bounding boxes. Stopping the program...")
        rospy.signal_shutdown("Received 3 VEG bounding boxes")

# 初始化ROS节点
rospy.init_node('bounding_box_subscriber')
# 创建一个订阅者，订阅/darknet_ros/bounding_boxes话题
rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes, bounding_boxes_callback)
# 运行循环等待消息
rospy.spin()