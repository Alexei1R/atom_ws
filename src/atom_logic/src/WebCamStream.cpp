#include "atom_logic/WebCamStream.h"

#include <iostream>
#include <thread>
#include <mutex>

#include <opencv2/opencv.hpp>
#include <opencv2/videoio/videoio_c.h>
#include <opencv2/videoio.hpp>


WebcamStream& WebcamStream::operator=(const WebcamStream& o) {
    if (this != &o) {
        frame = o.frame;
    }
    return *this;
    
}

void WebcamStream::init() {

    
    // Open selected camera using selected API
    // this->stream.open("/home/toor/ATOM-Brain/ride.MOV");
    // this->stream.open(this->device_id, this->apiID);
    // this->stream.open("http://192.168.113.32:5000/video_feed");
    // this->stream.open("http://192.168.1.6:5000/video_feed");
    this->stream.open("nvarguscamerasrc sensor-id=0 ! video/x-raw(memory:NVMM), width=640, height=480, format=(string)NV12, framerate=(fraction)20/1 ! nvvidconv flip-method=0 ! video/x-raw, width=640, height=480, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink", cv::CAP_GSTREAMER);
    if (!this->stream.isOpened()) {
        std::cerr << "(!)ERROR: Unable to open camera\n";
        exit(EXIT_FAILURE);
    }

    this->stream.read(this->frame);
    if (this->frame.empty()) {
        std::cerr << "(!)Error1: Blank frame grabbed\n";
        return;
    }
}

WebcamStream::WebcamStream() {

    this->init();
}

WebcamStream::WebcamStream(int device, int api)
    : device_id(device), apiID(api) {
    this->init();
}

void WebcamStream::start() {
    std::thread t1(&WebcamStream::update, this);
    t1.detach();
}

void WebcamStream::update() {
    //--- GRAB AND WRITE LOOP
    std::cout << "Start grabbing ..." << std::endl
        << "Press any key to terminate" << std::endl;

    while (true) {
        if (this->stopped)
            return;

        this->m.lock();

        // wait for a new frame from camera and store it into 'frame'
        this->stream.read(this->frame);
        if (this->frame.empty()) { //check if succeeded
            std::cerr << "(!)Error2: Blank frame grabbed\n";
            return;
        }
        cv::resize(frame, frame, cv::Size(640, 480), cv::INTER_LINEAR);

        this->m.unlock();
    }
}


// return the frame most recently read
cv::Mat* WebcamStream::read() {
    return &this->frame;
}

// make thread stop
void WebcamStream::stop() {
    this->stopped = true;
}