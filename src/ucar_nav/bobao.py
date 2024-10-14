import rospy
import multi3
import subprocess
from playsound import playsound

# 读取多个MP3文件
# mp3_1 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/B place.mp3", format="mp3")
# mp3_2 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/C place.mp3", format="mp3")
# mp3_3 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/D place.mp3", format="mp3")
# mp3_4 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/E place.mp3", format="mp3")

# mp3_5 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/corn.mp3", format="mp3")
# mp3_6 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/cucumber.mp3", format="mp3")
# mp3_7 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/watermelon.mp3", format="mp3")

# mp3_8 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/wheat.mp3", format="mp3")
# mp3_9 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/rice.mp3", format="mp3")

# mp3_10 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/one.mp3", format="mp3")
# mp3_11 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/two.mp3", format="mp3")
# mp3_12 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/three.mp3", format="mp3")
# mp3_13 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/four.mp3", format="mp3")
# mp3_14 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/five.mp3", format="mp3")
# mp3_15 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/six.mp3", format="mp3")
# mp3_16 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/seven.mp3", format="mp3")
# mp3_17 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/eight.mp3", format="mp3")

# mp3_18 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/F place.mp3", format="mp3")
# mp3_19 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/fruit number.mp3", format="mp3")
# mp3_20 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/Task Success.mp3", format="mp3")


# # 将多个文件串联起来
# combined = mp3_1 + mp3_2 + mp3_3

# # 播放合成的音频
# combined.export("combined.mp3", format="mp3")


# my_array = [{'cornveg'},{'cornveg'}]
variable_1 = [{'cornveg'},{'riceveg'},{'wheatveg'},{'cucumberveg'}]
variable_2 = [{'cornveg'},{'riceveg'},{'cucumberveg'},{'wheatveg'}]

variable_3 = [{'cornveg'},{'wheatveg'},{'riceveg'},{'cucumberveg'}]
variable_4 = [{'cornveg'},{'wheatveg'},{'cucumberveg'},{'riceveg'}]

variable_5 = [{'cornveg'},{'cucumberveg'},{'wheatveg'},{'riceveg'}]
variable_6 = [{'cornveg'},{'cucumberveg'},{'riceveg'},{'wheatveg'}]
######################################################################################
variable_7 = [{'riceveg'},{'cornveg'},{'cucumberveg'},{'wheatveg'}]
variable_8 = [{'riceveg'},{'cornveg'},{'wheatveg'},{'cucumberveg'}]

variable_9 = [{'riceveg'},{'wheatveg'},{'cucumberveg'},{'cornveg'}]
variable_10 = [{'riceveg'},{'wheatveg'},{'cornveg'},{'cucumberveg'}]

variable_11 = [{'riceveg'},{'cucumberveg'},{'cornveg'},{'wheatveg'}]
variable_12 = [{'riceveg'},{'cucumberveg'},{'wheatveg'},{'cornveg'}]
######################################################################################
variable_13 = [{'wheatveg'},{'cornveg'},{'riceveg'},{'cucumberveg'}]
variable_14 = [{'wheatveg'},{'cornveg'},{'cucumberveg'},{'riceveg'}]

variable_15 = [{'wheatveg'},{'riceveg'},{'cucumberveg'},{'cornveg'}]
variable_16 = [{'wheatveg'},{'riceveg'},{'cornveg'},{'cucumberveg'}]

variable_17 = [{'wheatveg'},{'cucumberveg'},{'cornveg'},{'riceveg'}]
variable_18 = [{'wheatveg'},{'cucumberveg'},{'riceveg'},{'cornveg'}]
######################################################################################
variable_19 = [{'cucumberveg'},{'wheatveg'},{'cornveg'},{'riceveg'}]
variable_20 = [{'cucumberveg'},{'wheatveg'},{'riceveg'},{'cornveg'}]

variable_21 = [{'cucumberveg'},{'cornveg'},{'wheatveg'},{'riceveg'}]
variable_22 = [{'cucumberveg'},{'cornveg'},{'riceveg'},{'wheatveg'}]

variable_23 = [{'cucumberveg'},{'riceveg'},{'wheatveg'},{'cornveg'}]
variable_24 = [{'cucumberveg'},{'riceveg'},{'cornveg'},{'wheatveg'}]




######################################################################################
if multi3.class_name_results == variable_1:  # 判断数组中的元素与变量是否相等
    # 继续执行后面的程序
    # print("数组和变量相等")
    # 在这里继续编写后续的程序逻辑    
    # 播放MP3文件
    # combined = mp3_1 + mp3_8
    # combined.export("combined.mp3", format="mp3")
    playsound("/home/ucar/ucar_ws/src/mp3/B place.mp3")
    playsound("/home/ucar/ucar_ws/src/mp3/corn.mp3")

elif multi3.class_name_results == variable_2:
    # print("数组和变量不相等")
    # 如果数组和变量不相等，可以根据需要执行相应的逻辑
    playsound("/home/ucar/ucar_ws/src/mp3/B place.mp3")
    playsound("/home/ucar/ucar_ws/src/mp3/rice.mp3")
elif multi3.class_name_results == variable_3:
    # print("数组和变量不相等")
    # 如果数组和变量不相等，可以根据需要执行相应的逻辑
    playsound("/home/ucar/ucar_ws/src/mp3/B place.mp3")
    playsound("/home/ucar/ucar_ws/src/mp3/wheat.mp3")
elif multi3.class_name_results == variable_4:
    # print("数组和变量不相等")
    # 如果数组和变量不相等，可以根据需要执行相应的逻辑
    playsound("/home/ucar/ucar_ws/src/mp3/B place.mp3")
    playsound("/home/ucar/ucar_ws/src/mp3/cucumber.mp3")
######################################################################################

