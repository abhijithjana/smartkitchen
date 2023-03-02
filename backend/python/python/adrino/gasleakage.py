import cv2
from cvzone.SerialModule import SerialObject

ardrino = SerialObject("COM3")
while True:
    mydata=ardrino.getData()
    print(mydata[0])
    if(int(mydata[0])>330):
        print("Gas leakage detected")
        break