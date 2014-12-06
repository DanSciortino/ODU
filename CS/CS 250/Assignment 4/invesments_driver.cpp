/*
CS 250 ODU
Daniel Sciortino
Assignment 4
A software package to manage a person’s individual investments
*/

#include <iostream>
#include <string>

using namespace std;
#include "Building.h"
#include "Investments.h"

int main()
{
    //Setting up Pointers
    Investments *Head = NULL;
    Investments *Curr = NULL;
    Investments *Newone = NULL;
    Stock *StockCurr = NULL;
    RealEstate *RealEstateCurr = NULL;
    Collection *CollectionCurr = NULL;

    //Misc Variables
    int tempt = 0;
    string input = " ";
    double tempd = 0.00;
    double tempd2 = 0.00;
    int tempi = 0;
    char InChar = ' ';
    string Name = " ";
    char ItemAdd = ' ';
    bool looper = true;
    bool flag = true;

    //Seed read with error catch if the value is out of bounds
    cout << "Enter a Number 1-3 to set up a Investment Portfolio. Else hit 9 to exit: " << endl;
    cin >> tempt;

    while (tempt < 1 || tempt > 3)
        {
            cout << "Please enter a new number. Else hit 9 to exit: " << endl;
            cin >> tempt;
            if (tempt == 9)
                {
                    return 0;
                }
        }

    while (looper == true)
        {
            switch (tempt)
                {
                case 1:
                {
                    cout << "Enter the ticker information for your stock: " << endl;
                    cin >> input;
                    StockCurr = new Stock(input);
                    Newone = StockCurr;
                    cout << "Cost of the share: " << endl;
                    cin >> tempd;
                    cout << "Total Number of shares: " << endl;
                    cin >> tempi;
                    tempd2 = tempi * tempd;
                    StockCurr -> SetCost(tempd);
                    StockCurr -> SetValue(tempd2);
                    cout << endl;
                    StockCurr -> StockDisplay();
                    StockCurr -> InvestDisplay();
                }
                break;
                case 2:
                {
                    cout << "How many Acres does the property have: " << endl;
                    cin >> tempd;
                    RealEstateCurr = new RealEstate(tempd);
                    Newone = RealEstateCurr;
                    cout << "Does the property have a building on it (Y/N)?" << endl;
                    cin >> InChar;
                    if (InChar == 'Y' || InChar == 'y')
                        {
                            cout << "How many Square Feet is the building: " << endl;
                            cin >> tempd2;
                            RealEstateCurr->makeBuild(tempd2);
                        }
                    else
                        {
                            break;
                        }
                }
                break;

                case 3:
                {
                    cout << "What do you collect: " << endl;
                    cin >> Name;
                    CollectionCurr = new Collection(Name);
                    Newone = CollectionCurr;
                    cout << "What Item would you like to add to your collection?: " << endl;
                    cin >> Name;
                    CollectionCurr -> AddItem(Name);
                    while (flag == true)
                        {
                            cout << "Would you like to add another item to your collection?(Y/N):" << endl;
                            cin >> InChar;
                            if (InChar == 'Y' || InChar == 'y')
                                {
                                    cout << "What is the name of the next item?: " << endl;
                                    cin >> Name;
                                    CollectionCurr -> AddItem(Name);
                                }
                            else
                                {
                                    flag = false;
                                    break;
                                }
                        }

                }
                break;
                } //closes switch

            //Stays in the loop to continue investment
            cout << endl;
            cout << "Enter a Number 1-3 to set up a Investment Portfolio. Else hit 9 to exit: " << endl;
            cin >> tempt;
            if (tempt == 9)
                {
                    looper = false;
                }

            if (Head == NULL)
                {
                    Head = Newone;
                }

            else
                {
                    Curr = Head;
                    while ( Curr -> GetNext() != NULL)
                        {
                            Curr = Curr -> GetNext();
                        }
                    Curr -> SetNext(Newone);
                }

        }//closes loop

    Curr = Head;

    cout << endl << endl;
    cout << "************ Your Investments ************" << endl;

    while (Curr != NULL)
        {
            tempt = Curr -> GetType();

            switch (tempt)
                {
                case 1:
                {
                    StockCurr = (Stock *)Curr;
                    StockCurr -> StockDisplay();
                    StockCurr -> InvestDisplay();
                }
                break;

                case 2:
                {
                    RealEstateCurr = (RealEstate *)Curr;
                    RealEstateCurr -> RealEDisplay();
                }
                break;

                case 3:
                {
                    CollectionCurr = (Collection *)Curr;
                    CollectionCurr -> ShowAll();
                }
                break;
                }

            Curr = Curr -> GetNext();
            cout << endl;
        }

    return 0;
}// closes program
