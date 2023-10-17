#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <opencv2/opencv.hpp>
#include "atom_logic/FindLines.h"  // Replace with your actual message types

class WebcamNode : public rclcpp::Node
{
public:
    WebcamNode() : Node("atom_core_logic_node")
    {
        // Open a webcam for video capture
        cv::VideoCapture cap(0);

        if (!cap.isOpened())
        {
            RCLCPP_ERROR(get_logger(), "Error opening video stream or file");
            return;
        }

        // Create a publisher to publish processed images
        image_pub_ = create_publisher<sensor_msgs::msg::Image>("processed_image", 10);

        // Create a FindLines instance (assuming this class processes images)
        FindLines lines(m_FrameOut);  // You might need to adjust the arguments
        lines.OnAttach();

        while (rclcpp::ok()) {  // Use a while loop to continuously process frames
            cv::Mat frame;
            cap >> frame;
            cv::resize(frame, frame, cv::Size(640, 480));
            frame.copyTo(m_FrameOut);
            lines.OnUpdate();
            cv::resize(lines.GetPreprocessed(), m_FrameOut, cv::Size(320, 240));

            // Convert the processed image to a sensor_msgs::msg::Image
            sensor_msgs::msg::Image img_msg;
            img_msg.header.stamp = this->now();
            img_msg.header.frame_id = "camera_frame";  // Replace with the correct frame_id
            img_msg.width = m_FrameOut.cols;
            img_msg.height = m_FrameOut.rows;
            img_msg.step = m_FrameOut.step;
            img_msg.data = std::vector<uint8_t>(m_FrameOut.data, m_FrameOut.data + m_FrameOut.total() * m_FrameOut.elemSize());
            img_msg.encoding = "bgr8";  // Adjust the encoding as needed

            image_pub_->publish(img_msg);

            // Display the processed frame in an OpenCV window
            cv::imshow("Lines", m_FrameOut);
            cv::waitKey(5);
        }
    }

private:
    rclcpp::Publisher<sensor_msgs::msg::Image>::SharedPtr image_pub_;
    cv::Mat m_FrameOut;
};

int main(int argc, char** argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<WebcamNode>());
    rclcpp::shutdown();
    return 0;
}
