/*========================cs-150-fall-2013======================
  LAB 3_b
  Source file: Lab 3 part B
  Programmer : Daniel Sciortino
  Date       : 18 Sept 2013
  Lab        : Wednesday 3pm
  Description: Distance calculator with two given points. using
  setprecision and fixed for a desired output
  =============================================================*/

#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main()
{
    double x1=0,x2=0; // variable declartion and intialization
    double y1=0,y2=0;
    double distance = 0.00000;

    cout <<"=================="  //header with information
    <<"\nCS 150"
    <<"\nLab 3 Part b"
    <<"\nDaniel Sciortino"
    <<"\n==================";

    cout << "\n\nEnter the x1,y1 coordinates"; //take in x1,y1
    cout <<"\nx1 = ";
    cin >> x1;
    cout <<"y1 = ";
    cin >> y1;

    cout << "Enter the coordinates for x2,y2"; //take in x2,y2
    cout <<"\nx2 = ";
    cin >> x2;
    cout <<"y2 = ";
    cin >> y2;

    distance = sqrt(pow(x1-x2,2)+ pow(y1-y2,2)); //does the formula

    cout << "The distance between the two points (" << x1 << "," << y1 << ")"
    <<" and (" << x2 << "," << y2 << ")" << " is " << fixed << setprecision(4) << distance;
    //output all the information with additional zeros

return 0;
}
//--------------------------------------------------------------
