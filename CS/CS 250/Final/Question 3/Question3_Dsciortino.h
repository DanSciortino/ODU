class Fish
{
public:
///Constructor
    Fish()
    {
        ID = 10000;
        Weight = 0.0;
        Month = 01;
        Day = 0;
        Year = 1900;
        Location = 'A';
        Next = NULL;
    }
///Setters
    void SetID(int I)
    {
        ID = I;
    }
    void SetWeight(double W)
    {
        Weight = W;
    }
    void SetMonth(int M)
    {
        Month = M;
    }
    void SetDay(int D){Day = D;}
    void SetYear(int Y)
    {
        Year = Y;
    }
///Getters
    int GetID()
    {
        return ID;
    }
    double GetWeight()
    {
        return Weight;
    }
    int GetMonth()
    {
        return Month;
    }
    int GetDay(){return Day;}
    int GetYear()
    {
        return Year;
    }
    char GetLocation()
    {
        return Location;
    }

///Galactus Destroyer of Worlds
    ~Fish();

///Displays
void Display(){ cout << " Fish ID " << ID << " Weight "
                    << Weight << " , Caught "<< Month
                    << " " << Day<< " " << Year
                    << " At Location " << Location << endl;}
void ShowAll(){Display();
if(Next != NULL){Next -> ShowAll();}}

private:
    Fish * Next;
    int ID;
    double Weight;
    int Month;
    int Day;
    int Year;
    char Location;
};


void DisplayMenu(){
cout << "Select an option" << endl;
cout << "(1) Report a Fish caught" << endl;
cout << "(2) Display all caught Fish" << endl;
cout << "(3) Search for a specific Fish" << endl;
cout << "(4) Show This Menu" << endl;
cout << "(5) Quit the Application" << endl;
cout << "Enter a Number 1-5" << endl;
}
