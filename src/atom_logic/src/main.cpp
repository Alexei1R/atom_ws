#include <iostream>
#include <opencv2/opencv.hpp>
#include "atom_logic/PID.h"
#include "atom_logic/FindLines.h"
#include "atom_logic/WebCamStream.h"


#include <chrono>
#include <functional>
#include <memory>
#include <string>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"
#include <sensor_msgs/msg/image.hpp>


#define PID_KP 2.0f
#define PID_KI 0.5f
#define PID_KD 0.25f

#define PID_TAU 0.02f

#define PID_LIM_MIN -25.0f
#define PID_LIM_MAX 25.0f

#define PID_LIM_MIN_INT -5.0f
#define PID_LIM_MAX_INT 5.0f

#define SAMPLE_TIME_S 0.01f

#define SIMULATION_TIME_MAX 4.0f

int left = 200;
int right = 400;



using namespace std::chrono_literals;

class Application : public rclcpp::Node {
public:
    Application()
    : Node("minimal_publisher"), count_(0)
    {
        publisher_ = this->create_publisher<std_msgs::msg::String>("topic", 10);
        cv::VideoCapture cap(0);

        if (!cap.isOpened())
        {
            std::cout << "Error opening video stream or file" << std::endl;
            return;
        }

        // Initialize FindLines
        
        lines = new FindLines(m_FrameOut, left, right);
        lines->OnAttach();
        
    }
     
    void Run(){
        while (rclcpp::ok()) { // Continue as long as ROS is running
            cv::Mat frame;
            cap >> frame;
            cv::resize(frame, frame, cv::Size(640, 480));
            frame.copyTo(m_FrameOut);
            lines->OnUpdate();
            m_FrameOut = lines->GetPreprocesed();
            std::cout << "Some message" << std::endl;
            std_msgs::msg::String message; // Create a message of the correct type
            message.data = std::to_string(lines->GetOffesetCenter()); // Set the message data
            publisher_->publish(message); // Publish the message
            RCLCPP_INFO(this->get_logger(), "Publishing: '%s'", std::to_string(lines->GetOffesetCenter()).c_str());

            // If the frame is empty, break immediately
            if (frame.empty())
            {
                break;
            }
            cv::resize(m_FrameOut, m_FrameOut, cv::Size(320, 240));
            cv::imshow("Lines", m_FrameOut);
            if (cv::waitKey(5) >= 0)
            {
                break;
            }
        }
    }

private:
    rclcpp::Publisher<std_msgs::msg::String>::SharedPtr publisher_;
    cv::VideoCapture cap;
    cv::Mat m_FrameOut;
    FindLines* lines;
    int count_;
};

int main(int argc, char** argv) {
    rclcpp::init(argc, argv);
    auto application = std::make_shared<Application>();
    application->Run();
    rclcpp::shutdown();
    return 0;
}
