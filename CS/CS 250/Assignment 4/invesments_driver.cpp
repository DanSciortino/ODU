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
//    Building *BuildingCurr = NULL;

    //Misc Variables
    int tempt = 0;
    int tempi = 0;
    ifstream inFile("collections.txt",ios::in);

    //Error Handling for bad file
    if (inFile.fail())
        {
            cout << "Could not read input file!" << endl;
        }

    //Setting up while loop and reading from file
    inFile >> tempt;
    while (!inFile.eof())
        {
            inFile >> tempi;
            switch(tempt)
                {
                    /*
                case 0:
                {
                BuildingCurr = new Building(tempi);
                newone = BuildingCurr;
                }break;
*/
                case 1:
                {
                StockCurr = new Stock(tempi);
                newone = StockCurr;
                }break;

                case 2:
                {
                RealEstateCurr = new RealEstate(tempi);
                newone = RealEstateCurr;
                }break;

                case 3:
                {
                CollectionCurr = new Collection(tempi);
                newone = CollectionCurr;
                }break;

                /*case 4:
                {
                BuildingCurr = new Building(tempi);
                newone = BuildingCurr;
                }break;*/ //Maybe not needed

                } //closes switch
            inFile >> tempt;
        }//closes loop
  inFile.close();
    return 0;
}// closes program
