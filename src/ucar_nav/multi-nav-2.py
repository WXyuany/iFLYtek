import rospy
import actionlib
import subprocess
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

waypoints = {
    'A': [(0.0524876912677, -0.00595684221868, 0.0), (0.0, 0.0, 0.000539925392347, 0.99999985424)],
    'B': [(2.8565753155,-0.929292103423, 0.0), (0.0, 0.0, -0.758840808591, 0.651276152809)],
    'C': [(2.55129265043,-3.93304618787, 0.0), (0.0, 0.0, -0.683629686237, 0.729829056763)],
    'D': [(4.56395705199,-4.77633204264, 0.0), (0.0, 0.0, -0.160854615753, 0.986978111505)],
    'E': [(4.50023023188,-0.884067627642, 0.0), (0.0, 0.0, 0.81899023225, 0.573807458543)],
    'F': [(0.82369618293, -3.89525196701, 0.0), (0.0, 0.0, -0.727568239925, 0.686035317059)],
    'G': [(0.837935666223, -4.51292224509, 0.0), (0.0, 0.0, -0.928136026242, 0.37224120781)],
    'H': [(0.192955760815, -0.367477782686, 0.0), (0.0, 0.0, 0.859583579243, 0.510995176392)]
}

#   识别标志位
B_flag = 0
C_flag = 0
D_flag = 0
E_flag = 0
F_flag = 0
G_flag = 0
H_flag = 0
I_flag = 0
J_flag = 0
K_flag = 0

#   识别结果数组
class_name_results = []
# class_name_2_results = []
# class_name_3_results = []
# class_name_4_results = []

def create_goal_pose(position, orientation):
    goal_pose = MoveBaseGoal()
    goal_pose.target_pose.header.frame_id = 'map'
    goal_pose.target_pose.pose.position.x = position[0]
    goal_pose.target_pose.pose.position.y = position[1]
    goal_pose.target_pose.pose.position.z = position[2]
    goal_pose.target_pose.pose.orientation.x = orientation[0]
    goal_pose.target_pose.pose.orientation.y = orientation[1]
    goal_pose.target_pose.pose.orientation.z = orientation[2]
    goal_pose.target_pose.pose.orientation.w = orientation[3]
    return goal_pose

def publish_to_topic():
    cmd = ['rostopic', 'pub', '/cmd_vel', 'geometry_msgs/Twist', 'linear: {x: 0.0, y: 0.0, z: 0.0}', 'angular: {x: 0.0, y: 0.0, z: 2.09439510239}', '-r', '1']

    try:
        process = subprocess.Popen(cmd)
        # process.wait() # 等待命令完成，可选
        process.terminate() # 终止命令的执行
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}")

#########################################################################################################
def execute_zone_A():
    print("Executing Zone A")
    goal1 = create_goal_pose(waypoints['A'][0], waypoints['A'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()

    #
    # goal2 = create_goal_pose(waypoints['A'][2], waypoints['A'][3])
    # client.send_goal(goal2)
    # client.wait_for_result()

    #
    execute_zone_B()
#########################################################################################################
def execute_zone_B():
    print("Executing Zone B")
    #
    goal1 = create_goal_pose(waypoints['B'][0], waypoints['B'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()
    #
    execute_zone_C()
#########################################################################################################
def execute_zone_C():
    print("Executing Zone C")
    #
    goal1 = create_goal_pose(waypoints['C'][0], waypoints['C'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()
    #
    execute_zone_D()
#########################################################################################################
def execute_zone_D():
    print("Executing Zone D")
    #
    goal1 = create_goal_pose(waypoints['D'][0], waypoints['D'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()
    # 
    execute_zone_E()
#########################################################################################################
def execute_zone_E():
    print("Executing Zone E")
    # 
    goal1 = create_goal_pose(waypoints['E'][0], waypoints['E'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()
    # 
    execute_zone_F()
#########################################################################################################
def execute_zone_F():
    print("Executing Zone F")
    # 
    goal1 = create_goal_pose(waypoints['F'][0], waypoints['F'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()

    execute_zone_H()

def execute_zone_H():
    print("Executing Zone H")
    # 
    goal1 = create_goal_pose(waypoints['H'][0], waypoints['H'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()

    
#########################################################################################################
# 
if __name__ == '__main__':
    rospy.init_node('move_base_client')
    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    client.wait_for_server()

    # 
    execute_zone_A()
