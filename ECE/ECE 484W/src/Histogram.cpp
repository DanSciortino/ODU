/*
Pseudocode

Image[] // Array that contains image data (assumed to be grey scale)
Histogram[] // Array to store histogram
CumulativeHist[] // Array to store cumulative histogram

for i = 1 to size(Image) // Step over all the pixels in the image
 Histogram[Image[i]] = Histogram[Image[i]] + 1 // Build histogram
end
CumulativeHist[0]= Histogram[0]
for i = 1 to 255
 CumulativeHist[i]= CumulativeHist[i-1]+ Histogram[i] // Build cumulative histogram
end
for i = 1 to size(Image)
 Image[i] = (CumulativeHist[image[i]]/size(Image))*255 // Perform Histogram Equalisation
end
*/

/*
Have array one dimensional. between 0 and 225 pixel intensity
data vector or array
*/


#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include <cmath>
#include <bitset>

using namespace std;

#include "functions.h"


void histogram (vector<char>& Vector, vector<char>& VectorHeader, vector<int>&HVector);

void cumhistogram (vector<int>& HVector, vector<int>& CVector);

void equalize (vector<char>& Vector, vector<char>& VectorHeader, vector<int>& HVector, vector<int>& CVector);



int main(int argc, char **argv)
{

	/*
	* Variable decleration
	*/
	ifstream inFile("./data/test1.bmp", ios::binary | ios::in);
	vector<char> Vector;
	vector<int> HVector (256,0);      // Histogram
	vector<char> VectorHeader;
	vector<char> VectorOutput;
	vector<int> CVector (256,0);

	/*
	* File error checking
	*/
	if(!inFile.is_open())
	{
		cout << "File is Not Open" << endl;
	}

	/*
	* Reading the input file buffer to resizing the vector to hold the data
	*/
	filebuf *buf =inFile.rdbuf();
	size_t size = buf->pubseekoff(0,inFile.end,inFile.in);

	Vector.resize(size);
	inFile.seekg(0, std::ios_base::beg);
    inFile.read(&Vector[0], size);

    stripVector(Vector, VectorHeader);


    histogram(Vector, VectorHeader, HVector);

    cumhistogram(HVector, CVector);

    equalize(Vector, VectorHeader, HVector, CVector);

    combineVector(VectorHeader, Vector, VectorOutput);

    printHistogramVector(VectorOutput);

    inFile.close();






   return 0;
}



void histogram(vector<char>& Vector, vector<char>& VectorHeader, vector<int>&HVector)
{

    unsigned int Height = *(int*)&VectorHeader[22];
    unsigned int Width = *(int*)&VectorHeader[18];

    unsigned int imgSize = Height * Width;

    cout<< "Height: " << Height << "\n" << Width << "\n";
    cout << imgSize << "\n\n";

        //Compute the Histogram of the image
		for (int i = 0; i < imgSize; i++)
			{

				HVector[Vector[i]]++;

			}
	//Output the histogram to the console
	for(int i =0; i < 256; i++)
	{

		cout<< "HVector: "<< i << " " << HVector[i] << "\n";

	}

cout << "\n\n\n";

}

void cumhistogram (vector<int>& HVector, vector<int>& CVector)
{
	//the first element of cumulative histogram should always match first element of relative histtogram

	CVector[0] = HVector[0];

	/*
	CVector[1] = abs((int)HVector[1]) + abs((int)CVector[0]);

	cout << abs((int)HVector[1]) << "\n\n";

	*/

//Calculate remainig values of cumulative histogram.
	for(int i = 1; i < 256; i++)
	{
		CVector[i] = HVector[i] + CVector[i-1];

	}


//Output Cumulative Histogram to ensure correctness.

	for(int i =0; i < 256; i++)
	{

		cout<< "CVector: "<< i << ",  " << CVector[i] << "\n";

	}

}


void equalize (vector<char>& Vector, vector<char>& VectorHeader, vector<int>& HVector, vector<int>& CVector)
{


  unsigned int Height = *(int*)&VectorHeader[22];
  unsigned int Width = *(int*)&VectorHeader[18];

  unsigned int imgSize = Height * Width;

    //Equaliuze orginal histogram based upon cumulative histogram
    for(int i = 0; i < imgSize; i++)
    {

    	Vector[i] = (CVector[Vector[i]/imgSize]) * 255;


    }



}














