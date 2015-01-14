//Programmer : Daniel Sciortino
//Date       :2 Oct 2013
//Lab        : Lab #5
//Description: Projectile motion game with functions

#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>
#include <ctime>
#include <iomanip>
#include <string>
#include <cstdlib>

using namespace std;

//Constant Declarations
const double EFFECTIVE_RADIUS = 10.0; // effective radius of the projectile
const double GRAVITY          = 9.81; // 9.81 m/s^2
const double PI               = 3.14; // pi

//Forward Declarations (Function Prototypes)

///
/// Generate a Round string in the form "Round #"
///
string generateRoundTitle( int round_num );

///
/// Generate a Stylized Heading
///
void printHeading( string title, int width );

///
/// Prompt the user to enter his/her name
/// Return a string containing the entered name
///
string readPlayerName( int message_width );

///
/// Prompt the user to enter Y/N to continue
///
char readYesNo();

///
/// Read a Component of velocity
/// return the read component
///
double readVelocityComponent( string message, int message_width );

///
/// Generate a position for the target
///
double placeTarget( int lower, int upper );

///
///Calculate the landing position of the projectile
///
double calculateLandingPosition( double m_velocity, double e_velocity );

///
/// Deterimine if the projectile hit the target
/// Return True if the target was hit
/// Return False otherwise
///
bool isTargetDestroyed( double position_projectile, double position_target );


///
/// Output a summary of the round
///
void printRoundSummary( double position_projectile, double position_target,
                         double velocity_m, double velocity_e, bool target_destroyed,
                         int &hits );

///
/// Output a summary of the velocity
///
void printVelocitySummary( double velocity_m, double velocity_e);

///
/// Given the number of rounds and number of hits,
/// calculate and return the player score
///
double calculateScore( int num_rounds, int num_hits );

///
/// Print a score summary
///
void printScoreSummary( string player_name, int hits, int rounds);

///
/// Our good friend the main function
///
int main(){
     //Variable Declarations
     string player_name         = "John";//Player Name
     char replay                = '\0';  //Y/N Entered by the user

     int rounds                 = 0;     //Number of times the user played
     int hits                   = 0;     //Number of times the target was destroyed

     double position_cannon     = 0;     //Position of the cannon
     double position_target     = 0;     //Position of the target

     double position_projectile = 0;     //Location of impact

     double velocity_m    = 0;           //Magnitude of Velocity
     double velocity_e    = 0;           //Angle of Elevation

     bool target_destroyed = true;      //True of the target was hit
                                         //False otherwise

     //Seed the random number generator
     srand( time( NULL ) );

     //Print a Program Heading
     printHeading( "Projectile Motion", 60 );

     //Acquire Player Name
     player_name = readPlayerName( 30 );

     //Set the position of the Cannon
     position_cannon = 0; //this week, the cannon is also placed at x = 0

     //Set cout Formatting
     cout.flags( ios::showpoint | ios::fixed );
     cout.precision(2);

     //Continue until the player enters 'n' or 'N'
     while( replay != 'N' ){
          //Generate a new target position, if the player
          //hit the target in the previous round
          if( target_destroyed ){
               position_target = placeTarget( 0, 1000 );
          }

          //Output a round Heading
          printHeading( generateRoundTitle( ++rounds ) , 60 );

          //Output a target position message
          cout << left << "The target is located "<< position_target << " meters away.\n\n";

          //Prompt the user for velocity
          velocity_m = readVelocityComponent( "Enter the launch speed (m/s):", 30 );
          velocity_e = readVelocityComponent( "Enter the angle of elevation:", 30 );

          //Calculate the landing position of the projectile
          position_projectile = calculateLandingPosition( velocity_m, velocity_e);

          //Compare the resting position of the projectile to
          //the position of the target

          target_destroyed = isTargetDestroyed( position_projectile, position_target );

          //Output a Summary of the round
          printRoundSummary( position_projectile, position_target, velocity_m,
                              velocity_e, target_destroyed, hits );


          //Ask the user to continue
          replay = readYesNo();

          //Transform the User's Response a capital letter
          replay = toupper( replay );
     }

     //Print a summary
     printHeading( "Summary", 60);
     printScoreSummary( player_name, hits, rounds);

     return 0;
}

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
    cout << "Would you like to play again? (y/n): ";
    cin >> input;
    if(input=='y'||input=='Y'){


    }
     else{

     }
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

void printRoundSummary( double position_projectile, double position_target,
                        double velocity_m, double velocity_e, bool target_destroyed,
                        int &hits ){
     //Declare Variables
     double difference = 0; //Difference between projectile position and target position

     //Perform calculation
     difference = position_projectile - position_target;

     //Perform Output
     cout << "\n"
          << left << setw( 20 ) << "Point of Impact:"     << right << setw( 10 ) << position_projectile <<" m" << "\n"
          << left << setw( 20 ) << "Position of Target: " << right << setw(10) << position_target <<" m" << "\n"
          << left << setw( 20 ) << "Difference:"          << right << setw(10) << difference <<" m" << "\n"
          << left << setw( 20 ) << "Result:"              << right << setw( 10 ) ;

     //Output a hit or miss message
     //update number of hits
     if( target_destroyed ){
          cout << "Hit\n";

          hits++;
     }
     else{
          cout << "Miss\n";

          printVelocitySummary( velocity_m, velocity_e );
     }

     //VOID functions do NOT return a value
}

void printVelocitySummary( double velocity_m, double velocity_e){

     cout << "\n";
     cout <<left << setw(16) << "initial Speed:"<< right << setw(20) << velocity_m << " m/s\n";
     cout <<left << setw(16) << "Elevation:"<< right << setw(20) << velocity_e << " deg\n\n";

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
