import rclpy
from rclpy.node import Node
import socket

import time
import serial
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
        self.serial_port = serial.Serial(
            port="/dev/ttyTHS1",
            baudrate=9600,
        )
        

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
        print(f"Accepted connection from {client_socket.getpeername() , client_address}")
        clients.append(client_socket)
        while True:
            data = client_socket.recv(1024)
            if not data:
                break
            message = data.decode('utf-8')
            print(f"Received from client: {message}")
            self.serial_port.write(b'1:90')
            if self.serial_port.inWaiting() > 0:
                data = self.serial_port.read()
                print(data)
                


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