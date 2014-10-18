#include <iostream>
#include <string>

using namespace std;
#include "modifier.h"

int main()
{

    modifier * m = NULL;
    modifier * curr = NULL;

    cout << "speed  strength    melee   range   defense armor   command";

    m -> showall();
    return 0;
}
