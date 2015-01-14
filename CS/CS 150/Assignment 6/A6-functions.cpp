#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>
#include <ctime>
#include <iomanip>
#include <string>
#include <cstdlib>

using namespace std;

#include "A6-functions.h"

string generateRoundTitle( int round_num ){
     stringstream magic;
     
     magic << "Round " << round_num;
     
     return (magic.str());     
}

void printHeading( string title, int width ){
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
     
     //VOID functions do NOT return a value
}

string readPlayerName( int message_width ){
     //Declare Variables
     string player_name = "John Smith";
     
     //Prompt for Player Name
     cout << left << setw( message_width ) << "Enter your name:";
     getline( cin, player_name );
     
     //Pass the Read Name back to the calling function
     return player_name;
}

char readYesNo(){
     //Declare Variables
     char input = '\0';
     
     //User Prompt
     cout << "\nWould you like to play again? (y/n): ";
     cin >> input;
     
     cin.ignore( 100, '\n' );
     
     //return input
     return input;
}

double readVelocityComponent( string message, int message_width ){
     //Declare Variables
     double value_to_read = 0;
     
     //Prompt for the value
     cout << left << setw( message_width ) << message;
     cin >> value_to_read;
     
     //return the read value
     return value_to_read;
}

double placeTarget( int lower, int upper ){
     //Declare Variables
     double position;
     
     //Generate a Random Number in the range [ lower, upper )
     position = ( ((double) rand()) / RAND_MAX ) * (upper - lower);
     position += lower;

     //Return the generated position
     return position;     
}

double calculateLandingPosition( double m_velocity, double e_velocity ){
     //Declare Variables
     double landing_position = 0;
     
     //Perform the calculation
     landing_position = ( pow( m_velocity, 2 ) * sin( 2 * e_velocity * PI / 180 ) ) / GRAVITY;
     
     //return the calculated landing position
     return landing_position;
}

bool isTargetDestroyed( double position_projectile, double position_target ){
     //Declare Variables
     bool target_hit = false;
     
     //Deterimine if the target was hit
     //Hint: if/else
     target_hit = ( fabs( position_projectile - position_target ) <= EFFECTIVE_RADIUS );   
     
     //return true if the target was hit and false otherwise
     return target_hit;
}


                         
void printVelocitySummary( double velocity_m, double velocity_e){
     
     cout << "\n"
          << left << setw( 20 ) << "Initial Speed:" << right << setw( 10 ) << velocity_m << " m/s\n"
          << left << setw( 20 ) << "Elevation: "    << right << setw( 10 ) << velocity_e << " deg\n";

     //VOID functions do NOT return a value   
}                         
                         

double calculateScore( int num_rounds, int num_hits ){
     //Declare variables
     double score = 0;
     
     //Calculate the score
     score = (  (double)num_hits ) / ( num_rounds );
     
     //return the calculated score
     return score;
}

void printScoreSummary( string player_name, int hits, int rounds){
     //Declare Variables
     double score = 0;
     
     //Calculate the score
     score = calculateScore(  rounds, hits );
     
     //Set cout Formatting
     cout.flags( ios::showpoint | ios::fixed );
     cout.precision(2);
     
     //Print the Summary
     cout << left << setw( 16 ) << "Name:"   << right << setw(20) << player_name << "\n"
          << left << setw( 16 ) << "Rounds:" << right << setw(20) << rounds << "\n"
          << left << setw( 16 ) << "Hits:"   << right << setw(20) << hits << "\n"
          << left << setw( 16 ) << "Score:"  << right << setw(20) << score << "\n";
     
     //VOID functions do NOT return a value
}