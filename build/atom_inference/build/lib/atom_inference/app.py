import sys
import cv2 
import imutils
from yoloDet import YoloTRT




def gstreamer_pipeline(
    sensor_id=0,
    capture_width=1920,
    capture_height=1080,
    display_width=960,
    display_height=540,
    framerate=10,
    flip_method=0,
):
    return (
        "nvarguscamerasrc sensor-id=%d ! "
        "video/x-raw(memory:NVMM), width=(int)%d, height=(int)%d, framerate=(fraction)%d/1 ! "
        "nvvidconv flip-method=%d ! "
        "video/x-raw, width=(int)%d, height=(int)%d, format=(string)BGRx ! "
        "videoconvert ! "
        "video/x-raw, format=(string)BGR ! appsink"
        % (
            sensor_id,
            capture_width,
            capture_height,
            framerate,
            flip_method,
            display_width,
            display_height,
        )
    )

# use path for library and engine file
model = YoloTRT(library="yolov5/build/libmyplugins.so", engine="yolov5/build/best.engine", conf=0.5, yolo_ver="v5")

cap = cv2.VideoCapture(gstreamer_pipeline(flip_method=0), cv2.CAP_GSTREAMER)

frame_count = 0

while True:
    ret, frame = cap.read()
    frame_count += 1

    if frame_count % 3 != 0:  # Skip every 2 out of 3 frames to achieve 10 fps processing
        continue
    frame = imutils.resize(frame, width=600)
    detections, t = model.Inference(frame)
    fps = 1 / t
    
    for obj in detections:
        box = obj['box']
        # Calculate the center of the bounding box
        center_x = (box[0] + box[2]) / 2
        center_y = (box[1] + box[3]) / 2

        # Calculate the offset from the center
        offset_x = center_x - frame.shape[1] / 2
        offset_y = center_y - frame.shape[0] / 2

        offset_text = f"Offset: X={offset_x:.2f}, Y={offset_y:.2f}"
        cv2.putText(frame, offset_text, (int(center_x), int(center_y)), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (0, 255, 0), 1)

    
    
    
    
    cv2.putText(frame, f"FPS: {fps:.2f}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
    cv2.imshow("Output", frame)
    key = cv2.waitKey(1)
    if key == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
