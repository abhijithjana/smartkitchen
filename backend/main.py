import sys
import json
from ultralytics import YOLO



resp={
    "Respones":200,
    "Message":"hello from py"
}
print(json.dumps(resp))

sys.stdout.flush()
