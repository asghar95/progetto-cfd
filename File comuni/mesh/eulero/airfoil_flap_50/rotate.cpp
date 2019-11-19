
#include <fstream>
#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

int main(){
    string fileName;
    cout << "Enter file name:\t ";
    cin >> fileName;
    cout << endl;
    
    ifstream input;
    ofstream output;
    
    input.open(fileName);
    
    int nPoints;
    double alpha, leading_edge_x,leading_edge_y;
    double coord[2];
    string spacing = "h";
    
    if (input.is_open()){
        int dummyI;
        input >> nPoints>>alpha>>leading_edge_x>>leading_edge_y;
        alpha= M_PI/180*alpha;
        output.open("rotated_flap.txt");

        
        for (int i = 0; i < nPoints; i++) {
            /* Point(1) = {0.000000, 0.036000, 0.000000, 0.003600}; */
            input  >> coord[0] >> coord[1];
            output << (cos(alpha)*coord[0] +sin(alpha)*coord[1])+leading_edge_x <<" "<<(-sin(alpha)*coord[0] +cos(alpha)*coord[1])+leading_edge_y <<endl;
        }
        
        
    } else cout << "\n\n[ERROR] could not open file\n\n" << endl;
    
    
}
