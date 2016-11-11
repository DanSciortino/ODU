#include <iostream>
using namespace std;

int main()
{
    int op, rs, rt, rd, shamt, func;
    while(1)
    {
       cout << "op > ";    cin >> op;
    cout << "rs > ";    cin >> rs;
    cout << "rt > ";    cin >> rt;
    cout << "rd > ";    cin >> rd;
    cout << "shamt > ";    cin >> shamt;
    cout << "func > ";    cin >> func;

    unsigned int result = (op << 26) + (rs << 21) + (rt << 16) + (rd << 11) + (shamt << 6) + func;
    cout << endl;
    cout <<"RESULT: "<<result << endl;
    cout << endl;
    }


}
