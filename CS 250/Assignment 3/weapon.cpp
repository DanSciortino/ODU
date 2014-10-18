#include <iostream>
#include <string>
#include <iomanip>

using namespace std;
#include "modifier.h"
#include "weapon.h"

int main()
{
    string name = " ";
    string describe = " ";
    int tempi = 0;

    weapon w;

    cout << "Name the weapon:" << endl;
    getline(cin,name);
    w.setname(name);

    cout << "Describe the weapon:" << endl;
    getline(cin,describe);
    w.setdecrip(describe);

    cout << endl;

    w.setModEffects(tempi);
    w.display();

    return 0;
}
