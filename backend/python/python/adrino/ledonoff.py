import cv2
from cvzone.SerialModule import SerialObject

ardrino = SerialObject("COM3")
while True:
    ardrino.sendData([1])
    cv2.waitKey(3000)
    ardrino.sendData([0])
    cv2.waitKey(3000)
