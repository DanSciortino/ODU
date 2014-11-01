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
    int tempi = 0;
    string input = "";

    cout << "Enter a Number 1-3 to set up a Investment Portfolio: "<< endl;
    cin >> tempt;
    while(tempt < 1 || tempt > 3)
    {
        cout << "Please enter a new number: " << endl;
        cin >> tempt;
    }
while(tempt){
    switch(tempt){
case 1:{}break;
case 2:{}break;
case 3:{}break;



}
    cout << "Enter a Number 1-3 to set up a Investment Portfolio: "<< endl;
    cin >> tempt;
    while(tempt < 1 || tempt > 3)
    {
        cout << "Please enter a new number: " << endl;
        cin >> tempt;
    }

}
    return 0;
}// closes program
