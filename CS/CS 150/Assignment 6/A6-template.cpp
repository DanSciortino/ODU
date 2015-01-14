//Programmer : Daniel Sciortino
//Date       : 17 Oct 2013
//Lab        : Lab 6
//Description: User defined functions

#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>
#include <ctime>
#include <iomanip>
#include <string>
#include <cstdlib>

using namespace std;

//Include our header
#include "A6-functions.h"

//Additional Constants

//Bounds - projectile elevation
const double MIN_ELEVATION  = 0;          //Minimum angle
const double MAX_ELEVATION  = 90;         //Maximum angle

//Bounds - projectile speed
const double MIN_SPEED      = 9;          // lowest allowed spped
const double MAX_SPEED      = 29979245.8; // 10% the speed of light

const double MATH_E         = 2.71828;    // math constant e

const int MAGIC_RANDOM_SEED = 42;         // seed number for the random number generator

//Additional Forward Declarations

///
/// Output a summary of the round
///
void printRoundSummary( double position_projectile, double position_target,
                        double velocity_m, double velocity_e, bool target_destroyed,
                        int &hits, int target_attempts );

///
/// Output "over" if the projectile went too far
/// output "under" if the projectile did not go far enough
///
string overUnder( double distance );

///
/// Calculate the altitude height the projectile reached
///
double calcMaxHeight( double velocity_m, double velocity_e );

///
/// Calculate player accuracy
/// 1 / # of attempts to hit the target
///
void printAccuracy( int attempts );

///
/// Validate user input. If the number is not in ( min, max )
/// prompt the user to enter another value. Repeat until a valid value is entered
///
void validateMinMax( double& to_validate, double min, double max );

///
/// Our good friend the main function - DO NOT MODIFY
///
int main(){
     //Variable Declarations
     string player_name         = "John";//Player Name
     char replay                = '\0';  //Y/N Entered by the user

     int rounds                 = 0;     //Number of times the user played
     int hits                   = 0;     //Number of times the target was destroyed

     int target_attempts        = 0;     //Number of attempts to hit the current target

     double position_cannon     = 0;     //Position of the cannon
     double position_target     = 0;     //Position of the target

     double position_projectile = 0;     //Location of impact

     double velocity_m    = 0;           //Magnitude of Velocity
     double velocity_e    = 0;           //Angle of Elevation

     bool target_destroyed = true;      //True of the target was hit
                                         //False otherwise

     //Seed the random number generator
     srand( MAGIC_RANDOM_SEED );

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

               //reset the attempts
               target_attempts = 0;
          }

          //Output a round Heading
          printHeading( generateRoundTitle( ++rounds ) , 60 );

          //Output a target position message
          cout << left << "The target is located "<< position_target << " meters away.\n\n";

          //Prompt the user for velocity
          velocity_m = readVelocityComponent( "Enter the launch speed (m/s):", 30 );
          validateMinMax( velocity_m, MIN_SPEED, MAX_SPEED );

          velocity_e = readVelocityComponent( "Enter the angle of elevation:", 30 );
          validateMinMax( velocity_e, MIN_ELEVATION, MAX_ELEVATION );

          //Calculate the landing position of the projectile
          position_projectile = calculateLandingPosition( velocity_m, velocity_e);

          //Compare the resting position of the projectile to
          //the position of the target

          target_destroyed = isTargetDestroyed( position_projectile, position_target );

          //Update the number of attempts to hit the target
          target_attempts++;

          //Output a Summary of the round
          printRoundSummary( position_projectile, position_target, velocity_m,
                              velocity_e, target_destroyed, hits, target_attempts );

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

///
/// printRoundSummary - DO NOT MODIFY
///
void printRoundSummary( double position_projectile, double position_target,
                        double velocity_m, double velocity_e, bool target_destroyed,
                        int &hits, int target_attempts ){
     //Declare Variables
     double difference = 0; // difference between projectile position and target position
     string direction;      // direction of displacement

     //Perform calculations - direction and displacement
     difference = position_projectile - position_target;  // displacement
     direction  = " ( " + overUnder( difference ) + " )"; // string concatination
     difference = abs( difference );                      // distance is a scaler quantity

     //Perform Output
     cout << "\n"
          << left << setw( 20 ) << "Point of Impact:"    << right << setw( 10 ) << position_projectile                     << "\n"
          << left << setw( 20 ) << "Max Altitude: "      << right << setw( 10 ) << calcMaxHeight( velocity_m, velocity_e ) << "\n"
          << left << setw( 20 ) << "Position of Target:" << right << setw( 10 ) << position_target                         << "\n"
          << left << setw( 20 ) << "Difference:"         << right << setw( 10 ) << difference << direction                 << "\n"
          << left << setw( 20 ) << "Result:"             << right << setw( 10 ) ;

     //Output a hit or miss message
     //update number of hits
     if( target_destroyed ){
          cout << "Hit\n";

          //update the number of hits
          hits++;

          printAccuracy( target_attempts );
     }
     else{
          cout << "Miss\n";

          printVelocitySummary( velocity_m, velocity_e );
     }

     //VOID functions do NOT return a value
}

///
/// overUnder - return a string
///
string overUnder( double distance ){
        string final ="\0";
     //there should only be one return statement
    if (distance > 0){
    final = "Over";
    }
    if (distance < 0){
    final = "Under";
    }

     return final;
}

///
/// calcMaxHeight - calculate and return the max height
///
double calcMaxHeight( double velocity_m, double velocity_e ){

     //declare variables
     double theta = 0 ;
     double max_height = 0 ;

     //perform the calculations
     theta = ((velocity_e * PI)/180);
     max_height = pow( velocity_m , 2) * pow ( sin ( theta ) , 2 ) / ( 2 * GRAVITY ) ;

     return max_height;
}

///
/// printAccuracy - calculate and print the accuracy
///
void printAccuracy( int attempts ){
     //variable declarations
     int accuracy = 0;

     //compute accuracy
    accuracy = (1/attempts) * 100;
     //Output accuracy
     cout << left << setw(20) << "\nAccuracy:" << right << setw( 10 ) << accuracy << " %\n" ;
}

///
/// validateMaxMin - validate input and force the user to replace an invalid value
///
void validateMinMax( double& to_validate, double min, double max ){
     //This line is important
     cout << "\n";
     //write the loop to validate input
    while ((to_validate <= min) || (to_validate >= max)){
        cout << "ERROR: Enter a value between (" << min << " , " << max <<"): ";
        cin >> to_validate;
    }

     //VOID FUNCTION
}
