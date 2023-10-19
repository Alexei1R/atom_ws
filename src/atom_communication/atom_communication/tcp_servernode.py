import rclpy
from rclpy.node import Node
import socket
from std_msgs.msg import String



import socket
import threading
HOST = '0.0.0.0'
PORT = 12345


# Create a TCP socket
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_socket.bind((HOST, PORT))
server_socket.listen()
print(f"Server is listening on {HOST}:{PORT}")
clients = []
IsConnected = False



class TCPServerNode(Node):

    def __init__(self):
        super().__init__('tcp_server_node')
        self.server_socket = None
        self.tcp_pub1= self.create_publisher(String, 'tcp_mesin', 10)
        self.pid_out= self.create_publisher(String, 'pid_out', 10)
        self.subscription = self.create_subscription(
            String, 'tcp_mesout', self.message_callback, 10)
        self.msg = String()



    def message_callback(self, msg):
        self.get_logger().info(f'Received message: {msg.data}')
        self.send_message(msg.data)


    def start_server(self, host, port):
        while rclpy.ok():
            # Add your code here
            client_socket, client_address = server_socket.accept()
            client_handler = threading.Thread(target=self.handle_client, args=(client_socket,client_address,))
            client_handler.start()
            IsConnected = True

            while IsConnected:
                message = input("Server: ")
                self.send_message(message)
                if message == "exit":
                    break


    def handle_client(self, client_socket, client_address):
        print(f"Accepted connection from {client_socket.getpeername()} , {client_address}")
        clients.append(client_socket)
        
        while True:
            data = client_socket.recv(1024)
            if not data:
                break
            message = data.decode('utf-8')
            # print(f"Received from client: {message}")

            # Check if the message is a command
            if message == "?start?":
                pid_message1 = String()
                pid_message1.data = f"2:{83}\n"

                self.pid_out.publish(pid_message1)
                self.send_message("2:speed:3")
                print("start")
            elif message == "?stop?":
                self.send_message("2:speed:0")
                pid_message1 = String()
                pid_message1.data = f"2:{90}\n"
                self.pid_out.publish(pid_message1)
                print("stop")

                

                
            elif message == "?park?":
                self.send_message("3:parking:100")
                print("park")
            else:
                # Check if the message matches the expected format
                if message.startswith('?') and message.endswith('?'):
                    # Remove the question marks
                    message = message.strip('?')
                    str_msg = String()
                    str_msg.data = message
                    # Publish the original message
                    self.tcp_pub1.publish(str_msg)

                    if ':' in message:
                        # Split the message into two values
                        values = message.split(':')

                        if len(values) == 2:
                            value1 = values[0]
                            value2 = values[1]


                            # convert value to float
                            value1 = float(value1)
                            value2 = float(value2)

                            # convert value from -1 to 1 to 0 180
                            original_min = -1.0
                            original_max = 1.0
                            new_min = 0
                            new_max = 180

                            value1 = (value1 - original_min) / (original_max - original_min) * (new_max - new_min) + new_min
                            value2 = ((value2 * -1) - original_min) / (original_max - original_min) * (new_max - new_min) + new_min



                            # Create and publish messages in the desired format
                            pid_message1 = String()
                            pid_message1.data = f"1:{value1}\n"
                            self.pid_out.publish(pid_message1)

                            pid_message2 = String()
                            pid_message2.data = f"2:{value2}\n"
                            self.pid_out.publish(pid_message2)


                            print(f" value1 = {value1}, value2 = {value2}")
                        else:
                            self.get_logger().warning("Invalid message format. Expected 'value1:value2'.")
                else:
                    self.get_logger().warning("Invalid message format or unrecognized command.")

        print(f"Connection from {client_socket.getpeername()} closed.")
        clients.remove(client_socket)
        client_socket.close()
        IsConnected = False



        
    def send_message(self,message):
        for client in clients:
            client.send(message.encode('utf-8'))

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