import rospy
import actionlib
import subprocess
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

waypoints = {
    'A': [(0.0524876912677, -0.00595684221868, 0.0), (0.0, 0.0, 0.000539925392347, 0.99999985424)],
    'B': [(2.74977689326,-0.768346262208, 0.0), (0.0, 0.0, -0.770508368593, 0.637429881578)],
    # 'C': [(2.70131299643,-4.84235293813, 0.0), (0.0, 0.0, 0.498459253801, 0.866913128462)],
    # 'C': [(2.55129265043,-3.93304618787, 0.0), (0.0, 0.0, -0.683629686237, 0.729829056763)],
    'C': [(2.6665125051,-3.50667882357, 0.0), (0.0, 0.0, -0.665638999691, 0.74627389214)],
    # 'D': [(4.6985742354,-4.93324150409, 0.0), (0.0, 0.0, 0.663460426414, 0.748211375603)],
    'D': [(4.64146973862,-3.74288430978, 0.0), (0.0, 0.0, -0.684380561256, 0.729124987485)],
    'E': [(4.93951834378,-1.95027782856, 0.0), (0.0, 0.0, 0.82655184063, 0.56286059975)],
    # 'E': [(4.67599911744,-1.91001185427, 0.0), (0.0, 0.0, 0.5525926916, 0.83345144861)],
    'F': [(0.904316899114, -0.416882550973, 0.0), (0.0, 0.0, -0.695933262306, 0.718106464541)],
    'G': [(0.957942238243, -4.69619690075, 0.0), (0.0, 0.0, -0.968455922111, 0.249184925161)],
    'H': [(-0.0519048879328, -0.149190893021, 0.0), (0.0, 0.0, 0.916920544383, 0.399069812549)]
    #'H': [(0.304801235504, -0.235704462794, 0.0), (0.0, 0.0, -0.998595709536, 0.399069812549)]
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
    # B_flag = 1
    # if B_flag == 1:
    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/detect.py'])
        # B_flag = 0
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
    # C_flag = 1
    # if C_flag == 1:
    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/detect.py'])
        # C_flag = 0
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
    # D_flag = 1
    # if D_flag == 1:
    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/detect.py'])
        # D_flag = 0
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
    # E_flag = 1
    # if E_flag == 1:
    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/detect.py'])
        # E_flag = 0
    execute_zone_F()
#########################################################################################################
def execute_zone_F():
    print("Executing Zone F")
    # 
    goal1 = create_goal_pose(waypoints['F'][0], waypoints['F'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()

    # F_flag = 1
    # if F_flag == 1:
    #     # for i in range(4):
    #       subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/detect_fruit.py'])
    #     F_flag = 0
    execute_zone_G()
    
#########################################################################################################
def execute_zone_G():
    print("Executing Zone G")
    # 
    goal1 = create_goal_pose(waypoints['G'][0], waypoints['G'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()

#     G_flag = 1
#     if G_flag == 1:
#         # for i in range(4):
            # subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/detect_fruit.py'])
#         G_flag = 0
    execute_zone_H()

#########################################################################################################
def execute_zone_H():
    print("Executing Zone H")
    # 
    goal1 = create_goal_pose(waypoints['H'][0], waypoints['H'][1])
    #
    client.send_goal(goal1)
    client.wait_for_result()

    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/cmd_vel.py'])
    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/broadcast.py'])
    subprocess.run(['python', '/home/ucar/ucar_ws/src/ucar_nav/broadcast_fruit.py'])

    # publish_to_topic()
    # client.wait_for_result()

    
#########################################################################################################
# 
if __name__ == '__main__':
    rospy.init_node('move_base_client')
    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    client.wait_for_server()

    # 
    execute_zone_A()
