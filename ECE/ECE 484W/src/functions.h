/*
* ODU ECE 484W
* Image processing for BMP image
* Header for functions
*/


/*
*	Strips the Header from a vector bmp file. Then stores the data
*	the initial Vector and a different Vector Header
*	@param Main vector to strip header out of, Separate Vector for header
*	@return two vectors. one contain header information one that is the body of bmp
*/
void stripVector(vector<unsigned char>& Vector, vector<unsigned char>& VectorHeader){

    cout << "Vector initial size: " << Vector.size()  << endl;
	VectorHeader.insert(VectorHeader.end(),Vector.begin(),Vector.begin() + 58);

	cout << "Vector Size before erase and shrink: " << Vector.size() << endl;
	cout << "Vector Header size: " << VectorHeader.size() << endl;
	Vector.erase(Vector.begin(),Vector.begin()+58);
	Vector.shrink_to_fit();
	cout << "Vector Size after erase and shrink: " << Vector.size() << endl;
}


/*
*
*	Takes three vectors in and merges into the vector
*	@param first vector to take information from, second vector to take data from, destination to write the data to
*	@return a single combined vector
*
*/
void combineVector(vector<unsigned char>& VectorHeader, vector<unsigned char>& Vector, vector<unsigned char>& VectorOutput){

	VectorOutput.insert(VectorOutput.end(),VectorHeader.begin(),VectorHeader.end());
	VectorOutput.insert(VectorOutput.end(),Vector.begin(),Vector.end());
}


/*
*
*	Takes vector and prints to the outfile
*	@param The vector to print
*	@return prints passed vector to file
*
*/
void printVector(vector<unsigned char>& VectorOutput){
	ofstream outFile("./output/test1.bmp", ios::binary | ios::out);

	for(int i = 0; i < VectorOutput.size(); i++)
	{
		outFile << VectorOutput[i];
	}

	outFile.close();
}

/*
* Overlay function processes overlaying the overlay image onto the original
* @Param list:
*			Overlay Vector
*			Overlay Vector Header
*			Original Image Vector
*			Original Image Header
* @return void function modifies by reference
*
*/
void overlay(vector<unsigned char>& OverlayVector, vector<unsigned char>& OverlayVectorHeader,
    vector<unsigned char>& OriginalVector, vector<unsigned char>& OriginalVectorHeader)
{
    /*
    * Variable declaration for data that will be used
    */
    unsigned int OverlayH = *(int*)&OverlayVectorHeader[22];
    unsigned int OverlayW = *(int*)&OverlayVectorHeader[18];
    unsigned int OriginalH = *(int*)&OriginalVectorHeader[22];
    unsigned int OriginalW = *(int*)&OriginalVectorHeader[18];
    unsigned int colorTableOriginal = *(int*)&OriginalVectorHeader[46];
    unsigned int colorTableOverlay = *(int*)&OverlayVectorHeader[46];
    unsigned int imgSize = OverlayH * OverlayW;
    double alpha = .2;

    /*
    * File error checking
    * if loop quits if the files do not match
    */
    if (OriginalH != OverlayH || OriginalW != OverlayW)
    {
        cout << "Files are not the same size." << endl;
        return;
    }

    /*
    * for each pixel in the image if the current pixel in the
    * OverlayVector is not 0 move it from the Orginal to the overlay
    * if the OverlayVector curret value is 0 then pass that part through
    */
   for (int i = 0; i < imgSize; i++)
    {
        if (OverlayVector[i] != 0)
        {
            OverlayVector[i] = OriginalVector[i];
        }
        else
            OverlayVector[i] = 255;
    }
}

//Histogram Specific functionsn

void printHistogramVector(vector<unsigned char>& VectorOutput){
    ofstream outFile("./output/test2.bmp", ios::binary | ios::out);

    for(int i = 0; i < VectorOutput.size(); i++)
    {
        outFile << VectorOutput[i];
    }

    outFile.close();
}


void combineHistogramVector(vector<unsigned char>& VectorHeader, vector<int>& Vector, vector<unsigned char>& VectorOutput){

    VectorOutput.insert(VectorOutput.end(),VectorHeader.begin(),VectorHeader.end());
    VectorOutput.insert(VectorOutput.end(),Vector.begin(),Vector.end());
}









