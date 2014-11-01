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
#include "Building.h"
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
    string input = " ";
    double tempd = 0.00;
    double tempd2 = 0.00;
    int tempi = 0;
    char buildchar = ' ';
//Seed read with error catch if the value is out of bounds
    cout << "Enter a Number 1-3 to set up a Investment Portfolio. Else hit 9 to exit: "<< endl;
    cin >> tempt;
    if(tempt == 9)
        {
            return 0;
        }
    while (tempt < 1 || tempt > 3)
        {
            cout << "Please enter a new number: " << endl;
            cin >> tempt;
            if(tempt == 9)
                {
                    return 0;
                }
        }
    while (tempt)
        {
            switch(tempt)
                {
                case 1:
                {
                    cout << "Enter the ticker information for your stock: " << endl;
                    cin >> input;
                    StockCurr = new Stock(input);
                    newone = StockCurr;
                    cout << "Cost of the share: " << endl;
                    cin >> tempd;
                    cout << "Total Number of shares: " << endl;
                    cin >> tempi;
                    tempd2 = tempi * tempd;
                    StockCurr -> setCost(tempd);
                    StockCurr -> setValue(tempd2);
                    cout << endl;
                    StockCurr -> Display();
                    StockCurr -> display();
                    cin.clear();
                }
                break;

                case 2:
                {
                    cout << "How many Acres does the property have: " << endl;
                    cin >> tempd;
                    RealEstateCurr = new RealEstate(tempd);
                    newone = RealEstateCurr;
                    cout << "Does the property have a building on it (Y/N)?" << endl;
                    cin >> buildchar;
                    if(buildchar == 'Y'||buildchar == 'y')
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


                }
                break;
                } //closes switch

            //Stays in the loop to continue investment
            cout << endl;
            cout << "Enter a Number 1-3 to set up a Investment Portfolio. Else hit 9 to exit: "<< endl;
            cin >> tempt;
            if(tempt == 9)
                {
                    return 0;
                }
            while (tempt < 1 || tempt > 3)
                {
                    cout << "Please enter a new number: " << endl;
                    cin >> tempt;
                    if(tempt == 9)
                        {
                            return 0;
                        }

                }
        }//closes loop
    return 0;
}// closes program
