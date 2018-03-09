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
#include <dlib/image_io.h>

#define DATA_FILENAME "../shape_predictor_68_face_landmarks.dat"

using namespace cv;
using namespace std;

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



int main() {
    string filename("../hillary_clinton.jpg");
    Mat img = imread(filename);
    img.convertTo(img, CV_32F);


    vector<Point2f> points;
    calculateLandmarks(filename, points);
    imshow("img", img);
    waitKey(0);
    return 0;
}