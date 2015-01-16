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
    Fish *Curr = NULL;
    Fish *FishDB = NULL;
    int ID = 0;
    double Weight = 0.0;
    int Month = 0 ;
    int Day = 0;
    int Year = 0;
    char Location = 'A';
    bool Found = false;
    int SerachFor = 0;

    ///Inital display
    cout << "Welcome to the Global Fish Tracker Database 3000" << endl;
    cout << "Select an option with the numeric to get started" << endl;
    cout << "(1) Report a Fish caught" << endl;
    cout << "(2) Display all caught Fish" << endl;
    cout << "(3) Search for a specific Fish" << endl;
    cout << "(4) Quit the Application" << endl;
    cout << "Enter a Number 1-4" << endl;
    cin >> Selector;
    while (Selector != 9)
    {
        switch (Selector)
        {
        case 1:
            cout << "Report a Fish being caught" << endl;
            cin >> ID;
            cin >> Weight;
            cin >> Month;
            cin >> Day;
            cin >> Year;
            cin >> Location;
            if (FishDB == NULL)
            {
                FishDB = new Fish(ID, Weight, Month, Day, Year, Location);
                Curr = FishDB;
            }
            else
            {
                Curr -> MakeNew();
                Curr = Curr -> GetNext();
                Curr -> SetID(ID);
                Curr -> SetWeight(Weight);
                Curr -> SetMonth(Month);
                Curr -> SetDay(Day);
                Curr -> SetYear(Year);
                Curr -> SetLocation(Location);
            }
            cout << endl << endl;
            break;
        case 2:
            FishDB -> ShowAll();
            break;
        case 3:
            cout << "Select a value to serach for" << endl;
            cout << "(1) ID" << endl;
            cout << "(2) Month" << endl;
            cout << "(3) Location" << endl;
            cin >> SerachFor;
            switch (SerachFor)
            {
            case 1: cout << "What ID to Search for?:" << endl;
                             cin >> ID;
                while (Curr != NULL)
                {
                    if (Curr->GetID() == ID)
                    {
                        Curr -> Display();
                        Found = true;
                        Curr = NULL;
                    }
                    else
                    {
                        Curr = Curr->GetNext();
                    }
                }
                if (!Found)
                {
                    cout << "Not Found" << endl;
                }
                break;

            case 2: cout << "What Month to Search for?:" << endl;
                             cin >> Month;
                                             {
                    if (Curr->GetMonth() == Month)
                    {
                        Curr -> Display();
                        Found = true;
                        Curr = NULL;
                    }
                    else
                    {
                        Curr = Curr->GetNext();
                    }
                }
                if (!Found)
                {
                    cout << "Not Found" << endl;
                }
                break;
            case 3: cout << "What Location to Search for?:" << endl;
                             cin >> Location;
                                             {
                    if (Curr->GetLocation() == Location)
                    {
                        Curr -> Display();
                        Found = true;
                        Curr = NULL;
                    }
                    else
                    {
                        Curr = Curr->GetNext();
                    }
                }
                if (!Found)
                {
                    cout << "Not Found" << endl;
                }
                break;
            }
            break;
        case 4:
            cout << "So Long, and Thanks for All the Fish" << endl;
            delete FishDB;
            delete Curr;
            return 0;
            break;
        }
    cout << endl;
    cout << "Select an option with the numeric" << endl;
    cout << "(1) Report a Fish caught" << endl;
    cout << "(2) Display all caught Fish" << endl;
    cout << "(3) Search for a specific Fish" << endl;
    cout << "(4) Quit the Application" << endl;
    cout << "Enter a Number 1-4" << endl;
    cin >> Selector;

    }
    return 0;
}
