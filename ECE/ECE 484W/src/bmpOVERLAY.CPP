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

	///************************Original******************************
	/*
	* Variable declaration
	*/
	ifstream inFile("./data/test1.bmp", ios::binary | ios::in);
	vector<unsigned char> OriginalVector;
	vector<unsigned char> OriginalVectorHeader;
	vector<unsigned char> VectorOutput;

	/*
	* File error checking
	*/
	if(!inFile.is_open())
	{
		cout << "File is Not Open" << endl;
		return 1;
	}

	/*
	* Reading the input file buffer then resizing the vector to hold the data.
	*/
	filebuf *buf =inFile.rdbuf();
	size_t size = buf->pubseekoff(0,inFile.end,inFile.in);

	OriginalVector.resize(size);
	inFile.seekg(0, std::ios_base::beg);
  	inFile.read((char *)(&OriginalVector[0]), size);

  	stripVector(OriginalVector, OriginalVectorHeader);

  	///************************Overlay******************************
	/*
	* Variable declaration
	*/
	ifstream inFile2("./data/test3.bmp", ios::binary | ios::in);
	vector<unsigned char> OverlayVector;
	vector<unsigned char> OverlayVectorHeader;

	/*
	* File error checking
	*/
	if(!inFile2.is_open())
  	{
		cout << "File is Not Open" << endl;
		return 2;
	}

	/*
	* Reading the input file buffer to resizing the vector to hold the data
	*/
	filebuf *buf2 =inFile2.rdbuf();
	size_t size2 = buf->pubseekoff(0,inFile2.end,inFile2.in);

	OverlayVector.resize(size);
	inFile2.seekg(0, std::ios_base::beg);
  	inFile2.read((char*)(&OverlayVector[0]), size2);


  	cout << "\n\nOverlayVector\n\n\n";
  	stripVector(OverlayVector, OverlayVectorHeader);

  	overlay(OverlayVector, OverlayVectorHeader,
    OriginalVector, OriginalVectorHeader);

  	/*
  	* combine the modified vector that hasd the overlay image to to the header
  	* of the orginal image. tested with OverlayHeader and OrginalHeader
  	* They produce the same results
  	*/
  	combineVector(OriginalVectorHeader,OverlayVector,VectorOutput);
  	printVector(VectorOutput);

	inFile.close();
  	inFile2.close();

	return 0;
}
