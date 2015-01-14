//Programmer : Daniel Sciortino
//Date       :  4 Sept 2013
//Lab Section: Weds 3:00
//Description: basic math

#include <iostream>

using namespace std;

int main()
{
     //Variable Declarations
     int num_1;       // assigned in the program
     int num_2;       // input by the user


     cout << "\n======================================="
          << "\n     CS 150 LAB Spring 2013"
          << "\n=======================================\n"
          << "\nMy name is Daniel Sciortino"
          << "\nI am majoring in Computer Engineering"
          << "\n\n";

     //assign a value to num1
    num_1 = 5;

     //prompt the user to enter a value for num2
    cout << "What's number a second number? =  ";
    cin >> num_2;

     //Output Number 1 and Number 2
     cout << "\nNumber 1  : " << num_1 << "\nNumber 2  : " << num_2 << "\n";

     //Output Arithmetic Results
     cout << "\nSum       : " << ( num_1 + num_2 )
          << "\nDifference: " << ( num_1 - num_2 )
          << "\nProduct   : " << ( num_1 * num_2 )
          << "\nQuotient  : " << static_cast<double> ( num_1 / num_2 )
          << "\n";

    return 0;
}
