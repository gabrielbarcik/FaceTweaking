#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <stdlib.h>
#include <dlib/image_processing/frontal_face_detector.h>
#include <dlib/image_processing/shape_predictor.h>
#include <dlib/image_processing/render_face_detections.h>
#include <dlib/image_processing.h>
//#include <dlib/gui_widgets.h>
#include <dlib/image_io.h>

using namespace cv;

using namespace std;

#define LEFT_EYE_BEGIN 36 // index of leftmost eye on the image
#define LEFT_EYE_END 41
#define RIGHT_EYE_BEGIN 42 // index of rightmost eye on the image
#define RIGHT_EYE_END 47
#define DATA_FILENAME "../shape_predictor_68_face_landmarks.dat"
#define GLASS_LEFT_CENTER Point2f(57,110)
#define GLASS_LEFT_TOP Point2f(57,100)
#define GLASS_RIGHT_CENTER Point2f(170,110)
#define TRIANGLE_FILENAME "../tri.txt"

typedef vector<Point2f> Triangle;

// calculate facial landmarks
void calculateLandmarks(string filename, vector<Point2f> & output)
{
    ifstream ifs(filename+".txt");
    float x, y;
    while(ifs >> x >> y)
    {
        output.push_back(Point2f(x,y));
    }

    if(output.size()!=0) // if points were already calculated, just load them
        return;

    // otherwise:
    // USE DLIB'S FACE_LANDMARK DETECTION

    ofstream ofs(filename+".txt");

    // We need a face detector.  We will use this to get bounding boxes for
    // each face in an image.
    dlib::frontal_face_detector detector = dlib::get_frontal_face_detector();
    // And we also need a shape_predictor.  This is the tool that will predict face
    // landmark positions given an image and face bounding box.  Here we are just
    // loading the model from the shape_predictor_68_face_landmarks.dat file you gave
    // as a command line argument.
    dlib::shape_predictor sp;


    dlib::deserialize(DATA_FILENAME) >> sp;

    dlib::array2d<dlib::rgb_pixel> img;
    dlib::load_image(img, filename);
    // Make the image larger so we can detect small faces.

    //dlib::pyramid_up(img); // if we enlarge the image we have problems

    // Now tell the face detector to give us a list of bounding boxes
    // around all the faces in the image.
    vector<dlib::rectangle> dets = detector(img);
    //cout << "Number of faces detected: " << dets.size() << endl;

    assert(dets.size()==1);  /// WE HAVE TO TREAT LATER THE CASE WHERE THERE ARE MULTIPLE FACES

    // Now we will go ask the shape_predictor to tell us the pose of
    // each face we detected.
    //std::vector<full_object_detection> shapes;
    for (unsigned long j = 0; j < dets.size(); ++j) {
        dlib::full_object_detection shape = sp(img, dets[j]);

        for (int i = 0; i < shape.num_parts(); i++) {
            output.push_back(Point2f((float) shape.part(i).x(), (float) shape.part(i).y()));
        }

    }

    // write file

    for(Point2f & p : output)
    {
        ofs << p.x<<" "<<p.y<<endl;
    }
}

void applyAffineTransform(Mat &warpImage, Mat &src, vector<Point2f> &srcTri, vector<Point2f> &dstTri)
{

    // Given a pair of triangles, find the affine transform.
    Mat warpMat = getAffineTransform( srcTri, dstTri );

    // Apply the Affine Transform just found to the src image
    warpAffine( src, warpImage, warpMat, warpImage.size());
}

void morphImages(Mat &src, Mat &dst, Triangle &triSrc, Triangle &triDst)
{
    Mat warpImage = Mat::zeros(dst.size().height, dst.size().width, src.type());
    /*
    circle(src, triSrc[0], 3, Scalar(255, 0, 0));
    circle(src, triSrc[1], 3, Scalar(255, 0, 0));
    circle(src, triSrc[2], 3, Scalar(255, 0, 0));

    circle(dst, triDst[0], 3, Scalar(255, 0, 0));
    circle(dst, triDst[1], 3, Scalar(255, 0, 0));
    circle(dst, triDst[2], 3, Scalar(255, 0, 0));

    imshow("s",src/255.0);
    waitKey(0);
    imshow("a", dst/255.0);
    waitKey(0);

     */

    applyAffineTransform(warpImage, src, triSrc, triDst);

    //imshow("b", warpImage/255.0);
    //waitKey(0);

    // Copy warped image to the output image
    for(int y = 0; y < warpImage.size().height; y++)
    {
        for(int x = 0; x < warpImage.size().width; x++)
        {
            //cout<< warpImage.at<float>(x, y)<<endl;
            if(warpImage.at<float>(x, y) > 1 )
            {
               // circle(warpImage, Point2f(x, y), 1, Scalar(255, 0, 0));
               dst.at<float>(x, y) = warpImage.at<float>(x, y);
            }
        }

    }

    imshow("b", warpImage/255.0);
    waitKey(0);

    imshow("b", dst/255.0);
    waitKey(0);
}

int main( int argc, char** argv)
{
    string imgFilename("../hillary_clinton.jpg");
    string glassesFilename("../glasses.png");

    //Read input images
    Mat img = imread(imgFilename);
    Mat glasses = imread(glassesFilename);
    bitwise_not ( glasses, glasses );

    //convert Mat to float data type
    img.convertTo(img, CV_32F);
    glasses.convertTo(glasses, CV_32F);

    /*
    for(int i=0; i<glasses.rows; i++)
    {
        for(int j=0; j<glasses.rows; j++)
        {
            cout<< img.at<float>(i, j)<<endl;
            waitKey(0);
        }

    }

    return 0;*/


    //Read points
    vector<Point2f> landmarks;
    calculateLandmarks(imgFilename, landmarks);

    Point2f leftTop = landmarks[37];
    Point2f leftCenter = Point2f(0, 0), rightCenter = Point2f(0, 0);
    for(int i=LEFT_EYE_BEGIN; i<=LEFT_EYE_END; i++)
    {
        leftCenter+=landmarks[i];
    }
    leftCenter/=(LEFT_EYE_END-LEFT_EYE_BEGIN+1);

    for(int i=RIGHT_EYE_BEGIN; i<=RIGHT_EYE_END; i++)
    {
        rightCenter+=landmarks[i];
    }
    rightCenter/=(RIGHT_EYE_END-RIGHT_EYE_BEGIN+1);

    vector<Point2f> triGlasses,triImg;
    triGlasses.push_back(GLASS_LEFT_CENTER); triGlasses.push_back(GLASS_RIGHT_CENTER); triGlasses.push_back(GLASS_LEFT_TOP);
    triImg.push_back(leftCenter); triImg.push_back(rightCenter); triImg.push_back(leftTop);

    morphImages(glasses, img, triGlasses, triImg);


    // Display Result
    //imshow("Morphed Face", img/255.0);
    //waitKey(0);

    return 0;
}
