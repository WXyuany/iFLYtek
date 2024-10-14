import rospy
from geometry_msgs.msg import Twist
import math

def pub_cmd_vel(angle):
    rospy.init_node('cmd_vel_publisher', anonymous=False)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    cmd_vel_msg = Twist()
    cmd_vel_msg.angular.z = math.radians(200)  # 设置角速度为30度/秒

    # 计算循环次数
    loop_rate = 20  # 自定义的循环频率（次数/秒）
    duration = abs(angle) / math.degrees(cmd_vel_msg.angular.z)  # 计算所需时间（秒）
    num_loops = int(duration * loop_rate)  # 计算所需循环次数

    # 确定旋转方向
    if angle < 0:
        cmd_vel_msg.angular.z *= -1  # 逆时针旋转
    else:
        cmd_vel_msg.angular.z *= 1  # 顺时针旋转

    for _ in range(num_loops):
        pub.publish(cmd_vel_msg)
        rospy.sleep(2.0 / loop_rate)

    # 停止旋转
    cmd_vel_msg.angular.z = 0.0
    pub.publish(cmd_vel_msg)

if __name__ == '__main__':
    try:
        pub_cmd_vel(90.0)  # 指定机器人旋转120度
    except rospy.ROSInterruptException:
        pass
