//Programmer : Daniel Sciortino
//Date       : 7 Nov 2013
//Lab        : Assignment 8 CRN
//Description: Assignment 8 generates a call list for for a sales team

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

//Global Constants

const int NUMBER_CUSTOMERS = 10;    //Number of customers per billing file
const double CABLE_PRICE = 49.99;   //Statically defined price
const double PREMIUM_PRICE = 15.95; //Statically defined rate for premium channels
const int PAGE_WIDTH = 70;          //Width of screen for functions

//Forward Declarations

///
/// Customer data structure for customer array
///
struct Customer
{
    // complete the customer struct by defining the remaining data elements
    string lName;
    string fname ;
    int ID ;
    string phonenum ;
    int numofchannel ;
};

///
/// Print a customer row in the table. || You will need to complete this fuction.
///
void printCustomerRow( Customer c );

///
/// Print the heading for the customer table || Given
///
void printCustomerHeading();

///
/// Generate a Stylized Heading
///
void printHeading( ostream& outs, string title, int width );


///
/// Reorder the array of customers by Last Name || Given || modified from Wikipedia
///
void selectionSortCustomers( Customer array[], int arraySize );


int main()
{

    //Variable Declarations
    string filename = " ";
    double avgrev = 0.00;
    double avgprechannel = 0.00;



    //Declare an array of customers. Hint: Use a struct.
    new Customer[ NUMBER_CUSTOMERS ];

    //Initialize array of customers
    for (int i = 0; i < NUMBER_CUSTOMERS; i++)
    {
        Customer person = {};

    }

    // customer data file, input stream
    fstream inFile;
    //Get the name of a file from the user
    cout << "Enter the customer data file name: ";
    cin >> filename;
    cout << endl;
    //Open the file
    inFile.open(filename.c_str());

    //Validate the file opened.
    if (inFile.fail())
    {
        for (int i = 0; i < 80; i++ )
        {
            cout << '*';
        }

        cout << setw(40) << "Unable to open " << filename  << endl;

        for (int i = 0; i < 80; i++ )
        {
            cout << '*';
        }
        return 1;
    }

    if (inFile.good())
    {
        for (int i = 0; i < 80; i++ )
        {
            cout << '*';
        }

        cout << setw(40) <<"Billing data: " << filename << endl;

        for (int i = 0; i < 80; i++ )
        {
            cout << '*';
        }
    }

    //Read in the data for each of the 10 customers.
    //Calculate customer balance

    printCustomerHeading();
    /*
    OH No!
    a wild elephant appears. i cant do the rest of the program.



                                _,.---""----.,_
                             .-' __.----...---.;
                           .'  .'               `'.
                          /  .'                    '.
                         /  /                  `'",  `\
                       .'_,' ,"`                       `'.
                      /,'                       .-.       \
                    .'        .-.              /___\  (  . `,
                   /  .-'    /___\             |_  |   \  '. \
                  ;| /       |_  |             \_)_/   |    \ \
                  /| |   ;  _\_)_/             `   ,  /     |  \
                 / | |  /  ___   `  .-~`````~-. ,='   |     |  |
                ;  \ \ /.-'   `-._              |    /|     |  \
               .'``''--' _.-      `\            |  .'  \    |  |;
              /         ' _,        \           |-`|   |    |  ||
             /  /        /_\       /_\ .-~``~-. |  |   |   /   ||
            |  |         \(/       |(|          |  /   |   |   ||
           ,|  |        -~~`       ;`|   .---.  |  |   |   /   ||
        .-/ |  |    /        .-~`~  \|  (     '.|  /   ;--/    /|
       / /  |  \   |   -t-           | -~'-\    \  `--'  `-..-` ;
      |/|   /   \  |`._  \      -~` /       |    \             /
      /\|   | .--'  `\ `._`._      /        |-~` |            /
      \/\   '.____,.-'    `""`-._.'    ~-. /     /       .' .'
         \             .--._.-'`         .'`- _.'       (.-'
          |           (       ,    ',_.-'`"""`          |
          \   \     .-'  '-;---;..--'  /,----.y         |
     jgs  |    '.   `.__,-'    /       |      |         |
          |     |`-.,__,    Y  |       |      |         |
          |  == | =|   |    |  |- ~ -. |      | .- ~ -. |
          |     |  |   | == | =|~ - ~` |      | '~ - ~' |
         /.-.-.-\-.-\  |    |  |       |      |         |
         `""""""`""""`/.-.-.-\-.\-.-.-.-\    /.-.-.-.-.-.\
                      `"""""""`""`-------'   '------------'
    */



///well you got this far heres why it doesn't do what it shoud do
///Though the assigbnment was due friday adn not no








    //Close the input file
    inFile.close();



    //Print the list of customers in the order it was provided.
    //Hint: Use a function








    //Calculate running sum for average revenue
    //Calculate running sum for average number of premium channels







    //Calculate averages
    avgprechannel += avgprechannel / NUMBER_CUSTOMERS;



    //Print a summary of data
    for (int i = 0; i < 80; i++ )
    {
        cout << '*';
    }

    cout << right << setw(40) << "Billing Summary" << endl;

    for (int i = 0; i < 80; i++ )
    {
        cout << '*';
    }

    cout << "Average Premium Channels per Channel: \t" << avgprechannel;
    cout << "\n";
    cout << "Average Revenue per Customer: \t" << avgrev << endl;





    //Reorder the list of customers by last name
    selectionSortCustomers(Customer,NUMBER_CUSTOMERS);



    //Print a subset of the customers in alphabetical order by last name.
    //Only print the customers whose # of premium channels is < the average
    //Hint: Use the same function

    for (int i = 0; i < 80; i++ )
    {
        cout << '*';
    }

    cout << right << setw(40) << "\nSales Calls: Premium Subscribers" << endl;

    for (int i = 0; i < 80; i++ )
    {
        cout << '*';
    }
    cout << endl;
    printCustomerHeading();





    return 0;
}


