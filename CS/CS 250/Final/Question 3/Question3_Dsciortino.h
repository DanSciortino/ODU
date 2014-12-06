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

    Fish(int I, double D, int M, int d, int Y, char L)
    {
        ID = I;
        Weight = D;
        Month = M;
        Day = d;
        Year = Y;
        Location = L;
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
    void SetDay(int D)
    {
        Day = D;
    }
    void SetYear(int Y)
    {
        Year = Y;
    }
    void SetLocation(char L)
    {
        Location = L;
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
    int GetDay()
    {
        return Day;
    }
    int GetYear()
    {
        return Year;
    }
    char GetLocation()
    {
        return Location;
    }

    ///Galactus Destroyer of Worlds
    ~Fish(){};

    ///Displays
    void Display()
    {
        cout << "Fish ID " << ID << " Weight "
             << Weight << " , Caught " << Month
             << " " << Day << " " << Year
             << " At Location " << Location << endl;
    }
    void ShowAll()
    {
        Display();
        if (Next != NULL)
        {
            Next -> ShowAll();
        }
        cout << endl;
    }

    ///I dont even know how to function
    void MakeNew()
    {
        Next = new Fish();
    }
    Fish *GetNext()
    {
        return Next;
    }
    void SetNext(Fish * N)
    {
        Next = N;
    }

private:
    Fish * Next;
    int ID;
    double Weight;
    int Month;
    int Day;
    int Year;
    char Location;
};
