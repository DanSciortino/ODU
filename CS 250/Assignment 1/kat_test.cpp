//Standard libraries
#include <iostream>
#include <string>

using namespace std;

#include "kat.h"


int main()
{

kat minnows;

cout << "testing the default constructor" << endl;
minnows.display();


cout<<"Testing out the Setters"<<endl;
        minnows.setpurr("purrrrrrrrrrrrrr");
        minnows.setplay("*Rolls ball of yarn angrly*");
        minnows.setsleep("ZZZzzzzZZZzzzZZzzz");
        minnows.setmuffins("ouch, ouch, ouch");
        minnows.seteat("munch munch mmmmm. munch munch ");


cout << endl << "Making sure the setters work and the display() fuction works\n";
    minnows.display();


cout << "\nMaking sure the getters work"<<endl;

        cout << minnows.getpurr() << endl;
        cout << minnows.getplay() << endl;
        cout << minnows.getsleep() << endl;
        cout << minnows.getmuffins() << endl;
        cout << minnows.geteat() << endl;


    return 0;
}
