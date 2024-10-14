import rospy
import actionlib
import subprocess

from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
 
 
waypoints = [
    [(-0.197937617581, -0.0363936116198, 0.0), (0.0, 0.0, 0.0142360013903, 0.999898662998)],
    [(2.81073089421,-0.853274866552, 0.0), (0.0, 0.0,  -0.628183588396, 0.778065151044)],
    [( 2.82151451501,-4.68386805042, 0.0), (0.0, 0.0, -0.900249801083, 0.435373742491)],
    [( 4.65147318838,-4.29575075574, 0.0), (0.0, 0.0,  -0.534198519333, 0.845359060957)],
    [( 4.41997343478,-1.22078828957, 0.0), (0.0, 0.0, 0.645487585991,  0.763770761637)],
    [(5.39528906196, -4.61674097354, 0.0), (0.0, 0.0, -0.0632489039781,  0.997997783638)],
    [(6.24988933899, -4.52677361244, 0.0), (0.0, 0.0, -0.142579355654), 0.989783373947]
]

 
def goal_pose(pose):  # <2>
    goal_pose = MoveBaseGoal()
    goal_pose.target_pose.header.frame_id = 'map'
    goal_pose.target_pose.pose.position.x = pose[0][0]
    goal_pose.target_pose.pose.position.y = pose[0][1]
    goal_pose.target_pose.pose.position.z = pose[0][2]
    goal_pose.target_pose.pose.orientation.x = pose[1][0]
    goal_pose.target_pose.pose.orientation.y = pose[1][1]
    goal_pose.target_pose.pose.orientation.z = pose[1][2]
    goal_pose.target_pose.pose.orientation.w = pose[1][3]
 
    return goal_pose
 

if __name__ == '__main__':
    rospy.init_node('patrol')
 
    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)  # <3>
    client.wait_for_server()
     
    while True:
        for pose in waypoints:   # <4>
            print("goal:x=%f y=%f"%(pose[0][0],pose[0][1]))
            goal = goal_pose(pose)
            client.send_goal(goal)
            client.wait_for_result()

#
# if __name__ == '__main__':
#     rospy.init_node('patrol')

#     client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
#     client.wait_for_server()

#     for pose in waypoints:
#         print("goal:x=%f y=%f"%(pose[0][0],pose[0][1]))
#         goal = goal_pose(pose)
#         client.send_goal(goal)
#         client.wait_for_result()

#         # 
#         if pose == waypoints[-1]:
#             break

#
# if __name__ == '__main__':
#     rospy.init_node('patrol')

#     client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
#     client.wait_for_server()

#     for pose in waypoints:
#         print("goal:x=%f y=%f"%(pose[0][0],pose[0][1]))
#         goal = goal_pose(pose)
#         client.send_goal(goal)
#         client.wait_for_result()

#         # 
#         subprocess.call(['roslaunch', 'your_launch_file.launch'])

#         # 
#         if pose == waypoints[-1]:
#             break
