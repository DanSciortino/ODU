/*
Create a linkable class fish, each fish has an id number, an x, y, and z location. Allow the user to enter the number
of fish and then have the code generate a random x, y, z position. Then give each fish a position with random +-
10% changes to the x, y, z of the first fish, thus creating a school. Display the info for the school to the screen.
*/

#include <iostream>
#include <stdlib.h>
#include <math.h>

using namespace std;

#include "Question2_Dsciortino.h"

int main()
{
    ///Variables
    int Number = 0;
    Fish *Curr = NULL;
    Fish *School = NULL;
    int TempX;
    int TempY;
    int TempZ;


    ///Code to Run
    cout << "How many Fish in the school?" << endl;
    cin >> Number;

    for(int i = 0; i < Number; i++)
    {
        TempX = rand() % 20 + 0;
        if (TempX > 10)
        {
            TempX = ceil(TempX) / 2;
        }
        else{
            TempX = TempX / 2;

        }
        TempY = rand() % 20 + 0;
        TempZ = rand() % 20 + 0;

        if(School == NULL)
        {
            School = new Fish;
            School -> SetID(i);
            School->SetX(TempX);
            School->SetY(TempY);
            School->SetZ(TempZ);
            Curr = School;
        }
        else
        {
            Curr -> MakeNew();
            Curr = Curr -> GetNext();
            Curr -> SetID(i);
            Curr -> SetX(TempX);
            Curr -> SetY(TempY);
            Curr -> SetZ(TempZ);
        }
    }

    School -> ShowAll();

    return 0;
}
