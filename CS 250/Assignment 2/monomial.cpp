#include <iostream>
#include <fstream>

using namespace std;
#include "monomial.h"

int main()
{
    fstream fin;
    fin.open("in.txt", ios::in);

    double tempcoeff = 0.00;
    int tempexp = 0;

    if (fin.fail()){
        cout << "File not open" << endl;
    }
    cout << tempcoeff << "x^" << tempexp << endl;
    cout << "File open" << endl;
    //monomial *Equation = NULL;
    //monomial *curr = NULL;

    fin >> tempcoeff;
    cout << "read tempcoeff" << endl;
    cout << tempcoeff << endl;
/*
    while (!fin.eof())
    {

        fin.ignore();
        fin >> tempexp;

        if (Equation == NULL)
        {
            Equation = new monomial(tempcoeff , tempexp);
        }
        else
        {
            curr -> newmono();

            curr = curr -> nextnode();
            curr -> setcoeff(tempcoeff);
            curr -> setexp(tempexp);
        }

        fin >> tempcoeff;
        cout << tempcoeff;
    }
*/
//    Equation -> showAll();

    return 0;
}
