import rospy
from geometry_msgs.msg import Twist
from darknet_ros_msgs.msg import BoundingBoxes

# 全局变量
target_class = "cornveg"  # 目标类别为"cornveg"
target_distance = 0.00002  # 目标距离（1米）
follow_speed = 0.2  # 跟随速度
turn_speed = 0.2  # 转向速度

# PID控制器参数
kp = 0.5  # 比例系数
ki = 0.0  # 积分系数
kd = 0.1  # 微分系数

# 全局变量
error_integral = 0.0  # 误差积分项
prev_error = 0.0  # 上一次的误差

# 回调函数，接收bounding_boxes消息
def bounding_boxes_callback(msg):
    global target_class, error_integral, prev_error

    # 遍历所有的bounding box
    for box in msg.bounding_boxes:
        # 如果类别为目标类别
        if box.Class == target_class:
            # 获取目标在图像中的位置信息
            x_center = (box.xmin + box.xmax) / 2.0  # 目标在图像中的水平中心位置

            # 计算目标与小车之间的距离误差
            distance_error = target_distance - estimate_distance(x_center)

            # 计算PID控制器的输出
            control_output = pid_controller(distance_error)

            # 发布控制小车的消息
            cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
            twist_msg = Twist()
            twist_msg.linear.x = follow_speed
            twist_msg.angular.z = control_output
            cmd_vel_pub.publish(twist_msg)

            break  # 跳出循环，只跟随第一个目标

# 估计目标与小车之间的距离
def estimate_distance(x_center):
    # 根据目标在图像中的位置信息，使用视觉方法估计目标与小车之间的距离
    # 这里只是一个示例，您需要根据您的具体情况来实现估计距离的方法
    # 可以使用目标在图像中的大小和位置信息，结合摄像头的参数和几何关系来进行估计

    # 假设目标在图像中的大小为0.2，小车与目标之间的实际距离为2米
    target_size = 0.2
    actual_distance = 2.0

    # 根据目标在图像中的大小和位置信息，估计目标与小车之间的距离
    estimated_distance = (target_size * actual_distance) / (2 * x_center)

    return estimated_distance

# PID控制器
def pid_controller(error):
    global error_integral, prev_error

    # 计算比例项
    proportional = kp * error

    # 计算积分项
    error_integral += error
    integral = ki * error_integral

    # 计算微分项
    derivative = kd * (error - prev_error)
    prev_error = error

    # 计算PID控制器的输出
    control_output = proportional + integral + derivative

    return control_output

# 初始化ROS节点
rospy.init_node('bounding_box_subscriber')

# 创建一个订阅者，订阅/darknet_ros/bounding_boxes话题
rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes, bounding_boxes_callback)

# 运行循环等待消息
rospy.spin()
