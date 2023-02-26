from ultralytics import YOLO
import cv2
import cvzone
import math
import sys
import json
import time
cap=cv2.VideoCapture(0)
cap.set(3,640)
cap.set(4,480)
model=YOLO("../yolo_weight/yolov8n.pt")
className=["person", "bicycle", "can", "motorbike", "aeropland", "bus", "train", "truck", "boat", "traffic light", "fire hydrant", "stop sign", "parking meter", "bench", "bird", "cat", "dog", "horse", "sheep", "com", "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella", "handbag", "tie", "suitcase", "frisbee", "skis", "snowboard", "sports ball", "kite", "paseball bat? baseball glove", "skateboard", "surfboard", "tennis racket", "bottle", "wine glass", "cup", "fork", "knife", "spoon", "ool", "banana", "apple", "sandwich", "orange", "broccoli", "carrot", "hot dog", "pizza", "donut", "calg", "chain", "sofa", "pottedolant", "bad", "ainingtable", "tattet" "tvrantton", "Laptop", "House", "remote", "Keyboard", "cell phone", "microsave", "oven", "toarter", "pink", "refrigerator", "book", "clock", "vase", "scissors", "teddy bear", "hair drier","toothbrush"
]
#className=["pot"]
t_end=time.time()+15
while (time.time() < t_end):
    success,img=cap.read()
    result=model(img,stream=True)
    for r in result:
        boxes=r.boxes
        for box in boxes:
            x1,y1,x2,y2=box.xyxy[0]
            x1, y1, x2, y2=int(x1),int(y1),int(x2),int(y2)

            #print(x1,y1,x2,y2)

           # cv2.rectangle(img,(x1,y1),(x2,y2),(255,0,255),3)
            w,h=x2-x1,y2-y1


            conf=math.ceil((box.conf[0])*100)/100


            cls=int(box.cls[0])
            if(conf>0.5):

             cvzone.cornerRect(img, (x1, y1, w, h))
             cvzone.putTextRect(img,f'{className[cls]} {conf}',(max(0,x1),max(0,y1-20)),scale=1,thickness=3)
    cv2.imshow('Image',img)
    cv2.waitKey(1)
    resp = {
        "Respones": 200,
        "Message": "hello from py"
    }
    print(json.dumps(resp))

    sys.stdout.flush()