from arduino import Arduino
import os
import time

myboard = Arduino('/dev/ttyUSB3')

#myboard.input([17])

i=0
while i<100:
   ambient_light = myboard.analogRead(17)
   print ambient_light
   if ambient_light > 600 :
      brightness = 10
   elif ambient_light > 300:
      brightness = 50
   else : 
      brightness = 100

   os.system("echo "+str(brightness)+"> /proc/acpi/video/GFX0/DD03/brightness")
   i+=1
   time.sleep(100)
