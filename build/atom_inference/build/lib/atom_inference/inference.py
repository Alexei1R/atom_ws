import sys
import cv2
import imutils
import rclpy
from rclpy.node import Node
from std_msgs.msg import Float32
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
class YOLOInferenceNode(Node):
    def __init__(self):
        super().__init__('yolo_inference_node')
        
        self.model = YoloTRT(library="yolov5/build/libmyplugins.so", engine="yolov5/build/best.engine", conf=0.5, yolo_ver="v5")
        self.cap = cv2.VideoCapture(gstreamer_pipeline(flip_method=0), cv2.CAP_GSTREAMER)
        self.publisher = self.create_publisher(Float32, 'inference_y_offset', 10)
        self.timer = self.create_timer(1.0 / 10, self.inference_callback)  # Adjust the timer rate as needed
        self.frame_count = 0

    def inference_callback(self):
        ret, frame = self.cap.read()
        self.frame_count += 1

        if self.frame_count % 3 != 0:
            return

        frame = imutils.resize(frame, width=600)
        detections, t = self.model.Inference(frame)

        for obj in detections:
            box = obj['box']
            center_x = (box[0] + box[2]) / 2
            center_y = (box[1] + box[3]) / 2
            offset_x = center_x - frame.shape[1] / 2
            offset_y = center_y - frame.shape[0] / 2

            # Publish the Y offset
            y_offset_msg = Float32()
            y_offset_msg.data = offset_y
            self.publisher.publish(y_offset_msg)

        cv2.imshow("Output", frame)
        key = cv2.waitKey(1)
        if key == ord('q'):
            self.get_logger().info("Shutting down...")
            self.cap.release()
            cv2.destroyAllWindows()
            self.timer.cancel()

def main(args=None):
    rclpy.init(args=args)
    node = YOLOInferenceNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
