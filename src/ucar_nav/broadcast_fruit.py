# import os
from playsound import playsound
# 初始化计数器
corn_count = 0
cucumber_count = 0
watermelon_count = 0

# 打开文件并逐行读取内容
with open('/home/ucar/ucar_ws/src/ucar_nav/data_fruit.txt', 'r') as file:
    for line in file:
        # 去除每行结尾的换行符
        line = line.strip()

        # 分割每行内容为单词列表
        words = line.split(',')

        #################################corn#################################

        # 遍历单词列表，判断是否包含特定内容并更新计数器
        for word in words:
            if word == 'corn':
                corn_count += 1
            elif word == 'corn2' or word == '2corn':
                corn_count += 2

        playsound("/home/ucar/ucar_ws/src/mp3_new/F/F_corn.mp3")
        
        if corn_count == 1:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/one.mp3")
        if corn_count == 2:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/two.mp3")
        if corn_count == 3:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/three.mp3")
        if corn_count == 4:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/four.mp3")
        if corn_count == 5:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/five.mp3")
        if corn_count == 6:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/six.mp3")

        ############################cucumber########################################

        # 遍历单词列表，判断是否包含特定内容并更新计数器
        for word in words:
            if word == 'cucumber':
                cucumber_count += 1
            elif word == '2cucumber':
                cucumber_count += 2
            elif word == '3cucumber':
                cucumber_count += 3

        playsound("/home/ucar/ucar_ws/src/mp3_new/F/F_cucumber.mp3")
        
        if cucumber_count == 1:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/one.mp3")
        if cucumber_count == 2:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/two.mp3")
        if cucumber_count == 3:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/three.mp3")
        if cucumber_count == 4:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/four.mp3")
        if cucumber_count == 5:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/five.mp3")
        if cucumber_count == 6:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/six.mp3")
        if cucumber_count == 7:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/seven.mp3")
        if cucumber_count == 8:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/eight.mp3")

        ############################watermelon########################################

        # 遍历单词列表，判断是否包含特定内容并更新计数器
        for word in words:
            if word == 'watermelon':
                watermelon_count += 1
            

        playsound("/home/ucar/ucar_ws/src/mp3_new/F/F_watermelon.mp3")
        
        if watermelon_count == 1:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/one.mp3")
        if watermelon_count == 2:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/two.mp3")
        if watermelon_count == 3:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/three.mp3")
        if watermelon_count == 4:
            playsound("/home/ucar/ucar_ws/src/mp3_new/F/four.mp3")
