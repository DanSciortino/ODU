/*
*Daniel Sciortino
*ODU CS 361 Assignment 4
*dsciorti@cs.odu.edu
*Write a program to check for balancing symbols in the following
*languages CPP -> (),{},[]
*/

#include <iostream>
#include <fstream>
#include <string>
#include <stack>
#include <sstream>

using namespace std;
#include "Functions.h"

int main()
{
    string FileName;
    fstream inFile;
    stringstream InputFile;

    cout << "Enter The file name to scan: ";
    cin >> FileName;

    inFile.open(FileName.c_str(),ios::in);
    if(inFile.fail())
    {
        cout << "File name invalid...Ending" << endl;
        return 1;
    }

    InputFile << inFile.rdbuf();
    string Text = InputFile.str();

    cout << Text;

    if (CheckSymbols(Text))
    {
        cout << "Symbols are balanced" << endl;
    }

    return 0;
}
