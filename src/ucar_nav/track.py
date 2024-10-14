import rospy
from geometry_msgs.msg import Twist
from darknet_ros_msgs.msg import BoundingBoxes

# 全局变量
target_class = "cornveg"  # 目标类别为"cornveg"
follow_speed = 5  # 跟随速度

# 回调函数，接收bounding_boxes消息
def bounding_boxes_callback(msg):
    global target_class

    # 遍历所有的bounding box
    for box in msg.bounding_boxes:
        # 如果类别为目标类别
        if box.Class == target_class:
            # 发布控制小车行走的消息
            # rospy.init_node('cmd_vel_publisher', anonymous=False)
            cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            twist_msg = Twist()
            twist_msg.linear.x = follow_speed
            cmd_vel_pub.publish(twist_msg)
            break  # 跳出循环，只跟随第一个目标

# 初始化ROS节点
rospy.init_node('bounding_box_subscriber')

# 创建一个订阅者，订阅/darknet_ros/bounding_boxes话题
rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes, bounding_boxes_callback)

# 运行循环等待消息
rospy.spin()
