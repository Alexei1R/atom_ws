import rclpy
from rclpy.node import Node
from std_msgs.msg import String
import serial

class SerialPublisher(Node):
    def __init__(self):
        super().__init__('serial_publisher')
        
        # Open the serial port
        self.serial_port = serial.Serial(port="/dev/ttyTHS1", baudrate=9600)
        
        # Create a subscriber for the "pid_out" topic
        self.subscription = self.create_subscription(String, 'pid_out', self.callback)

    def callback(self, msg):
        try:
            # Send the received message to the serial port
            self.serial_port.write(b'1:' + msg.data.encode('ascii'))

        except Exception as e:
            self.get_logger().error(f"Error writing to serial port: {str(e)}")

def main():
    rclpy.init()
    serial_publisher = SerialPublisher()

    try:
        rclpy.spin(serial_publisher)
    except KeyboardInterrupt:
        pass

    serial_publisher.destroy_node()
    rclpy.shutdown()
    serial_publisher.serial_port.close()

if __name__ == '__main__':
    main()
