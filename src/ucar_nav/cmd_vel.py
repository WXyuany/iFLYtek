# import rospy
# from geometry_msgs.msg import Twist

# def pub_cmd_vel():
#     rospy.init_node('cmd_vel_publisher', anonymous=True)
#     pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
#     # rate = rospy.Rate(3)  # 发布频率为1Hz

#     cmd_vel_msg = Twist()
#     cmd_vel_msg.linear.x = 1.0
#     cmd_vel_msg.linear.y = 0.0
#     cmd_vel_msg.linear.z = 0.0
#     cmd_vel_msg.angular.x = 0.0
#     cmd_vel_msg.angular.y = 0.0
#     cmd_vel_msg.angular.z = 0.0

#     while not rospy.is_shutdown():
#         pub.publish(cmd_vel_msg)
#         # rate.sleep()

# if __name__ == '__main__':
#     try:
#         pub_cmd_vel()
#     except rospy.ROSInterruptException:
#         pass

import rospy
from geometry_msgs.msg import Twist

def pub_cmd_vel(distance):
    rospy.init_node('cmd_vel_publisher', anonymous=True)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    cmd_vel_msg = Twist()
    cmd_vel_msg.linear.x = 1.0  # 设置线速度为1.0

    # 计算循环次数
    loop_rate = 10  # 自定义的循环频率（次数/秒）
    duration = distance / cmd_vel_msg.linear.x  # 计算所需时间（秒）
    num_loops = int(duration * loop_rate)  # 计算所需循环次数

    for _ in range(num_loops):
        pub.publish(cmd_vel_msg)
        rospy.sleep(1.0 / loop_rate)

if __name__ == '__main__':
    try:
        pub_cmd_vel(0.6)  # 指定机器人前进的距离为1.0米
    except rospy.ROSInterruptException:
        pass
