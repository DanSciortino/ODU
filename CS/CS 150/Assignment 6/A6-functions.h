#ifndef A6_FUNCTIONS_INCLUDED
#define A6_FUNCTIONS_INCLUDED

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
/// Determine if the projectile hit the target
/// Return True if the target was hit
/// Return False otherwise
///
bool isTargetDestroyed( double position_projectile, double position_target );
                         
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

#endif