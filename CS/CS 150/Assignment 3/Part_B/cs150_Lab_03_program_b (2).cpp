/*========================cs-150-fall-2013======================
  LAB 3_b
  Source file: Lab 3 part B
  Programmer : Daniel Sciortino
  Date       : 18 Sept 2013
  Lab        : Wedensday 3pm
  Description: Distance calculator with two given points
  =============================================================*/

#include <iostream>
#include <iomanip>
#include <math.h>

using namespace std;

int main()
{
    int x1=0,x2=0;
    int y1=0,y2=0;
    double distance;

    cout << setprecision(4);

    cout <<"=================="
    <<"\nCS 150"
    <<"\nLab 3 Part b"
    <<"\nDaniel Sciortino"
    <<"\n==================";

    cout << "\n\nGive me an X1 : ";
    cin >> x1;
    cout << "Give me an Y1 : ";
    cin >> y1;

    cout << "\nGive me an X2 : ";
    cin >> x2;
    cout << "Give me an Y2 : ";
    cin >> y2;

    distance = sqrt(pow(x1-x2,2)+pow(y1-y2,2));

    cout << "The given point (" << x1 << "," << y1 << ")"
    <<"and (" << x2 << "," << y2 << ")"
    << "\n\n\nThe Distance between two points is = " <<distance;

     return 0;
}
//--------------------------------------------------------------
