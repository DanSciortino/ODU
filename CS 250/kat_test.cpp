//Standard libraries
#include <iostream>
#include <string>

using namespace std;

#include "kat.h"


int main()
{

kat minnows;


cout<<"testing constructor"<<endl;
        minnows.setpurr("purrrrrrrrrrrrrr");
        minnows.setplay("*Rolls ball of yarn angrly*");
        minnows.setsleep("ZZZzzzzZZZzzzZZzzz");
        minnows.setmuffins("ouch, ouch, ouch");
        minnows.seteat("munch munch mmmmm. munch munch ");


cout << endl << "testing display() and set functions\n";
    minnows.display();


cout << "\ntesting get functions"<<endl;

        cout << minnows.getpurr() << endl;
        cout << minnows.getplay() << endl;
        cout << minnows.getsleep() << endl;
        cout << minnows.getmuffins() << endl;
        cout << minnows.geteat() << endl;


    return 0;
}
