//Name: Daniel Sciortino
//CS 150 - Grade Summary
//Calculate the average of a set of grades and
//determine letter grades, maximum, minimum and the range

#include <iostream>
#include <iomanip>
#include <fstream>
#include <cstdlib>
#include <cmath>

using namespace std;

//
//FORWARD DECLARATIONS
//
char getLetterGrade( double grade_in );
double findMin( const double grades[], int arraySize );
double findMax( const double grades[], int arraySize );
void printRange( double minimum, double maximum );


int main()
{
    //Variable Declarations
    ///initialize all the variables not the first two
    double grade_input=0;     //used to store one item of user input (error checking)

    double overall_avg = 0; //the average total grade

    char letter_overall_avg;  //the letter overall average grade

    double minimum; //the minimum grade

    double maximum; //the maximum grade

    int num_grades = 0;     //the number of input grades

    char letter_grade;      //the letter grade

    //set cout flags
    cout.flags(ios::right | ios::showpoint | ios::fixed);
    cout.precision(2);

    //create the array of size 6
    double grades [6] = {0,0,0,0,0,0};


    //print out the name and assignment number and date
    ///fill this part
    cout <<"\n****************cs-150-fall-2013****************\n\n";
    cout <<" Programmer's Name: Daniel Sciortino       \n";
    cout <<" Assignment Number: Assignment 7          \n";
    cout <<" Date:  30 Oct 2013                   \n";
    cout <<"\n************************************************\n";



    //loop until the user enters 6 grades
    while( num_grades < 6 )
    {
        cout<<"\nEnter your grade for assignment # "<< num_grades+1<< " [0-100]: ";
        cin >> grade_input;

        if( (grade_input < 0) || (grade_input > 100) )
        {
            cout<<"Invalid entry: grade ignored.\n";
        }

        else
        {
            num_grades++;
            //store the grades in the array
            ///fill this last line, store the grades that the user enter, inside the correct array
            grades [ num_grades - 1 ] = grade_input;
        }
    }
//output the summary
    cout<<endl;
    cout<<"********************SUMMARY*********************\n";

    cout<<"     LETTER"<<setw(13)<<"NUMERICAL"<<"\n";
    for( int i = 0; i < num_grades; i++ )
    {
        //Call the getLetterGrade function
        letter_grade = getLetterGrade( grades[i] );

        //store this grade in the running total
        overall_avg += grades[i];

        //print this row of the summary
        cout<<" # "<<i+1<<": "<<"("<<letter_grade<<")"<<setw(11)<<grades[i]<<"\n";
    }
    //divide the running total by the number of grades

    overall_avg /= num_grades; //get the numerical overall average grade

    /// write this function call

    getLetterGrade(grades[6]);

    letter_overall_avg = getLetterGrade(grades[6]);
    //get the letter overall average grade

    cout<<"************************************************\n"
        <<"AVERAGE: "
        <<overall_avg<<" ("<< letter_overall_avg <<")\n\n";

    /// write this function call
    //get the minimum grade
    minimum = findMin(grades,6);
    cout<<"************************************************\n"
        <<"MINIMUM: "
        <<minimum<<"\n\n";

    /// write this function call
    maximum = findMax(grades,6);
    //get the maximum grade

    cout<<"************************************************\n"
        <<"MAXIMUM: "
        <<maximum<<"\n\n";

    cout<<"************************************************\n"
        <<"RANGE: ";
    /// write this function call
    printRange(minimum,maximum);
    //get the range of the grades
    return 0;
}

//
//A function to find the minimum grade
//
///fill the findmin function completely
double findMin( const double grades[], int ArraySize )
{
    double minimum = grades[0];
    for(int i = 0; i < ArraySize; i++)
    {
        if( minimum > grades[i] )
        {
            minimum = grades[i];
        }
    }

    return minimum;
}

//
//A function to find the maximum grade
//
double findMax( const double grades[], int arraySize )
{

    double maximum = grades[0];
    for(int i = 0; i < arraySize; i++)
    {
        if( maximum < grades[i] )
        {
            maximum = grades[i];
        }
    }

    return maximum;

}

//
//A function to set letter grades to numerical grades
//
char getLetterGrade( double grade_in )
{

    char letter_grade ='\0';

///fill getLetterGrade function completely

    if (grade_in <= 100 && grade_in >= 90)
    {
        letter_grade = 'A';
    }
    else if (grade_in <= 89 && grade_in >= 80)
    {
        letter_grade = 'B';
    }
    else if (grade_in <= 79 && grade_in >= 70)
    {
        letter_grade = 'C';
    }
    else if (grade_in <= 69 && grade_in >= 60)
    {
        letter_grade = 'D';
    }
    else if (grade_in <= 59 && grade_in >= 00)
    {
        letter_grade = 'F';
    }
///
    return letter_grade;
}


void printRange( double minimum, double maximum )
{
    // returns the range value of the array
/// fill this last line
    cout << " ( " << minimum << " , " << maximum << " )\n" << endl;
}
