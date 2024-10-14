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
        if box.Class == class_name_5:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        elif box.Class == class_name_6:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        elif box.Class == class_name_7:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        elif box.Class == class_name_8:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        elif box.Class == class_name_9:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        elif box.Class == class_name_10:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ###########################################################################
        elif box.Class == class_name_11:
            consecutive_count += 1
            subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/rotate.py'])

            if consecutive_count == 1:
                counter += 1
                with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write(box.Class)

        ##########################################################################
        else:
            counter = 1
            with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'a') as file:
                    if file.tell() != 0:
                        file.write(',')
                    file.write('watermelon')

    if counter >= 1:
        print("Received 3 bounding boxes. Stopping the program...")
        rospy.signal_shutdown("Received 3 VEG bounding boxes")

rospy.init_node('bounding_box_subscriber')
rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes, bounding_boxes_callback)
rospy.spin()