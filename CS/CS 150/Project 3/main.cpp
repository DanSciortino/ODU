//Programmer : Daniel Sciortino
//Date       :  6 Nov 2013
//Lab        :  Project 3 CRN 10714
//Description: encoding a message with a shift 2 caesar cipher

#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>
#include <ctime>
#include <iomanip>
#include <string>
#include <cstdlib>
#include <algorithm>

using namespace std;

//Constant Declarations
const int W_WIDTH = 80; ///< Width of the terminal window

//Forward Declarations - Function Prototypes

///
/// Utility Function to read a value from an input stream ( any type with a operator>> defined ) - non-interactive
///
template<class T>
bool readValue( istream &in_stream, T &value_in);

///
/// Utility Function to read a value from an input stream - interactive
///
template<class T>
bool readValue( istream &in_stream, T &value_in, string message, int width=34 );

///
/// Print a horizontal line
///
void printHorizontalLine( ostream& outs, char line_char, int width );

///
/// Print a centered heading
///
void printHeading( string title, int width );

///
/// Print the stylized program/project heading
///
void printProjectHeading( ostream& outs, int width );

///
/// Apply the caesar cipher
///
char caesarShift( char to_shift, int shift_value);

///
/// Print the encode and decode selection menu
///
void printMenu();

///
/// Read the shift value from the keyboard
///
int readShiftValue();

///
/// Main Function
///
int main()
{
    fstream in_file;            ///< Input File Stream
    fstream out_file;           ///< Output File Stream

    string input_filename;      ///< Input File Name
    string output_filename;     ///< Output File Name

    string line;                ///< String to store each line

    int shift_value;            ///< Shift Value for caesar Cipher

    char choice       = '\0';   ///< User menu selection
    char current_char = '\0';   ///< Current character to be processed

    //Print the program heading
    printProjectHeading( cout, W_WIDTH);

    // Read the input and output file names
    readValue( cin, input_filename,  "Read from which file? ");
    readValue( cin, output_filename, "Write to which file? ");

    //Open the filestreams
    in_file.open( input_filename.c_str(), ios::in );
    out_file.open( output_filename.c_str(), ios::out );

    //Validate the filestreams
    if( in_file.fail() )
    {
        cerr << "Input file is invalid.\n";
        return 1;
    }

    if( out_file.fail() )
    {
        cerr << "Output file is invalid.\n";
        return 2;
    }

    //Read the Shift "Key" Value
    shift_value = readShiftValue( );

    //Display the Encode Decode Selection Menu
    printMenu();

    //Read the User Selection and convert to uppercase
    readValue( cin, choice, "Select an Option: " );
    choice = toupper( choice );

    while (choice != 'E' && choice != 'D')    ///Checks if the value is correct
    {                                         /// clear cin
        cin.clear();
        cerr << "Invalid operation type\t";
        cout << "Re-enter a selection: ";
        cin >> choice;                          /// asks for the next input value
        choice = toupper(choice);               /// changes the choice to upper case and starts the loop over if need be
    }

    //Validate the user selection
    //D     - decode - reverse the shift direction
    //E     - encode - no addional logic
    //other - error and quit
    if( choice == 'D' )
    {
        shift_value = -1 * ( shift_value );
    }

    //read each line of the file
    while(  !in_file.eof() )
    {
        //Read the line
        getline( in_file, line );

        //Iterate through each character in the line string
        for( int i = 0; i < line.length(); i++ )
        {
            //Retrieve the i-th character from the string
            //MODIFY the following line
            //Hint: array subscripts - line[ some # ]
            current_char = line [ i ];                  /// gets the ith letter in the line

            //Convert the line to uppercase
            current_char = toupper( current_char );
            //If the character is in the range A to Z, apply the caesar shift
            //otherwise output the character unmodified
            if( current_char >= 'A' && current_char <= 'Z' )
            {
                out_file << caesarShift( current_char, shift_value );
            }
            else
            {
                out_file << current_char;
            }
        }

        //If the current line is not the last, output a newline character
        // MODIFY - Do not output an extra newline at the end of the file
        out_file << "\n";

    }

    //Close the input and output files
    in_file.close();
    out_file.close();

}

///
///
///
template<class T>
bool readValue( istream &in_stream, T &value_in)
{
    in_stream >> value_in;

    //Return False on read error
    return in_stream.good();
}

///
///
///
template<class T>
bool readValue( istream &in_stream, T &value_in, string message, int width )
{
    cout << left << setw( width ) << message << ": ";

    return readValue( in_stream, value_in );
}

///
///
///
void printHorizontalLine( ostream& outs, char line_char, int width )
{
    outs << setfill( line_char ) << left << setw( width ) << line_char << "\n";
    //reset outs fill
    outs.fill( ' ' );
}

///
///
///
void printHeading( string title, int width )
{
    //Declare Variables
    int magic_width = 0;

    magic_width =  (width/2) - (title.length()/2) + title.length();

    cout << "\n"
         << left  << setfill('*') << setw( width ) << "*" << "\n"
         << right << setfill(' ') << setw( magic_width ) << title << "\n"
         << left  << setfill('*') << setw( width ) << "*" << "\n";

    //reset cout
    cout.clear();
    cout.fill(' ');
}

///
/// COMPLETE THIS FUNCTION
///
void printProjectHeading( ostream& outs, int width )
{
    //Variable Declarations
    int length = width / 2;

    //Output the top line
    printHorizontalLine( outs, '*', width );
    //Output the title text
    cout << right << setfill(' ') << setw( length ) << "Daniel Sciortino" << endl;
    cout  << right << setfill(' ') << setw( length ) << "Oct 30 2013" << endl;
    cout << right << setfill(' ') << setw( length ) << "Project 3" << endl;
    cout << right << setfill(' ') << setw( length ) << "CRN 10714" << endl;
    //output the bottom line
    printHorizontalLine( outs, '*', width );
}

///
/// COMPLETE THIS FUNCTION
///
int readShiftValue()
{
    int shift_value = 0;

    //Read the value
    readValue( cin, shift_value, "Enter a shift value");

    //Validate the shift value - must be in the range 1 to 25 including 1 and 25
    while(shift_value > 25 || shift_value < 1)
    {
        cerr << "The input must be between 1 and 25 : ";
        cin >> shift_value;

    }
    return shift_value;
}

///
/// COMPLETE THIS FUNCTION
///
void printMenu()
{
    //Print the Menu Heading
    printHeading( "Operations Menu", W_WIDTH);

    //Print the Menu
    cout << "Press 'E' to encode." << endl;
    cout << "Press 'D' to decode." << endl;

}

///
/// COMPLETE THIS FUNCTION
///
char caesarShift( char to_shift, int shift_value)
{
    char result_char;  ///< resulting char
    if  ( to_shift >= 'A' && to_shift <= 'Z' )
    {
        result_char = '@' + ((shift_value - 'A' + to_shift) % 26);
    }
    if ( result_char == '@')                                      /// runs the charcter through the algorithm  to shift
    {                                                             /// for some reason the algortim wasnot handling the value 'y' after the shirt
        result_char = 'Z';                                        ///made a if loop to catch it. in test it worked to encode and decode it properly
    }

    return result_char;
}
