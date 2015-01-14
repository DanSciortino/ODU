//Programmer : Daniel Sciortino
//Date       : Nov 12 2013
//Lab        : Project
//Description: Calculating area and perimter of a quadrilateral

#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>
#include <ctime>
#include <iomanip>
#include <string>
#include <cstdlib>
#include <algorithm>

using namespace std;

void header(); /// Shows the project name and header

void point(); ///shows the points header

///
/// Main Function
///
int main()
{
    fstream input_file;    ///< Input file stream
    string input_filename; ///< Input file name

    double perimeter = 0;  ///< Area of the polygon
    double area      = 0;  ///< Perimeter of the polygon

    //prompt for input filename
    cout << "Enter the input filename: \t";
    getline( cin,input_filename );

    //open input file
    input_file.open( input_filename.c_str(), ios::in );

    //Validate the filestream
    if( input_file.fail() )
    {
        cerr << "Input file is invalid.\n";
        return 1;
    }
    //Your code starts here
    header (); /// shows the program information

    double points [4][2] = {0.00};         ///array declartion and intilatizion

    point(); /// shows the point header

    ///fills in the array from the infile
    for (int outer = 0 ; outer < 4 ; outer++ )
    {
        for (int inner = 0 ; inner < 2 ; inner++ )
        {
            input_file >> points [outer][inner];
        }
    }
    cout << fixed << setprecision(2) << "Point 1: ( " <<points[0][0] <<" , " << points[0][1] << " )" << endl
         << "Point 2: ( " <<points[1][0] <<" , " << points[1][1] << " )" << endl
         << "Point 3: ( " <<points[2][0] <<" , " << points[2][1] << " )" << endl
         << "Point 4: ( " <<points[3][0] <<" , " << points[3][1] << " )" << endl;

    ///instead of having a long line for equations i broke it into managable sections
    double section1 = 0.00;
    double section2 = 0.00;
    double section3 = 0.00;
    double section4 = 0.00;

    double AB = 0.00;
    double BC = 0.00;
    double CD = 0.00;
    double AD = 0.00;

    section1 = ( points[3][0] * points[0][1] ) - ( points[0][0] * points[3][1] );
    section2 = ( points[0][0] * points[1][1] ) - ( points[1][0] * points[0][1] );
    section3 = ( points[1][0] * points[2][1] ) - ( points[2][0] * points[1][1] );
    section4 = ( points[2][0] * points[3][1] ) - ( points[3][0] * points[2][1] );

    ///area calculation

    area = .5 *abs( section1 + section2 + section3 + section4 );

    /// Perimeter calculation

    AB = ( sqrt( ( pow ( points[1][0] - points[0][0],2 ) ) + pow ( points[1][1] - points[0][1] , 2 ) ) );
    BC = ( sqrt( ( pow ( points[2][0] - points[1][0],2 ) ) + pow ( points[2][1] - points[1][1] , 2 ) ) );
    CD = ( sqrt( ( pow ( points[3][0] - points[2][0],2 ) ) + pow ( points[3][1] - points[2][1] , 2 ) ) );
    AD = ( sqrt( ( pow ( points[3][0] - points[0][0],2 ) ) + pow ( points[3][1] - points[0][1] , 2 ) ) );

    perimeter = AB + BC + CD + AD ;

    cout << fixed << setprecision(2) << "\nPerimeter: " << perimeter <<endl
         <<  "Area: " << area <<endl;

    //Your code ends here /// Does it? no it does

    //Close input file
    input_file.close();
    return 0;
}

void header()
{
    cout << "**************************************************************" << endl;
    cout << setw(40)<< right << "Daniel Sciortino" << endl;
    cout << setw(40)<< right << "12 November 2013" << endl;
    cout << setw(40)<< right << "Project 4 CRN 10714" << endl;
    cout << setw(40)<< right << "Quadrilaterals " << endl;
    cout << "**************************************************************" << endl;
    cout << "\n\n";
}

void point()
{
    cout << "----------------------------------------" << endl;
    cout << setw(20)<< right << "Points" << endl;
    cout << "----------------------------------------" ;
    cout << "\n";
}
