#include <iostream>
#include <string>
#include <iomanip>

using namespace std;
#include "modifier.h"
#include "weapon.h"
#include "spell.h"

int main()
{
    weapon w;
    spell s;

    string name;
    string weaponName;
    string description = " ";
    char yesNo = ' ';
    bool up = false;
    bool off = false;
    bool feat = false;
    int tempi = 0;
    string describe = " ";

    cout << "Make a Person:" << endl;
    getline(cin,name);

    cout << "Name of the spell:" << endl;
    getline(cin,name);
    s.setname(name);
    cout << endl;

    cout << "Descibe the spell:" << endl;
    getline(cin, description);
    s.setdecrip(description);
    cout << endl;

    cout << "Upkeep?(0/1):";
    cin >> up;
    s.setup(up);
    cout << endl;

    cout << "Offensive?(0/1):";
    cin >> off;
    s.setoff(off);
    cout << endl;

    cout << "Has the feature been used?(0/1):";
    cin >> feat;
    s.setfeat(feat);
    cout  << endl;

    s.setModEffects(tempi);

    cout << endl;
    s.setSpellStat();

    s.displaySpellStat();

    cout << endl;
    cin.ignore();

    cout << "Name the weapon:" << endl;
    getline(cin,weaponName);
    w.setname(weaponName);

    cout << "Describe the weapon:" << endl;
    getline(cin,describe);
    w.setdecrip(describe);


    s.displaySpellStat();


    s.ShowModEffects();


    w.display();

    return 0;
}
