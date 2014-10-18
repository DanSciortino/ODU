#include <iostream>
#include <string>
#include <iomanip>

using namespace std;
#include "modifier.h"
#include "spell.h"

int main()
{

    Spell S;

    string name = " ";
    string description = " ";
    bool up = false;
    bool off = false;
    bool feat = false;
    int tempi = 0;

    cout << "Name of the spell:" << endl;
    getline(cin,name);
    S.setname(name);
    cout << endl;

    cout << "Descibe the spell:" << endl;
    getline(cin, description);
    S.setdecrip(description);
    cout << endl;

    cout << "Upkeep?(0/1):";
    cin >> up;
    S.setup(up);
    cout << endl;

    cout << "Offensive?(0/1):";
    cin >> off;
    S.setoff(off);
    cout << endl;

    cout << "Has the feature been used?(0/1):";
    cin >> feat;
    S.setfeat(feat);
    cout  << endl;


    S.setModEffects(tempi);

    cout << endl;
    S.setSpellStat();

    S.displaySpellStat();

    return 0;
}
