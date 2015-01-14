#include <iostream>

using namespace std;

void Print(int &x);
void printanddec(int x);

int main()
{
	int somenumber = 9000;
	 int x = 1;

	 Print(somenumber);
	 printanddec(somenumber);
	 somenumber++;
	 cout<< somenumber<< endl;
	 cout<<x<<endl;
	 return 0;
}

void Print (int &x){
	cout << x << endl;
	x--;
}

void printanddec(int x){
	cout << x << endl;
	x--;
}


/*
This is an example of passing variables by value and by reference, also a little scope.


*/