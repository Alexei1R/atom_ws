#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from std_msgs.msg import Int16

class InferenceSubscriber(Node):
    def __init__(self):
        super().__init__('inference_subscriber')
        self.subscription = self.create_subscription(Int16, 'inference', self.inference_callback, 10)
        self.subscription  # prevent unused variable warning

    def inference_callback(self, msg):
        # This callback function is called whenever a message is received on the 'inference' topic
        offset_x = msg.data
        # Process the offset_x as needed
        self.get_logger().info(f'Received offset_x: {offset_x:.2f}')

def main(args=None):
    rclpy.init(args=args)
    inference_subscriber = InferenceSubscriber()
    rclpy.spin(inference_subscriber)
    inference_subscriber.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
