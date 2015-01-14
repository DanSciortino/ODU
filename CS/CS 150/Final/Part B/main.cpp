//Programmer : Daniel Sciortino
//Date       : 4 Dec 2013
//Lab        : Lab final vb part 2 CRN 10714
//Description: Completeing 8 functions with an input file

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

const int W_WIDTH     = 80; ///< Width of the terminal window

const int NUM_STUDENTS = 4;  ///< Number of Students
const int NUM_GRADES   = 4;  ///< NUmber of grades


struct Student
{
    string name_first; ///< First Name
    string name_last;  ///< Last Name
    int id;            ///< ID

    double grades[ NUM_GRADES ]; ///< Assignment Grades

    double gpa; ///< GPA
};

///
/// Print a horizontal line
///
void printHorizontalLine( std::ostream& outs, char line_char, int width );

///
/// Print the Heading for the student table
///
void printTableHeading();

///
/// Print programmer inforamtion
///
void printProgrammerInformation();

///
/// Initilize the Students Array
///
void initializeStudents( Student roster[] );

///
/// Read oe student from an input stream ( input file )
///
void readOneStudent( ifstream &in_file, Student &to_read );

///
/// Calculate one student's GPA
///
void calculateGPA( Student &to_process );

///
/// Print one student
///
void printTableRow( const Student &to_print );

///
/// Compute the lowest GPA
///
double computeLowestGPA( const Student roster[] );

int main()
{
    Student roster[ NUM_STUDENTS ]; ///< Array of Students
    string file_name;               ///< Input file name
    ifstream in_file;               ///< Input file stream

    //Initilialize the students array
    initializeStudents( roster );

    //Print Programmer Information
    printProgrammerInformation();

    //Prompt for an input file name
    cout << "Enter the filename: ";
    getline( cin, file_name);

    //Open the input file
    in_file.open( file_name.c_str() );

    //validate the input file
    if( in_file.fail() )
    {
        cerr << "File could not be opened.";
        return 1;
    }

    //MAIN FUNCTION MODIFICATION - 1
    //Read each student from the input file
    //Store the read student in the array
    for( int i = 0; i < NUM_STUDENTS; i++)
    {
        //Invoke the readOneStudent Function
        //Hint: pass one array element or store a temporary student
        readOneStudent(in_file, roster[i]);
        //Calculate the student's GPA
        calculateGPA( roster[i] );
    }

    //Output the student table heading
    cout << "\n";
    printHorizontalLine( cout, '-', 72);
    printTableHeading();
    printHorizontalLine( cout, '-', 72);


    //MAIN FUNCTION MODIFICATION - 2
    //Invoke the printTableRow function for each student
    for(int i = 0; i < NUM_STUDENTS; i++)
    {
        printTableRow(roster[i]);
    }

    //Output the bottom line of the table
    printHorizontalLine( cout, '-', 72);

    //MAIN FUNCTION MODIFICATION - 3
    //Set Output formatting to two decimal places
    cout << fixed << setprecision(2);

    cout << "\n"
         << "Lowest GPA: " << computeLowestGPA( roster )
         << "\n\n";

    //Close the input file
    in_file.close();

    return 0;
}

///
/// DO NOT MODIFY
///
void printHorizontalLine( std::ostream& outs, char line_char, int width )
{
    outs << std::setfill( line_char ) << std::left << std::setw( width ) << line_char << "\n";
    //reset outs fill
    outs.fill( ' ' );
}

///
/// DO NOT MODIFY
///
void printTableHeading()
{
    cout << left << setw(16) << "Last Name" << setw(16) << "First Name"
         << setw(8)  << "ID" << setw( 24 ) << "Grades" << right << setw(8) << "GPA"
         << left <<"\n";
}

///
/// MODIFY
///
void printProgrammerInformation()
{
    printHorizontalLine( cout, '*', W_WIDTH);

    //Modify the cout statement
    cout << "Programmer: Daniel Sciortino"   << "\n"
         << "Date      : 4 Dec 2013"    << "\n"
         << "Lab       : 10714" << "\n";
    //End your modifications here

    printHorizontalLine( cout, '*', W_WIDTH);
}

///
/// MODIFY
///
void initializeStudents( Student roster[] )
{
    for ( int i = 0; i < NUM_STUDENTS; i++ )
    {
        //Begin your modifications here

        roster[i].name_first = " ";
        roster[i].name_last = " ";
        roster[i].id = 0;
        roster[i].gpa = 0;
        //End your modifications here
        for( int j = 0; j < NUM_GRADES; j++)
        {
            roster[i].grades[j] = 0;
        }
    }
}

///
/// MODIFY
///
void readOneStudent( ifstream &in_file, Student &to_read )
{
    //Begin your modifications here

    in_file >> to_read.name_first >> to_read.name_last >> to_read.id;

    //End your modifications here

    //Read student grades from the input file
    for( int i = 0; i < NUM_GRADES; i++)
    {
        in_file >> to_read.grades[i];
    }
}

///
/// MODIFY
///
void calculateGPA( Student &to_process )
{
    double average = 0;
    double holder = 0;

    //Begin your modifications here
    for (int i=0; i<NUM_GRADES; i++)
    {
        holder = (holder + to_process.grades[i]);
        average = holder/4;
    }
    //End your modifications here

    //Do Not modify this line
    to_process.gpa = average / 25;
}

///
///
///
void printTableRow( const Student &to_print )
{

    //Output the last name, first name, and id of one student
    //Begin your modifications here

    cout << setw(16) << to_print.name_last << setw(16) << to_print.name_first<< setw(8) << to_print.id ;

    //End your modifications here

    //Output the student grades
    //Do not modify
    cout.flags( ios::right | ios::fixed | ios::showpoint );
    cout.precision(1);

    for( int i = 0; i < NUM_GRADES; i++)
    {
        cout << setw(6) << to_print.grades[i];
    }

    //Output the student GPA
    cout << setw(8) << to_print.gpa
         << "\n";

    cout.flags( ios::left );
}

///
///
///
double computeLowestGPA( const Student roster[] )
{
    double lowest_gpa = 100;

    //Compute the lowest GPA
    //Begin your modifications here
    for(int i = 0 ; i < NUM_STUDENTS ; i++)
    {
        if(roster[i].gpa< lowest_gpa)
        {
            lowest_gpa = roster[i].gpa;
        }
    }
    //End your modifications here

    //Return the lowest GPA
    return lowest_gpa;
}
