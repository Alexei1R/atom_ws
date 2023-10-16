#!/usr/bin/python3
import time
import serial

print("NVIDIA Jetson Nano Developer Kit")


serial_port = serial.Serial(
    port="/dev/ttyTHS1",
    baudrate=9600,
)
# Wait a second to let the port initialize
time.sleep(1)

try:
    while True:
        
        serial_port.write(b'1:90')

        if serial_port.inWaiting() > 0:
            data = serial_port.read()
            print(data)
            


except KeyboardInterrupt:
    print("Exiting Program")

except Exception as exception_error:
    print("Error occurred. Exiting Program")
    print("Error: " + str(exception_error))

finally:
    serial_port.close()
    pass
