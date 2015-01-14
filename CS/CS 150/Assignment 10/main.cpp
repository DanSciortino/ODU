/* Programmer : Daniel Sciotino
*Lab : Assignment 10 CRN 10714
*Description : using a class
*
*/

#include <iostream>
#include <string>
#include <fstream>
#include <iomanip>

using namespace std;
const double pi = 3.1459;

void infileerror();
void heading();

int main()
{

    string ownername;
    double dogweight = 0;
    int daysin = 0;
    string inputfilename;
    int numofdogs = 0;
    int numofsmalldogs = 0;
    int numofmediumdogs = 0;
    int numoflargedogs = 0;
    int numofextralargedogs = 0;
    double totalrev = 0.00;
    double totalcost = 0.00;
    double price = 0.00;
    int distance = 0;

    fstream infile;
    cout << "Enter the file you would like to open:\t";
    cin >> inputfilename;

    heading();

    infile.open(inputfilename.c_str(),ios::in);
    if (infile.fail())
    {
        infileerror();
        return pi;
    };

    cout << "Dog Owner" << setw(20) << "Dog Weight" << setw(20) << "Number of Days" << setw(20) << "Total Cost" << endl;

    while(infile >> ownername >> dogweight >> daysin )
    {

        if(dogweight < 10)
        {
            numofsmalldogs++;
            price = 8.00;
            totalcost = price * daysin;
        }

        if(dogweight >= 10 and dogweight < 30)
        {
            numofmediumdogs++;
            price = 12.00;
            totalcost = price * daysin;
        }

        if(dogweight >= 30 and dogweight < 50)
        {
            numoflargedogs++;
            price = 18.00;
            totalcost = price * daysin;
        }

        if(dogweight >= 50)
        {
            numofextralargedogs++;
            price = 22.00;
            totalcost = price * daysin;
        }

        cout << left << fixed << setprecision(0) << ownername;
        cout << right << setw (19) << dogweight;
        cout << right << setw(19) << daysin;
        cout << right << setw(19) << setprecision(2) << "$" << totalcost << endl;

        totalrev += totalcost;
        numofdogs++;
    }

    cout << "\n\n\n";
    cout << "SUMMARY" << endl;
    cout << left << setw (35) << "Number of dogs:" << numofdogs << endl;
    cout << left << setw (35) << "Number of small dogs:" << numofsmalldogs << endl;
    cout << left << setw (35) << "Number of medium dogs:" << numofmediumdogs << endl;
    cout << left << setw (35) << "Number of large dogs:" << numoflargedogs << endl;
    cout << left << setw (35) << "Number of extra large dogs:" << numofextralargedogs << endl;
    cout << left << setw (35) << "Total revenue:" << "$" << totalrev << endl;

    infile.close();
    return 0;
}

void infileerror()
{
    cout << "********************************************************************************" << endl;
    cerr << setw(30) << "Invaild File name" << endl;
    cout << "********************************************************************************" << endl;
}

void heading()
{
    cout << "********************************************************************************" << endl;
    cout << setw(30) << "Daniel Sciortino" << endl;
    cout << setw(30) << "10 Oct 2013" << endl;
    cout << setw(30) << "3:00 to 5:30" << endl;
    cout << setw(30) << "CRN 10714" << endl;
    cout << "********************************************************************************" << endl;
}
