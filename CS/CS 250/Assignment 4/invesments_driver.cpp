/*
CS 250 ODU
Daniel Sciortino
Assignment 4
A software package to manage a person’s individual investments
*/

#include <iostream>
#include <string>
#include <fstream>

using namespace std;
#include "Investments.h"

int main()
{
    //Setting up Pointers
    Investments *head = NULL;
    Investments *curr = NULL;
    Investments *newone = NULL;
    Stock *StockCurr = NULL;
    RealEstate *RealEstateCurr = NULL;
    Collection *CollectionCurr = NULL;

    //Misc Variables
    int tempt = 0;
    int tempi = 0;
    string input = "";

    cout << "Enter a Number 0-4 to set up a Investment Portfolio: "<< endl;
    cin >> tempt;
    while (tempt != 9)
        {
            switch(tempt)
                {
                case 1:
                {
                    cout << "Enter any ticker information for the stock:" << endl;
                    getline(cin, input);
                    StockCurr = new Stock(input);
                    newone = StockCurr;

                }
                break;
                cin.clear();
                cin.ignore();

                case 2:
                {
                    RealEstateCurr = new RealEstate(tempi);
                    newone = RealEstateCurr;

                }
                break;
                cin.clear();
                cin.ignore();
                case 3:
                {
                    cout << "Enter the name for the Collection" << endl;
                    cin >> input;
                    CollectionCurr = new Collection(input);
                    newone = CollectionCurr;

                }
                break;
                cin.clear();
                cin.ignore();
                } //closes switch

        }//closes loop
    return 0;
}// closes program
