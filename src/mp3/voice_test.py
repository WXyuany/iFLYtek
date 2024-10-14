from pydub import AudioSegment

# 读取多个MP3文件
mp3_1 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/B place.mp3", format="mp3")
mp3_2 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/C place.mp3", format="mp3")
mp3_3 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/D place.mp3", format="mp3")
mp3_4 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/E place.mp3", format="mp3")

mp3_5 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/corn.mp3", format="mp3")
mp3_6 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/cucumber.mp3", format="mp3")
mp3_7 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/watermelon.mp3", format="mp3")

mp3_8 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/wheat.mp3", format="mp3")
mp3_9 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/rice.mp3", format="mp3")

mp3_10 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/one.mp3", format="mp3")
mp3_11 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/two.mp3", format="mp3")
mp3_12 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/three.mp3", format="mp3")
mp3_13 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/four.mp3", format="mp3")
mp3_14 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/five.mp3", format="mp3")
mp3_15 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/six.mp3", format="mp3")
mp3_16 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/seven.mp3", format="mp3")
mp3_17 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/eight.mp3", format="mp3")

mp3_18 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/F place.mp3", format="mp3")
mp3_19 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/fruit number.mp3", format="mp3")
mp3_20 = AudioSegment.from_file("/home/ucar/ucar_ws/src/mp3/Task Success.mp3", format="mp3")

combined = mp3_1 + mp3_8
combined.export("combined.mp3", format="mp3")