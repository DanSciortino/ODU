//Programmer : Daniel Sciortino
//Date      : 4 Dec 2013
//Lab       : 10714
//Description:Lab Final Verison B: Completeing 8 Functions

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

//Function Prototypes

// Utility (Helper) Functions

///
/// Print a horizontal line
///
void printHorizontalLine( std::ostream& outs, char line_char, int width );

///
/// Print a centered title
///
void printCenteredTitle( std::ostream& outs, std::string title, int width );

///
/// Print a centered heading
///
void printHeading( std::ostream& outs, std::string title, int width, char border_char = '*' );




// Exam Functions

///
/// Modify a cout statement
///
void problemOne();

///
/// Read input from cin
///
void problemTwo( double &radius, double &height);

///
/// Perform a calculation and return the result
///
double problemThree( double radius, double height );

///
/// Ouput a number and use cout formatting
///
void problemFour( double volume );

///
/// Store user input into an array
///
void problemFive( double prices[], int array_size );

///
/// Compute an aggregate measure
///
double problemSix( double prices[], int array_size );

///
/// Write a conditional block
///
void problemSeven( double sum_prices );

///
/// Read an entire line from cin
///
string problemEight();

int main()
{
    //Variable Declarations
    double r = 1; ///< Radius of a cylinder
    double h = 1; ///< Height of a cylinder
    double v = 1; ///< Volume of a cylinder

    int num_prices = 4;
    double prices[ num_prices ];

    double sum_prices = 0;

    string name;

    printHeading( cout, "Programmer Information", 40 );
    problemOne();

    printHeading( cout, "Read User Input", 40 );
    problemTwo( r, h );

    printHeading( cout, "Perform a Calculation", 40 );
    v = problemThree( r, h);

    problemFour( v );

    //initialize the array
    for( int i = 0; i < num_prices; i++ )
    {
        prices[ i ] = 0;
    }

    printHeading( cout, "Store User Input in an Array", 40 );
    problemFive( prices, num_prices );

    printHeading( cout, "Compute an Aggregate Measure", 40 );
    sum_prices = problemSix( prices, num_prices );

    cout.precision( 2 );
    cout << setw( 16 ) << "Total : " << sum_prices << "\n";

    printHeading( cout, "Output a Message", 40 );
    problemSeven( sum_prices );
    cout << "\n";

    cin.ignore( 200, '\n');

    printHeading( cout, "Read a Line", 40 );
    name = problemEight();

    printHeading( cout, "Lab Final Part 1", 40 );
    cout << "My name is " << name <<".\n"
         <<"I have completed the first part of the Lab Final!"
         <<"\n\n";

    return 1;
}

///
///
///
void problemOne()
{
    cout << "Name: Daniel Sciortino" << "\n"
         << "Date: 4 Dec 2013"     << "\n"
         << "Lab : 10714 Weds 3:00 - 5:30"  << "\n";
}

///
///
///
void problemTwo( double &radius,  double &height)
{
    cout << "Enter the Radius: ";
    cin >> radius;
    cout << "Enter the Height: ";
    cin >> height;

}

///
///
///
double problemThree( double radius, double height )
{
    double volume = 0; ///< Volume of the rectangular prism
    volume = 3.14 * ( radius * radius ) * height;


    return volume;
}

///
///
///
void problemFour( double volume )
{
    cout << "Volume: " << fixed << setprecision(3) << volume << endl;
}

///
///
///
void problemFive( double prices[], int array_size )
{
    for( int i = 0; i < array_size; i++ )
    {
        cout << "Enter Price Entry " << ( i + 1 ) << ": ";
        cin >> prices[i];
    }
}

///
///
///
double problemSix( double prices[], int array_size )
{
    double sum_prices = 0;
    for(int i = 0; i < array_size ; i++)
    {
        sum_prices += prices[i];
    }


    return sum_prices;
}

///
///
///
void problemSeven( double sum_prices )
{
    if (sum_prices < 10)
    {
        cout << "You forgot to buy bread." << endl;
    }
    if (sum_prices < 30 && sum_prices >= 10)
    {
        cout << "You forgot to buy gas." << endl;
    }
    else
    {
        cout << "You forgot to buy milk" << endl;
    }
}

///
///
///
string problemEight()
{
    string full_name = "";
    cout << "What is you name? ";
    getline(cin,full_name);


    return full_name;
}


//=======================================
// Do Not Modify Anything Below This Line


///
///
///
void printHorizontalLine( std::ostream& outs, char line_char, int width )
{
    outs << std::setfill( line_char ) << std::left << std::setw( width ) << line_char << "\n";
    //reset outs fill
    outs.fill( ' ' );
}

///
///
///
void printCenteredTitle( std::ostream& outs, std::string title, int width )
{
    int magic_width = 0;

    magic_width =  (width/2) - (title.length()/2) + title.length();

    outs  << std::right << std::setw( magic_width ) << title << "\n"
          << std::left;
}

///
///
///
void printHeading( std::ostream& outs, std::string title, int width, char border_char )
{

    printHorizontalLine( outs, border_char, width );
    printCenteredTitle( outs, title, width);
    printHorizontalLine( outs, border_char, width );

    //reset outs
    outs.clear();
    outs.fill(' ');
}


