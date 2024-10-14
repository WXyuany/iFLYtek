import rospy
from geometry_msgs.msg import Twist
from darknet_ros_msgs.msg import BoundingBoxes

# 全局变量
target_class = "cornveg"  # 目标类别为"cornveg"
follow_distance = 0.000015  # 跟随距离（1米）
follow_speed = 0.5  # 跟随速度
turn_speed = 0.2  # 转向速度

# 回调函数，接收bounding_boxes消息
def bounding_boxes_callback(msg):
    global target_class

    # 遍历所有的bounding box
    for box in msg.bounding_boxes:
        # 如果类别为目标类别
        if box.Class == target_class:
            # 获取目标在图像中的位置信息
            x_center = (box.xmin + box.xmax) / 2.0  # 目标在图像中的水平中心位置

            # 根据目标在图像中的位置信息估计目标与小车之间的距离
            distance = estimate_distance(x_center)

            # # 判断距离，进行相应的操作
            # if distance > follow_distance:
            #     # 发布控制小车前进的消息
            #     cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            #     twist_msg = Twist()
            #     twist_msg.linear.x = follow_speed
            #     cmd_vel_pub.publish(twist_msg)
            # elif distance < follow_distance:
            #     # 发布控制小车后退的消息
            #     cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            #     twist_msg = Twist()
            #     twist_msg.linear.x = -follow_speed
            #     cmd_vel_pub.publish(twist_msg)
            # else:
            #     # 发布控制小车停止的消息
            #     cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            #     twist_msg = Twist()
            #     cmd_vel_pub.publish(twist_msg)

            # 判断目标在图像中的位置，进行相应的转向操作
            if x_center < 0.2:
                # 发布控制小车左转的消息
                cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
                twist_msg = Twist()
                twist_msg.linear.x = follow_speed
                twist_msg.angular.z = turn_speed
                cmd_vel_pub.publish(twist_msg)
            # elif x_center > 0.9:
            #     # 发布控制小车右转的消息
            #     cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            #     twist_msg = Twist()
            #     twist_msg.angular.z = -turn_speed
            #     cmd_vel_pub.publish(twist_msg)
            # else:
            #     # 发布控制小车停止转向的消息
            #     cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            #     twist_msg = Twist()
            #     cmd_vel_pub.publish(twist_msg)

            break  # 跳出循环，只跟随第一个目标

# 估计目标与小车之间的距离
def estimate_distance(x_center):
    # 根据目标在图像中的位置信息，使用视觉方法估计目标与小车之间的距离
    # 这里只是一个示例，您需要根据您的具体情况来实现估计距离的方法
    # 可以使用目标在图像中的大小和位置信息，结合摄像头的参数和几何关系来进行估计

    # 假设目标在图像中的大小为0.2，小车与目标之间的实际距离为2米
    target_size = 0.1
    actual_distance = 0.05

    # 根据目标在图像中的大小和位置信息，估计目标与小车之间的距离
    estimated_distance = (target_size * actual_distance) / (2 * x_center)

    return estimated_distance

# 初始化ROS节点
rospy.init_node('bounding_box_subscriber')

# 创建一个订阅者，订阅/darknet_ros/bounding_boxes话题
rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes, bounding_boxes_callback)

# 运行循环等待消息
rospy.spin()
