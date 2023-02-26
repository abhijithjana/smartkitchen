from ultralytics import YOLO
import cv2
model=YOLO("../yolo_weight/pot.pt")
result=model("img/IMG_20230224_192244.jpg",show=True)
cv2.waitKey(0)
