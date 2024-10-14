import os
from playsound import playsound

# def compare_files(file1, file2):
#     with open(file1, 'r') as f1, open(file2, 'r') as f2:
#         # 读取文件内容
#         content1 = f1.read()
#         content2 = f2.read()

#         # 比较文件内容
#         if content1 == content2:
#             # 执行后续程序
#             playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
#             playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
#             playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
#             playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
#             playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
#         #     print(f"{file1} 和 {file2} 文件内容相同")
#         #     # 这里可以添加你的后续程序代码
#         # else:
#         #     print(f"{file1} 和 {file2} 文件内容不同")

# # 比较函数调用
# folder_path = '/home/ucar/ucar_ws/src/ucar_nav/data_vau'  # 文件夹路径
# files_to_compare = ['1.txt', '2.txt', '3.txt','4.txt', '5.txt', 
#                     '6.txt','7.txt', '8.txt', '9.txt','10.txt', '11.txt', 
#                     '12.txt','13.txt', '14.txt', '15.txt','16.txt', '17.txt',
#                       '18.txt','19.txt', '20.txt', '21.txt','22.txt', '23.txt', '24.txt'] # 要比较的文件列表

# data_file = 'data.txt' # 第一个文件

# for filename in files_to_compare:
#     file_path = os.path.join(folder_path, filename)
#     compare_files(data_file, file_path)



# 读取 data.txt 的内容
with open('/home/ucar/ucar_ws/src/ucar_nav/data.txt', 'r') as file:
    data = file.read()

# 遍历 data_vau 文件夹中的文件
folder = "/home/ucar/ucar_ws/src/ucar_nav/data_vau"
for filename in os.listdir(folder):
    with open(os.path.join(folder, filename), "r") as file:
        file_data = file.read()

        if data == file_data:
            if filename == "1.txt":
                # subprocess.call(["python", "1.py"])  # 执行 1.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
            elif filename == "2.txt":
                # subprocess.call(["python", "2.py"])  # 执行 2.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_wheat.mp3")
            elif filename == "3.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
            elif filename == "4.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_rice.mp3")
            elif filename == "5.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_rice.mp3")
            elif filename == "6.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_wheat.mp3")

            elif filename == "7.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_wheat.mp3")
            elif filename == "8.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
            elif filename == "9.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_corn.mp3")
            elif filename == "10.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
            elif filename == "11.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_wheat.mp3")
            elif filename == "12.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_corn.mp3")

            elif filename == "13.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
            elif filename == "14.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_rice.mp3")
            elif filename == "15.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_corn.mp3")
            elif filename == "16.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_cucumber.mp3")
            elif filename == "17.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_rice.mp3")
            elif filename == "18.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_corn.mp3")

            elif filename == "19.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_rice.mp3")
            elif filename == "20.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_corn.mp3")
            elif filename == "21.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_rice.mp3")
            elif filename == "22.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_wheat.mp3")
            elif filename == "23.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_wheat.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_corn.mp3")
            elif filename == "24.txt":
                # subprocess.call(["python", "3.py"])  # 执行 3.py
                playsound("/home/ucar/ucar_ws/src/mp3/Task Success.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/B/B_cucumber.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/C/C_rice.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/D/D_corn.mp3")
                playsound("/home/ucar/ucar_ws/src/mp3_new/E/E_wheat.mp3")
