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
    int tempt;
    ifstream inFile("items.txt",ios::in);
    if (inFile.fail())
        {
            cout << "Could not read input file!" << endl;
        }

    inFile >> tempt;
    while (!inFile.eof())
        {
            switch(tempt)
                {
                case 0:
                {
                    cout << "Hi" << endl;

                };
                case 1:
                {
                    cout << "Hi" << endl;
                };
                case 2:
                {
                    cout << "Hi" << endl;
                };
                case 3:
                {
                    cout << "Hi" << endl;
                };
                case 4:
                {
                    cout << "Hi" << endl;
                };
                } //closes switch
        }//closes loop
    return 0;
}// closes program
