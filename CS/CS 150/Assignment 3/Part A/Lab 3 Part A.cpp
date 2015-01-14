/*========================cs-150-fall-2013======================
  LAB 3
  Source file:
  Programmer : Daniel Sciortino
  Date       :
  Lab        :
  Description: using input files to compute movie ticket sales
  =============================================================*/

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

int main()
{
        //Step 1: Referencing your algorithm, declare and intialize
        //          the required variables to work with.
    string movieName ="";
    double adultTicketPrice =0.0;
    double childTicketPrice =0.0;
    int noOfAdultTicketsSold =0;
    int noOfChildTicketsSold =0;
    double percentDonation =0.0;
    double grossAmount =0.0;
    double grossadult =0.0;
    double grosschild =0.0;
    double amountDonated =0.0;
    double netSaleAmount =0.0;

    ifstream inFile;
    inFile.open("movieSales.txt");
    if(inFile.fail())
    {
        cout <<"\n=============== ERROR! ==================\n\n";
        cout <<"      Could Not Find Input Data File!\n";
        cout <<"\n=========================================\n\n\n";

        return 1;
    }
    cout << "============================="
    <<"\nCS150"
    <<"\nDaniel Sciortino"
    <<"\n=============================";


    getline(inFile,movieName);
    inFile  >> adultTicketPrice >> childTicketPrice
    >>noOfAdultTicketsSold >>noOfChildTicketsSold>>percentDonation;

    cout << "\n\nINPUT DATA";
    cout << setfill(' ') << left << setw(20) << "\nTitle of the movie: "
         << setfill(' ') << right << " "
         << setw(28) << movieName<< endl;
    cout << setfill(' ') << left << setw(20) << "Price of an adult ticket: "
         << setfill(' ') << right << " "
         << setw(19) << fixed << setprecision(2) << adultTicketPrice<< endl;
    cout << setfill(' ') << left << setw(20) << "Price of a child ticket: "
         << setfill(' ') << right << " "
         << setw(20) << fixed << setprecision(2) << childTicketPrice<< endl;
    cout << setfill(' ') << left << setw(20) << "Number of adult tickets sold: "
         << setfill(' ') << right << " "
         << setw(15) << noOfAdultTicketsSold<< endl;
    cout << setfill(' ') << left << setw(20) << "Number of Child tickets sold: "
         << setfill(' ') << right << " "
         << setw(15) << noOfChildTicketsSold<< endl;
    cout << setfill(' ') << left << setw(20) << "Charitable percent donated: "
         << setfill(' ') << right << " "
         << setw(17) << fixed << setprecision(2) << percentDonation<< endl;
                   //Step 15
    grossAmount = adultTicketPrice * noOfAdultTicketsSold +
                  childTicketPrice * noOfChildTicketsSold;

                   //Step 16
    amountDonated = grossAmount * percentDonation / 100;

    netSaleAmount = grossAmount - amountDonated;    //Step 17
           //Step 18: Output results
    cout <<"\n\n\nOUTPUT DATA\n";

    cout << setfill('.') << left << setw(35) << "\nTitle of the Movie : "
         << left << " " << movieName << endl;
    cout << left << setw(35) << "Number of Adult Tickets Sold: "
         << setfill(' ') << right << setw(10)
         << noOfAdultTicketsSold << endl;
    cout << left << setw(35) << "Number of Child Tickets Sold: "
         << setfill(' ') << right << setw(10)
         << noOfChildTicketsSold << endl;

//       Additional output: Gross Adult Revenue:
    grossadult = adultTicketPrice * noOfAdultTicketsSold;
//       Additional output: Gross Child Revenue:
    grosschild = childTicketPrice * noOfChildTicketsSold;
    cout << setfill('.') << left << setw(35)
         << "Percentage of Gross Amount Donated: "
         << setfill(' ') << right
         << setw(9) << percentDonation << '%' << endl;
    cout << setfill('.') << left << setw(35)
         << "Amount Donated: "
         << setfill(' ') << right << " $"
         << setw(8) << amountDonated << endl;
    cout << setfill('.') << left << setw(35) << "Gross Adult Rvenue "
         << setfill(' ') << right << " $"
         << setw(8) << grossadult << endl;
    cout << setfill('.') << left << setw(35) << "Gross Child Rvenue "
         << setfill(' ') << right << " $"
         << setw(8) << grosschild << endl;
    cout << setfill('.') << left << setw(35) << "Net Sale: "
         << setfill(' ') << right << " $"
         << setw(8) << netSaleAmount << endl;

    //close your input file
    inFile.close();

     return 0;
}
//--------------------------------------------------------------
