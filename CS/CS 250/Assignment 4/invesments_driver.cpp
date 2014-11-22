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
    Investments *head = NULL;
    Investments *curr = NULL;
    Investments *newone = NULL;
    Stock *StockCurr = NULL;
    RealEstate *RealEstateCurr = NULL;
    Collection *CollectionCurr = NULL;
    Item *ItemCurr = NULL;

    //Misc Variables
    int tempt = 0;
    string input = " ";
    double tempd = 0.00;
    double tempd2 = 0.00;
    int tempi = 0;
    char buildchar = ' ';
    string CollectName = " ";
    char ItemAdd = ' ';
    bool looper = true;

    //Seed read with error catch if the value is out of bounds
    cout << "Enter a Number 1-4 to set up a Investment Portfolio. Else hit 9 to exit: " << endl;
    cin >> tempt;

    while (tempt < 1 || tempt > 4)
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
                    newone = StockCurr;
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
                    newone = RealEstateCurr;
                    cout << "Does the property have a building on it (Y/N)?" << endl;
                    cin >> buildchar;
                    if (buildchar == 'Y' || buildchar == 'y')
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
                    cin >> CollectName;
                    CollectionCurr = new Collection(CollectName);
                    newone = CollectionCurr;
                } break;

                case 4:
                {
                    cout << "What do you Items do you own: " << endl;
                    cin >> CollectName;
                    ItemCurr = new Item(CollectName);
                    newone = ItemCurr;
                }
                break;

                } //closes switch

            //Stays in the loop to continue investment
            cout << endl;
            cout << "Enter a Number 1-4 to set up a Investment Portfolio. Else hit 9 to exit: " << endl;
            cin >> tempt;
            if (tempt == 9)
                {
                    looper = false;
                }

            if(head == NULL)
                {
                    head = newone;
                }

            else
                {
                    curr = head;
                    while( curr -> GetNext() != NULL)
                        {
                            curr = curr->GetNext();
                        }
                    curr->SetNext(newone);
                }

        }//closes loop

        curr = head;

        cout << endl << endl;
        cout << "************ Your Investments ************"<< endl;

        while(curr != NULL)
            {
                tempt = curr -> GetType();

                switch(tempt)
                    {
                    case 1:
                    {
                        StockCurr = (Stock*)curr;
                        StockCurr -> StockDisplay();
                        StockCurr -> InvestDisplay();
                    }
                    break;

                    case 2:
                    {
                        RealEstateCurr = (RealEstate*)curr;
                        RealEstateCurr -> RealEDisplay();
                    }
                    break;

                    case 3:
                    {
                        CollectionCurr = (Collection*)curr;
                        CollectionCurr -> CollectDisplay();
                    }
                    break;

                    case 4:
                    {
                        ItemCurr = (Item*)curr;
                        ItemCurr -> ItemDisplay();
                    }
                    break;
                    }

                curr = curr->GetNext();
                 cout << endl;
            }

    return 0;
}// closes program
