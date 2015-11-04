#include <iostream>

using namespace std;


void func(int& x, int& y);

int main(){

int a = 3, b = 8, c = 5, d = 3;


func(a,b);
cout << a << " " << b << endl;

func(c,d);
cout << c << " " << d << endl;


return 0;
}

void func(int& x, int& y){
if( x < y)
	x = 2 * y;
else
	y = 3 * x;
}

