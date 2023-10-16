#include <iostream>
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

/* Maximum run-time of simulation */
#define SIMULATION_TIME_MAX 4.0f

namespace ATOM
{

    

    int main()
    {
        WebcamStream ws;
        FindLines *m_FindLines;
        PIDController pid = {PID_KP, PID_KI, PID_KD,
                             PID_TAU,
                             PID_LIM_MIN, PID_LIM_MAX,
                             PID_LIM_MIN_INT, PID_LIM_MAX_INT,
                             SAMPLE_TIME_S};

        cv::Mat *frame;
        cv::Mat m_Frame;
        cv::Mat m_FrameOut;

        ws.start();
        int left = 200;
	    int right = 400;
        m_FindLines = new FindLines(m_Frame, left, right);
        PIDController_Init(&pid);

        while (true)
        {
            std::cout << "Hello World!" << std::endl;

            frame = ws.read();
            frame->copyTo(m_Frame);
            frame->copyTo(m_FrameOut);

            m_FrameOut = m_FindLines->GetPreprocesed();
            PIDController_Update(&pid, 0, m_FindLines->GetOffesetCenter());

            cv::imshow("Lines", m_FrameOut);
        }

        return 0;
    }

}