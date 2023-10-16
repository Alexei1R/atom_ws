#include <iostream>
#include <opencv2/opencv.hpp>
#include "atom_logic/PID.h"
#include "atom_logic/FindLines.h"
#include "atom_logic/WebCamStream.h"

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

int main()
{
    cv::VideoCapture cap(0);

    if (!cap.isOpened())
    {
        std::cout << "Error opening video stream or file" << std::endl;
        return -1;
    }

    cv::Mat m_FrameOut;
    FindLines *lines = new FindLines(m_FrameOut, left, right);
    lines->OnAttach();

    while (true)
    {
        cv::Mat frame;
        cap >> frame;
        cv::resize(frame, frame, cv::Size(640, 480));
        frame.copyTo(m_FrameOut);
        lines->OnUpdate();
        m_FrameOut = lines->GetPreprocesed();

        // If the frame is empty, break immediately
        if (frame.empty())
        {
            break;
        }

        cv::imshow("Lines", m_FrameOut);
        if (cv::waitKey(5) >= 0)
        {
            break;
        }
    }

    return 0;
}
