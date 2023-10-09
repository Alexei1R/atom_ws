import rclpy
from rclpy.node import Node
import socket

class TCPServerNode(Node):

    def __init__(self):
        super().__init__('tcp_server_node')
        self.server_socket = None

    def start_server(self, host, port):
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server_socket.bind((host, port))
        self.server_socket.listen(1)  # Listen for incoming connections (1 client at a time)

        self.get_logger().info(f"TCP Server listening on {host}:{port}")

        while rclpy.ok():
            client_socket, client_address = self.server_socket.accept()
            self.handle_client(client_socket, client_address)

    def handle_client(self, client_socket, client_address):
        self.get_logger().info(f"Accepted connection from {client_address}")
        try:
            data = client_socket.recv(1024)  # Receive data (adjust buffer size as needed)
            if data:
                # Process the received data here
                self.get_logger().info(f"Received data: {data.decode()}")
        except Exception as e:
            self.get_logger().error(f"Error handling client: {str(e)}")
        finally:
            client_socket.close()
            

    def cleanup(self):
        if self.server_socket:
            self.server_socket.close()

def main(args=None):
    rclpy.init(args=args)
    node = TCPServerNode()

    try:
        node.start_server('0.0.0.0', 12345)  # Change the host and port as needed
    except KeyboardInterrupt:
        pass
    finally:
        node.cleanup()
        rclpy.shutdown()


if __name__ == '__main__':
    main()