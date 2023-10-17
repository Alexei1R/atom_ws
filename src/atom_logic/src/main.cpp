#include <iostream>
#include <memory>
#include <rclcpp/rclcpp.hpp>
#include "std_msgs/msg/float32.hpp"
#include <opencv2/opencv.hpp>
#include "atom_logic/PID.h"
#include "atom_logic/FindLines.h"
#include "atom_logic/WebCamStream.h"

class LineFollowerNode : public rclcpp::Node {
public:
    LineFollowerNode() : Node("line_follower_node") {
        publisher_ = this->create_publisher<std_msgs::msg::Float32>("offset_center", 10);

        // Your initialization code here
        cv::VideoCapture cap(0);
        if (!cap.isOpened()) {
            RCLCPP_ERROR(this->get_logger(), "Error opening video stream or file");
            return;
        }

        cv::Mat m_FrameOut;
        FindLines *lines = new FindLines(m_FrameOut, left, right);
        lines->OnAttach();

        while (rclcpp::ok()) {
            cv::Mat frame;
            cap >> frame;
            cv::resize(frame, frame, cv::Size(640, 480));
            frame.copyTo(m_FrameOut);
            lines->OnUpdate();
            m_FrameOut = lines->GetPreprocessed();
            float offset_center = lines->GetOffsetCenter();
            std::cout << offset_center << std::endl;

            std_msgs::msg::Float32 msg;
            msg.data = offset_center;
            publisher_->publish(msg);

            // If the frame is empty, break immediately
            if (frame.empty()) {
                break;
            }
            cv::resize(m_FrameOut, m_FrameOut, cv::Size(320, 240));
            cv::imshow("Lines", m_FrameOut);
            if (cv::waitKey(5) >= 0) {
                break;
            }
        }
    }

private:
    rclcpp::Publisher<std_msgs::msg::Float32>::SharedPtr publisher_;
};

int main(int argc, char *argv[]) {
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<LineFollowerNode>());
    rclcpp::shutdown();
    return 0;
}
