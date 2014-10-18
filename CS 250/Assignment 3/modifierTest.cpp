#include <iostream>
#include <string>
#include <iomanip>

using namespace std;
#include "modifier.h"

int main()
{
    int tempe = 0; //holds temp effects
    cout << "Enter Speed, Strength, Melee, Range, Defense, Armor, and Command" << endl;
    modifier * m = NULL;
    modifier * curr = NULL;

    if (m == NULL)
    {
        m = new modifier();

            m -> seteffects(tempe);
        curr = m;
    }


    cout << "Speed" << setw(10)
         << "Strength" << setw(10)
         << "Melee" << setw(10)
         << "Range"  << setw(10)
         << "Defense"  << setw(10)
         << "Armor"  << setw(10)
         << "Command" << endl;

    m -> showall();
    return 0;
}
