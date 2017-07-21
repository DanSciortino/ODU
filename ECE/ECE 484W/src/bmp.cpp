/*
* ODU ECE 484W
* Image processing for BMP image
* Functional test the classes
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>

using namespace std;

#include "functions.h"

int main(int argc, char **argv){

	/*
	* Variable declaration
	*/
	ifstream inFile("./data/test1.bmp", ios::binary | ios::in);
	vector<unsigned char> Vector;
	vector<unsigned char> VectorHeader;
	vector<unsigned char> VectorOutput;
	unsigned int Height = 0;
	unsigned int Width = 0;

	/*
	* File error checking
	*/
	if(!inFile.is_open()){
		cout << "File is Not Open" << endl;
	}

	/*
	* Reading the input file buffer to resizing the vector to hold the data
	*/
	filebuf *buf =inFile.rdbuf();
	size_t size = buf->pubseekoff(0,inFile.end,inFile.in);

	Vector.resize(size);
	inFile.seekg(0, std::ios_base::beg);
    inFile.read((char*)(&Vector[0]), size);

    stripVector(Vector, VectorHeader);

    Height = *(int*)&VectorHeader[22];
    Width = *(int*)&VectorHeader[18];
    cout << "Height: " << Height << endl;
    cout << "Width: " << Width << endl;


    combineVector(VectorHeader,Vector,VectorOutput);
    printVector(VectorOutput);

	inFile.close();

	return 0;
}
