//Programmer : Daniel Scioritno
//Date       : Nov 13 2013
//Lab        : Assignment 9 CRN 10714
//Description: using linked list

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

const int W_WIDTH = 80; ///< Width of the terminal window

const int PROGRAMMER_INFORMATION_ITEMS = 4;                      ///< # Programmer Information Entries
const string PROGRAMMER_INFORMATION[]  = {  "Daniel Sciortino",
        "Assignment 9 CRN 10714",
        "A9-solution.cpp",
        "Ocean Depth Records"
                                         };  ///< Programmer Information
///
/// Node to serve as one element of the Linked List
///
template< class T >
struct Node
{
    T *data;    ///< Recorder to the data component
    Node *next; ///< Recorder to the next node
};

///
/// Linked list container
///
template <class T>
struct LinkedList
{
    Node<T> *head; ///< Recorder to the head node
    Node<T> *tail; ///< Recorder to the tail node

    int num_nodes; ///< Number of nodes in the linked list
};

///
/// Cartesian Coordinate (3-tuple)
///
struct Record
{
    double x; ///< x-component
    double y; ///< y-component
    double depth; ///< z-component (depth)
};

///
/// Initialize the linked list
///
template< class T >
void initializeList( LinkedList<T> *&to_init);

///
/// Add a node to the linked list
///
template< class T >
void addNode( LinkedList<T> *&list, T *&data_to_add );

///
/// Print a horizonal line
///
void printHorizontalLine( ostream& outs, char line_char, int width );

///
/// Print a Stylized Heading
///
void printHeading( ostream& outs, string title, int width );

///
/// Print the project heading
///
void printProjectHeading( ostream& outs, int width );

///
/// Delete the linked list
///
template <class T>
void deleteLinkedList( LinkedList<T> *&to_init);


///
/// Main Function
///
int main()
{
    LinkedList<Record> *record_list = NULL;///< Record List Recorder
    Record * to_add = NULL;                ///< New Record to add

    Node<Record> *list_iterator = NULL;    ///< Itertor to step throught the Linked List

    char again = '\0';                    ///< Continue input
    bool add_record = true;               ///< Flag - set to false when there are no more Records to be added


    double lowest_depth = 0;              ///< Lowest depth reading
    double highest_depth = -999999;       ///< Highest depth reading

    //Print the Project Heading
    printProjectHeading( cout, W_WIDTH );

    //initialize the linked list
    initializeList( record_list );

    //Read Records until the user enters 'N'
    while( add_record )
    {

        //Create a new Record
        to_add = new Record;

        //Prompt the user to enter x,y, and depth
        cout << "Enter Reading #" << ( record_list->num_nodes + 1 ) << ": ";

        //read the values into to_add
        cin >> to_add -> x >> to_add -> y >> to_add -> depth;

        //Add the node to the  Linked List
        addNode( record_list, to_add );

        //Prompt the user to enter another record
        cout << "Would you like to add another Record? (Y/N): ";
        cin >> again;

        add_record = ( toupper(again) == 'Y' );
    }

    //Loop 2: Find the lowest and highest depths
    list_iterator = record_list->head;

    //Continue until the list has been traversed
    while( list_iterator != NULL)
    {

        list_iterator = list_iterator->next;
    }

    //reset list_iterator to null
    list_iterator = NULL;

    //Ouput the list
    printHeading( cout, "Summary: Depth Readings", W_WIDTH);

    //Loop 3: output the list
    list_iterator = record_list->head;

    //Continue until the list has been traversed
    while( list_iterator != NULL)
    {
        //Output

        list_iterator = list_iterator->next;
    }

    //Output the extrema
    printHeading( cout, "Summary: Depth Reading Extrema", W_WIDTH);

    //Free formatting
    cout.flags( ios::fixed | ios::showpoint | ios::left );
    cout.precision(2);




    //Disassemble list
    deleteLinkedList( record_list );
}

///
///
///
template< class T >
void initializeList( LinkedList<T> *&to_init)
{

    to_init = new LinkedList<T>;

    to_init->num_nodes = 0;
    to_init->head = NULL;
    to_init->tail = NULL;
}

///
///
///
template< class T >
void addNode( LinkedList<T> *&list, T *&data_to_add )
{
    Node<T> *new_node = new Node<T>;

    new_node->data = data_to_add;
    new_node->next = NULL;

    data_to_add = NULL;

    //Handle the case where the first node is added
    if( list->num_nodes == 0)
    {
        list->head = list->tail = new_node;
    }
    else
    {
        //your code starts here



        //your code ends here
    }

    list->num_nodes++;

    new_node = NULL;
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
void printHeading(  ostream& outs, string title, int width )
{
    //Declare Variables
    int magic_width = 0;

    magic_width =  (width/2) - (title.length()/2) + title.length();

    outs << "\n";

    printHorizontalLine( outs, '*', width);
    outs << right << setfill(' ') << setw( magic_width ) << title << "\n";
    printHorizontalLine( outs, '*', width);

    //reset cout
    outs.clear();
    outs.fill(' ');
}

///
///
///
void printProjectHeading( ostream& outs, int width )
{
    //Variable Declarations
    int width_1 = 0;

    //Output the top line
    printHorizontalLine( outs, '*', width );

    //Output the title text
    for( int i = 0; i < PROGRAMMER_INFORMATION_ITEMS; i++ )
    {
        //Calculate the magic width for the ith line
        width_1 = ( width / 2 ) - ( PROGRAMMER_INFORMATION[ i ].length() / 2 )
                  + ( PROGRAMMER_INFORMATION[ i ].length() );
        outs << right << setw( width_1 ) << PROGRAMMER_INFORMATION[ i ] << "\n";
    }
    //output the bottom line
    printHorizontalLine( outs, '*', width );
}

///
/// Delete the linked list
///
template <class T>
void deleteLinkedList( LinkedList<T> *&to_init)
{
    Node<T> *list_iterator = NULL; ///< Loop control pointer
    Node<T> *to_delete     = NULL; ///< node to delete

    //start at the beginning of the list
    list_iterator = to_init->head;

    //iterate through the list and delete each node
    while( list_iterator->next != NULL  )
    {
        to_delete = list_iterator;

        //move to next node
        list_iterator = list_iterator->next;

        //delete the current node
        delete to_delete->data;
        delete to_delete;

        to_delete = NULL; //dangling pointers are bad
    }
    //delete the last node
    delete list_iterator->data;
    delete list_iterator;

    //reset all pointers in the list
    //reset counter to zero
    initializeList( to_init );

}


