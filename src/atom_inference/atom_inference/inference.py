import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import imutils
import numpy as np
from std_msgs.msg import Int16

from atom_inference.yoloDet import YoloTRT

class ImageSubscriber(Node):
    def __init__(self):
        super().__init__('image_subscriber')
        self.subscription = self.create_subscription(
            Image,
            'processed_image',
            self.image_callback,
            10  # The queue size
        )
        self.cv_bridge = CvBridge()
        self.window_name = 'Processed Image'

        # Initialize the YOLO model and camera
        self.model = YoloTRT(library="src/atom_inference/atom_inference/yolov5/build/libmyplugins.so",
                             engine="src/atom_inference/atom_inference/yolov5/build/best.engine",
                             conf=0.5, yolo_ver="v5")
        self.cap = cv2.VideoCapture(0)

        # Create a publisher for the offset data
        self.publisher_ = self.create_publisher(Int16, 'inference', 10)
        self.frame_count = 0

    def image_callback(self, msg):
        # Convert the ROS Image message to a OpenCV image
        cv_image = self.cv_bridge.imgmsg_to_cv2(msg, 'bgr8')

        # Process the image
        self.frame_count += 1

        if self.frame_count % 3 != 0:  # Skip every 2 out of 3 frames to achieve 10 fps processing
            return
        cv_image = imutils.resize(cv_image, width=600)
        detections, t = self.model.Inference(cv_image)
        fps = 1 / t

        for obj in detections:
            box = obj['box']
            center_x = (box[0] + box[2]) / 2
            center_y = (box[1] + box[3]) / 2

            offset_x = center_x - cv_image.shape[1] / 2
            offset_y = center_y - cv_image.shape[0] / 2

            offset_text = f"Offset: X={offset_x:.2f}, Y={offset_y:.2f}"
            cv2.putText(cv_image, offset_text, (int(center_x), int(center_y)), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
            y_offset_msg = Int16()
            y_offset_msg.data = int(offset_x)
            self.publisher_.publish(y_offset_msg)

        cv2.putText(cv_image, f"FPS: {fps:.2f}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        cv2.imshow(self.window_name, cv_image)
        cv2.waitKey(5)

def main(args=None):
    rclpy.init(args=args)
    node = ImageSubscriber()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
