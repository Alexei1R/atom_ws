#ifndef FINDLINES_IMPL_H
#define FINDLINES_IMPL_H

#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"

class FindLines
{
public:
	FindLines(cv::Mat &frame, int left, int right);

public:
	void OnAttach();
	void OnDetach();
	void OnUpdate();

public:
	void PreprocessLine(cv::Mat &org);

public:
	cv::Mat &GetPreprocesed();
	float GetOffesetCenter() { return laneCenterOffset; }

private:
	int offset = 100;
	int heightoffset = 240;
	cv::Point2f srcVertices[4];
	cv::Point2f dstVertices[4];
	cv::Mat perspectiveMatrix;
	cv::Mat dst;
	cv::Mat invertedPerspectiveMatrix;
	cv::Mat org;		// Original image, modified only with result
	cv::Mat img;		// Working image
	cv::Mat hsv;		// Working image
	cv::Mat m_FrameOut; // Working image
	std::vector<cv::Point2f> leftLanePts;
	std::vector<cv::Point2f> rightLanePts;

	cv::Mat &m_Frame;

	cv::Mat m_Gray;

	cv::Mat m_SobelOut;
	cv::Mat m_CannyOut;
	cv::Mat m_Preprocesed;
	cv::Mat m_Wrapped;
	// sobel
	cv::Mat grad_x, grad_y;
	cv::Mat abs_grad_x, abs_grad_y;

	// perspective wrap
	cv::Point2f src_vertices[4];
	cv::Point2f dst_vertices[4];
	cv::Mat M;

	std::pair<int, int> m_FrameSize;
	float midlePoint;
	float midleleft = 0.43;
	float midleright = 0.58;

private:
	const int m_Depth = CV_16S;

	float laneCenterOffset;
};

#endif // !FINDLINES_IMPL_H
