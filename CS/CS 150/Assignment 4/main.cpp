
#include <iostream>
#include <iomanip>
#include <fstream>

using namespace std;

//Named constants residential customers
const double RES_BILL_PROC_FEES = 4.50;
const double RES_BASIC_SERV_COST = 20.50;
const double RES_COST_PREM_CHANNEL = 7.50;

//Named constants business customers
const double BUS_BILL_PROC_FEES = 15.00;
const double BUS_BASIC_SERV_COST = 75.00;
const double BUS_BASIC_CONN_COST = 5.00;
const double BUS_COST_PREM_CHANNEL = 50.00;

int main()
{
   //Variable declaration and intialization
    int accountNumber;
    char customerType;
    int numOfPremChannels;
    int numOfBasicServConn;
    double amountDue;

    //declaring file streams
    ifstream inFile;
    ofstream outFile;

    //open the file streams
    inFile.open("input.txt");
    outFile.open("output.txt");

    //check wheather file exists or not


    cout <<"\n==========================================\n\n";
    cout <<"     PROGRAM TO COMPUTE THE CABLE BILL\n";
    cout <<"\n==========================================\n\n";

     //use while loop to get the acoount numbers and customer type from the file
     //Hint:use eof (end of file)

    outFile << setfill('*') << fixed << setw(20) <<'*';
    outFile << setfill(' ') << setw(5) <<"\nCUSTOMER DETAILS" <<(' ');
    outFile << "\n" << setfill('*') <<fixed << setw(20) <<'*';
    outFile << "\n";

    inFile>> accountNumber;

while(!inFile.eof()){
        if(false){
                break;}
    cout<< "\nThe account number is: ";
    cout<<accountNumber<<"\n";
    inFile>>  customerType;
    cout << "The customer type is: "<< customerType <<"\n";
    switch (customerType)
    {
        case 'r':
        case 'R':
            cout << "Enter the number"
                 << " of premium channels: ";
            cin >> numOfPremChannels;
            cout << "\n\n";

            amountDue = RES_BILL_PROC_FEES
                       + RES_BASIC_SERV_COST
                       + numOfPremChannels *
                         RES_COST_PREM_CHANNEL;
            //writing to a outputfile
            outFile << "\n\nAccount Number: " << accountNumber;
            outFile << setfill(' ') << left << setw(17) << setprecision(2) << "\nAmount Due: " << amountDue;
            break;

        case 'b':
        case 'B':
            cout << "Enter the number of basic "
                 << "service connections: ";
            cin >> numOfBasicServConn;


            cout << "Enter the number"
                 << " of premium channels: ";
            cin >> numOfPremChannels;
            cout << "\n\n";

            if (numOfBasicServConn<= 10)
                amountDue = BUS_BILL_PROC_FEES
                            + BUS_BASIC_SERV_COST
                            + numOfPremChannels *
                              BUS_COST_PREM_CHANNEL;
            else
                amountDue = BUS_BILL_PROC_FEES
                            + BUS_BASIC_SERV_COST
                            + (numOfBasicServConn - 10) *
                               BUS_BASIC_CONN_COST
                            + numOfPremChannels *
                              BUS_COST_PREM_CHANNEL;

            //writing to an ouputfile
            outFile << "\n\nAccount Number: " << accountNumber;
            outFile << setfill(' ') << left << setw(17) << setprecision(2) << "\nAmount Due: " << amountDue;
            break;

        default:
            //writing to an outputfile
            outFile <<"\n\n";
            outFile << "The account number: " << accountNumber <<" has an invalid cutomertype";
            cout << "Account type is invalid" << "\n\n";

    }//end switch

inFile >> accountNumber;
}
    //close inputfile
inFile.close();
    //close outputfile
outFile.close();
    return 0;
}
