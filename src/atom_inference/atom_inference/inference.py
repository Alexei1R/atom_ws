import sys
import cv2 
import imutils
from yoloDet import YoloTRT
from gstreamer import gstreamer_pipeline


import rclpy
from rclpy.node import Node

from std_msgs.msg import Int16




# use path for library and engine file
model = YoloTRT(library="yolov5/build/libmyplugins.so", engine="yolov5/build/best.engine", conf=0.5, yolo_ver="v5")
cap = cv2.VideoCapture(gstreamer_pipeline(flip_method=0), cv2.CAP_GSTREAMER)
frame_count = 0



class Inference(Node):
    def __init__(self):
        super().__init__('inferece')
        self.publisher_ = self.create_publisher(Int16, 'inference', 10)
        
        

    def runIference(self):
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
        










def main(args=None):
    rclpy.init(args=args)

    inf_model = Inference()
    inf_model.runIference()
    # rclpy.spin(inf_model)
    inf_model.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
    cap.release()
    cv2.destroyAllWindows() 



