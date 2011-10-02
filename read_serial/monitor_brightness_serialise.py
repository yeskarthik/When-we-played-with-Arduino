import serial
import os
import time

ser = serial.Serial('/dev/ttyUSB3',9600)

#myboard.input([17])

i=0
while i<100:
   ambient_light = ser.readline()
   print ambient_light
   if ambient_light == "Very Dark\r\n":
      brightness = 10
   elif ambient_light == "Dark\r\n":
      brightness = 50
   else : 
      brightness = 100

   os.system("echo "+str(brightness)+"> /proc/acpi/video/GFX0/DD03/brightness")
   i+=1
   time.sleep(1)
