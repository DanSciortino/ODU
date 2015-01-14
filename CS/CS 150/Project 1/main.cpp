 /*
 Source file: main.cpp
 Programmer : Dan Sciortino
 Date       : 11 Sept 2013
 Lab        : Lab #2
 Description: Calculating volume and Surface area Of the ODU UselessSpaceStation Torus
*/

#include <iostream>
#include <cmath>
#include <iomanip>
#include <fstream>
#include <string>

using namespace std;

int main(){


    //Variable Declaration
    string name;
    double innerradius = 0.;
    double outerradius = 0.;
    const double pi = 3.1416;
    double surfacearea = 0.000;
    double volume = 0.000;
    ofstream outFile;
    char choice = ' ';
    outFile.open("DanielSciortino_Proj1out.txt");

    //Header
    cout << fixed << setfill('=') << setw (35) <<'=';
    outFile << fixed << setfill('=') << setw (35) <<'=';
    cout << "\nODUseless Area and Volume Calculator";
    outFile << "\nODUseless Area and Volume Calculator";
    cout << "\nDaniel Sciortino\n";
    outFile << "\nDaniel Sciortino\n";
    cout << fixed << setfill('=') << setw (35) <<'=';
    outFile << fixed << setfill('=') << setw (35) <<'='<<"\n";
    cout << "\nWhould you like to Calculate the surface of a torus?( enter y or n): ";

    cin >> choice;
        if(cin.fail()){
            cout << "A value was entered incorrectly";
            return 1;
        }
while ( choice == 'y'|| choice == 'Y' ){
        //User input
        cout << "\n\nEnter you First and Last name : ";
        cin >> ws;
        getline(cin,name);

        if(cin.fail()){
            cout << "A value was entered incorrectly";
            return 1;
        }

        cout << "Enter the Inner radius for the Space Station : ";
        cin >> innerradius;

        if(cin.fail()){
            cout << "\nA value was entered incorrectly";
            return 1;
        }

        cout << "Enter the Outer radius for the Space Station : ";
        cin >> outerradius;

        if(cin.fail()){
            cout << "\nA value was entered incorrectly";
            return 1;
        }

        //Calcultions
        volume = .25*(pow(pi, 2)*(innerradius+outerradius)*(pow(innerradius-outerradius,2)));
        surfacearea = pow(pi,2)*(pow(outerradius,2)-(pow(innerradius,2)));

        //Output to monitor and to file
        cout << "\n" << name;
        outFile << "\n" << name;
        cout << setprecision(3) << "\nThe Inner Radius is = " << innerradius;
        outFile << setprecision(3) << "\nThe Inner Radius is = " << innerradius;
        cout << setprecision(3) << "\nThe Outer Radius is = " << outerradius;
        outFile << setprecision(3) << "\nThe Outer Radius is = " << outerradius;
        cout << setprecision(3) << "\nThe Surface Area is : "<< surfacearea;
        outFile << setprecision(3) << "\nThe Surface Area is : "<< surfacearea;
        cout << setprecision(3) << "\nThe Volume is : " << volume;
        outFile << setprecision(3) << "\nThe Volume is : " << volume;
        outFile << "\n\n";

        cout<<"\nWould you like to run the calculator again?: ";
        cin>>choice;
}
    outFile << "\nThanks for running the ODUseless Area and Volume Calculator!" ;
    cout << "\nThanks for running the ODUseless Area and Volume Calculator!" ;

    outFile.close();
    return 0;
}