void printCustomerRow(Customer c)
{
    //Hint: I have given you working setw values.
    int width = 12;
    cout << "   ";


    cout.unsetf(ios::fixed);
}


///
/// Trust, you don't need to modify anything below this line.
///

void printCustomerHeading()
{
    int width = 12;
    cout << left
         << setw(width) << "Last Name"
         << setw(width) << "First Name"
         << setw(width - 4) << "ID"
         << setw(width + 2) << "Phone"
         << setw(width) << "Premiums"
         << setw(width) << "Balance"
         << endl;
}


void printHeading(  ostream& outs, string title, int width )
{

    //Declare Variables
    int magic_width = 0;

    magic_width =  (width/2) - (title.length()/2) + title.length();

    outs << "\n"
         << left  << setfill('*') << setw( width ) << "*" << "\n"
         << right << setfill(' ') << setw( magic_width ) << title << "\n"
         << left  << setfill('*') << setw( width ) << "*" << "\n";

    //reset cout
    outs.clear();
    outs.fill(' ');

    //VOID functions do NOT return a value
}

// Modified selection sort from Wikipedia

// This fuction works. Don't break it.
void selectionSortCustomers( Customer c[], int arraySize )
{
    /* array[0] to a[n-1] is the array to sort */
    int i,j;    //Initialized in loop
    int iMin;   //Initialized in loop

    /* advance the position through the entire array */
    /*   (could do j < n-1 because single element is also min element) */
    for (j = 0; j < arraySize - 1; j++)
    {
        /* find the min element in the unsorted a[j .. n-1] */
        /* assume the min is the first element */

        iMin = j;

        /* test against elements after j to find the smallest */
        for ( i = j + 1; i < arraySize; i++)
        {
            /* if this element is less, then it is the new minimum */
            if (c[i].lName < c[iMin].lName)
            {
                /* found new minimum; remember its index */
                iMin = i;
            }
        }
        /* iMin is the index of the minimum element. Swap it with the current position */
        if ( iMin != j )
        {
            swap( c[j], c[iMin] );
        }
    }
}
