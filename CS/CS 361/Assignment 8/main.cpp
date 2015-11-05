/*
 * Daniel Sciortino
 * dsciorti@cs.odu.edu
 * CS 361
 * Assignment 8 - Bubble sort
 * Implementing a Bubble sort function that passes a vector
 * as a parameter
 * FillVector function was made that has a random number generator
 * fills the vector that is 20 large with  random numbers 1 - 100
 * PrintVector outputs the Vector with cout
 */

#include <iostream>		//cout
#include <stdlib.h>		//rand()
#include <vector>		//vector<>, .size()

using namespace std;

#include "Functions.h"

int main() {
	vector<int> MyVec;

	FillVector(MyVec);

	BubbleSort(MyVec);

	PrintVector(MyVec);

	return 0;
}
