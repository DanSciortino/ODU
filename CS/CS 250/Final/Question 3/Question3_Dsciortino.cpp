/*
Daniel Sciortino
ODU - CS 250 Final
Question #3
Ocean Environmentalists want to keep track of a certain species of fish. They tag them with id numbers
from 10,000 to 19,999. As the fish are caught the tag numbers are reported. Create a menu driven,
functionally designed program that allows the following actions.
*/

#include <iostream>

using namespace std;
#include "Question3_Dsciortino.h"


int main()
{
///Variables needed to run
    int Selector = 0;
///Inital display
    cout << "Welcome to the Global Fish Tracker Database 3000" << endl;
    cout << "Select an option with the numeric to get started" << endl;
    cout << "(1) Report a Fish caught" << endl;
    cout << "(2) Display all caught Fish" << endl;
    cout << "(3) Search for a specific Fish" << endl;
    cout << "(4) Show This Menu" << endl;
    cout << "(5) Quit the Application" << endl;
    cout << "Enter a Number 1-5" << endl;
    cin >> Selector;

    switch(Selector)
        {
        case 1:
            cout << "Report a Fish being caught" << endl;

            break;
        case 2:
            cout << 2 << endl;
            break;
        case 3:
            cout << 3 << endl;
            break;
        case 4:
            DisplayMenu();
            break;
        case 5:
            cout << "So Long, and Thanks for All the Fish" << endl;
            break;
        }

    return 0;
}
