//Programmer : James Owens
//Date       : 9/5/13
//Lab Section: FRIDAY 2PM
//Description: Lab Assignment 2: Volume and Surface Area -- Solution

#include <iostream>

using namespace std;

int main()
{
    //Variable Declarations

    const double PI = 3.14;  //Mathematical constant

    bool error = false;     // flag for error checking

    //Rectangle Dimensions
    double length = 0.0;
    double width = 0.0;
    double height = 0.0;

    double rectangularPrismSurfaceArea = 0.0;   // Surface Area
    double rectangularPrismVolume = 0.0;  // Volume

    //Sphere Dimension
   long double radius = 0.0;

    double sphereSurfaceArea = 0.0;   // Surface Area
    double sphereVolume = 0.0;  // Volume

    //Prologue Comments

    cout << "=========================================" << endl
         << "         CS 150 LAB Spring 2013" << endl
         << "Lab Assignment 2: Volume and Surface Area" << endl
         << "=========================================" << endl
         << endl << endl;

    //Prompt user for input

    cout << "Enter the length, width, and height of your prism: "<< endl << endl;

    cout << "\tLength: ";

    cin >> length;

    cout << "\tWidth: ";

    cin >> width;
    cout << "\tHeight: ";

    cin >> height;

    cout << endl << endl << "Enter the radius of your sphere: ";

    cin >> radius;

    cout << endl;

    //Validate the user input

    if (length <= 0)
    {
        cerr << "You've entered an invalid length of " << length << endl;
        error = true;
    }

    if (width <= 0)
    {
        cerr << "You've entered an invalid width of " << width << endl;
        error = true;
    }

    if (height <= 0)
    {
        cerr << "You've entered an invalid height of " << height << endl;
        error = true;
    }

    if (radius <= 0)
    {
        cerr << "You've entered an invalid radius of " << radius << endl;
        error = true;
    }

    if (error)
        return 1;

    // Compute the surface area and volume of the shapes

    //Rectangular Prism
    rectangularPrismSurfaceArea = 2.0 * ( ( length * width ) + (width * height ) + ( height * length) ) ;
    rectangularPrismVolume = length * width * height;

    //Sphere
    sphereSurfaceArea = 4.0 * PI * radius * radius;
    sphereVolume = 4.0 / 3.0 * PI * radius * radius * radius;

    //Print the results:

    cout << endl << "=== Summary ===" << endl << endl
        << "A rectangular prism of: " << length << " x " << width << " x " << height << endl
        << "Surface Area = " << rectangularPrismSurfaceArea << endl
        << "Volume = " << rectangularPrismVolume << endl << endl
        << "A sphere of radius " << radius << endl
        << "Surface Area = " << sphereSurfaceArea << endl
        << "Volume = " << sphereVolume << endl << endl;

    if ( sphereSurfaceArea > rectangularPrismSurfaceArea )
        cout << "The object with the greatest surface area is the sphere." << endl << endl;
    else if ( rectangularPrismSurfaceArea > sphereSurfaceArea )
        cout << "The object with the greatest surface area is the rectangular prism." << endl << endl;
    else
        cout << "The objects have the same surface area." << endl << endl;


    if ( sphereVolume > rectangularPrismVolume )
        cout << "The object with the greatest volume is the sphere." << endl << endl;
    else if ( rectangularPrismVolume > sphereVolume )
        cout << "The object with the greatest volume is the rectangular prism." << endl << endl;
    else
        cout << "The objects have the same volume." << endl << endl;



    //cout << endl << "Press any key to exit.";
    //cin.get();


    return 0;
}
