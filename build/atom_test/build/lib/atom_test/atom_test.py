import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge

class ImageSubscriber(Node):
    def __init__(self):
        super().__init__('image_subscriber')
        self.subscription = self.create_subscription(
            Image,
            'processed_image',
            self.image_callback,
            10  # The queue size
        )
        self.subscription  # prevent unused variable warning
        self.cv_bridge = CvBridge()
        self.window_name = 'Processed Image'

    def image_callback(self, msg):
        # Convert the ROS Image message to a OpenCV image
        cv_image = self.cv_bridge.imgmsg_to_cv2(msg, 'bgr8')

        # Process the image or perform any desired actions
        # For example, you can display the image using OpenCV
        cv2.imshow(self.window_name, cv_image)
        cv2.waitKey(5)  # Adjust the wait time as needed

def main(args=None):
    rclpy.init(args=args)
    node = ImageSubscriber()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
