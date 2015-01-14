// Daniel Sciortino
// 17 Oct 2013
// Project 2
// File I/O with user defined functions
//

#include <iostream>
#include <iomanip>
#include <fstream>

using namespace std;

//Function prototypes
void initialize(int& zeroCount, int& oddCount, int& evenCount);
void getNumber(int& num);
void classifyNumber(int num, int& zeroCount, int& oddCount,
                    int& evenCount);
void printResults(int zeroCount, int oddCount, int evenCount);

ifstream inFile;

void inputErr();

//void userInfo(string username, int usercount);

int main ()
{
    string inputfile;
    string name;
    int number;  //variable to store the new number
    int zeros;   //variable to store the number of zeros
    int odds;    //variable to store the number of odd integers
    int evens;   //variable to store the number of even integers
    ifstream inFile;
    inFile.open(inputfile.c_str());
    int array[100];
    int index = 0;
    int count = 0;
    cout << "Enter the name of the input file(Input1.txt, Input2.txt): ";
    cin >> inputfile;

    inFile.open(inputfile.c_str());

    if(!inFile){
        inputErr;
    }

    getline(inFile,name);
    cerr << name;
    inFile >> number;
    while(!inFile.eof())
    {
        inFile >> number;
        array[index] = number;
        for(int counter  = 0; counter < array.sizeof(); counter++;)
        {
            classifyNumber(number,zeros,odds,evens);
        }
            if(inFile.eof())
                break;
        cerr << "the actual number" << number << endl;
    }
    cerr << number;

    initialize(zeros, odds, evens);                 //Step 1
    while (!inFile.eof())
    {
        if(false)
        {
            break;
        }

        classifyNumber(number, zeros, odds, evens);

    }
    cout << endl;

    printResults(zeros, odds, evens);               //Step 4

    inFile.close();
    return 0;
}

void initialize(int& zeroCount, int& oddCount, int& evenCount)
{
    zeroCount = 0;
    oddCount = 0;
    evenCount = 0;
}

void getNumber(int& num)
{
    cin >> num;
}

void classifyNumber(int num, int& zeroCount, int& oddCount,
                    int& evenCount)
{
    switch (num % 2)
    {
    case 0:
        evenCount++;
        if (num == 0)
            zeroCount++;
        break;
    case 1:
    case -1:
        oddCount++;
    } //end switch
} //end classifyNumber

void printResults(int zeroCount, int oddCount, int evenCount)
{
    cout << "There are " << evenCount << " evens, "
         << "which includes " << zeroCount << " zeros"
         << endl;

    cout << "The number of odd numbers is: " << oddCount
         << endl;

    cout << ""
} //end printResults

void inputErr()
{

    if(!inFile)
    {
        cout<<"\n\n\n****************************";
        cout<<"\nERROR!\tERROR\tERROR\tERROR\tERROR\tERROR";
        cout<<"|n|n|nInput file not found!\n\n";
        cout<<"   Exiting with error: Dan-00880032   ";
        cout<<"\n\n\n****************************";
        cout<<"\n\n\n\n\n\n";
    }
}
/*
void userInfo(inFile& username, inFile& usercount){
      cout <<"\n=======================================\n";
      cout << " Programmer : Daniel Scioritno\n";
      cout << " Date: October 2013\n";
      cout << " File Name: Scioritno_D_Prj2.cpp\n";
      cout <<"File User Name: "<<username<<"\nFile User Count: "<<usercount;
      cout<<"\n\n";

}
*/
