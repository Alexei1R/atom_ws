#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <std_msgs/msg/string.hpp>
#include <opencv2/opencv.hpp>
#include "atom_logic/FindLines.h"  // Replace with your actual message types
#include "atom_logic/PID.h"





#define PID_KP  2.0f
#define PID_KI  0.5f
#define PID_KD  0.25f

#define PID_TAU 0.02f

#define PID_LIM_MIN -90.0f
#define PID_LIM_MAX  90.0f

#define PID_LIM_MIN_INT -5.0f
#define PID_LIM_MAX_INT  5.0f

#define SAMPLE_TIME_S 0.01f

/* Maximum run-time of simulation */
#define SIMULATION_TIME_MAX 4.0f




class WebcamNode : public rclcpp::Node
{
public:
    WebcamNode() : Node("atom_core_logic_node")
    {
        // Open a webcam for video capture
        cv::VideoCapture cap(0);
        PIDController_Init(&pid);

        if (!cap.isOpened())
        {
            RCLCPP_ERROR(get_logger(), "Error opening video stream or file");
            return;
        }

        // Create a publisher to publish processed images
        image_pub_ = create_publisher<sensor_msgs::msg::Image>("processed_image", 10);
        pid_pub_ = create_publisher<std_msgs::msg::String>("pid_out", 10);

        // Create a FindLines instance (assuming this class processes images)
        FindLines lines(m_FrameOut);  // You might need to adjust the arguments
        lines.OnAttach();

        while (rclcpp::ok()) {  // Use a while loop to continuously process frames
            cv::Mat frame;
            cap >> frame;
            cv::resize(frame, frame, cv::Size(640, 480));
            frame.copyTo(m_FrameOut);
            lines.OnUpdate();
            // cv::resize(lines.GetPreprocessed(), m_FrameOut, cv::Size(320, 240));

            PIDController_Update(&pid, 0, lines.GetOffsetCenter());

            // std::cout<<std::round(pid.out)<<std::endl;
			if (pid.out <= 0){
				sprintf(serialBuffer, "%d\n" , 90 + (uint8_t)abs(std::round(pid.out)));
			}
			else{
				sprintf(serialBuffer, "%d\n" , 90 - (uint8_t)abs(std::round(pid.out)));
			}

            // std::cout<<serialBuffer<<std::endl;
            //publish pid
            auto pid_msg = std_msgs::msg::String();
            pid_msg.data = serialBuffer;
            pid_pub_->publish(pid_msg);


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
    rclcpp::Publisher<std_msgs::msg::String>::SharedPtr pid_pub_;
    cv::Mat m_FrameOut;
    char serialBuffer [255];
    PIDController pid = {PID_KP, PID_KI, PID_KD,
								 PID_TAU,
								 PID_LIM_MIN, PID_LIM_MAX,
								 PID_LIM_MIN_INT, PID_LIM_MAX_INT,
								 SAMPLE_TIME_S};


                                
};

int main(int argc, char** argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<WebcamNode>());
    rclcpp::shutdown();
    return 0;
}
