/*
CS 250 Daniel Sciortino
War Caster
Assignment 2
*/
#include <iostream>
#include <string>
#include <iomanip>

using namespace std;
#include "modifier.h"
#include "spell.h"
#include "weapon.h"
#include "warcaster.h"


int main()
{
    Warcaster kam(2); // Using alternate constructor to specify the number of weapons

    //Name
    string n = "Kovnik Andrei Malakov";

    //Weapon 1 Name and Desc
    string wName = "Hand Cannon";
    string wDesc = "It looks like a big gun";

    //Weapon 2 name and Desc
    string wName2 = "Mechanika Blade";
    string wDesc2 = "Magical Weapon";

    Spell * tempspl;  //temp spell
    tempspl = new Spell;
    //Spell 1 Name and Desc
    string sName = "Razor Wind";
    string sDesc = "A blade of wind slices through the target model";
    bool u = false;
    bool o = true;
    bool feat = false;
    int tempa[] = {2,10,0,12};
    tempspl -> setspellname(sName);
    tempspl -> setspelldesc(sDesc);
    tempspl -> setspellup(u);
    tempspl -> setspelloff(o);
    tempspl -> setspellfeat(feat);
    tempspl -> setspellstat(tempa);
    kam.addspell(tempspl);

    //Spell 2 Name and Desc
    string sName2 = "Redline";
    string sDesc2 = "Target warjack in this model�s battlegroup gains +2 STR and SPD and can run, charge, or make power attack slams or tramples without spending focus. When it ends its activation, it suffers d3 damage points";
    bool u2 = true;
    bool o2 = false;
    bool feat2 = false;
    int tempa2[] = {2,6,0,0};
    tempspl = new Spell;
    tempspl -> setspellname(sName2);
    tempspl -> setspelldesc(sDesc2);
    tempspl -> setspellup(u2);
    tempspl -> setspelloff(o2);
    tempspl -> setspellfeat(feat2);
    tempspl -> setspellstat(tempa2);
    kam.addspell(tempspl);

    // Variables needed to run
    int l = 0; //No life stats could be found
    int f = 4; // Focus
    Spell * curr = NULL;
    Spell * Magic = NULL;

    //Running code
    //Setting up the Warcaster
    kam.setname(n);
    cout << "Name: " << kam.getname() << endl;

    kam.setfocus(f);
    kam.setlife(l);
    cout << "Life: " << kam.getlife() << endl;
    cout << "Focus: " << kam.getfocus() << endl;
    cout << endl;

    //Setting weapon 1 And displaying it
    kam.set_war_weapon(0,wName,wDesc);
    kam.weaponDisplay(0);

    //Setting weapon 2 And displaying it
    kam.set_war_weapon(1,wName2,wDesc2);
    kam.weaponDisplay(1);
    cout << endl;

    // Showing the spell
    kam.spellDisplay();

    cout << endl;
    return 0;
}
