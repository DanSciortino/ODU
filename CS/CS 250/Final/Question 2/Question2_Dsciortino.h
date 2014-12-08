class Fish
{
public:
    Fish()
    {
        ID = 0;
        X = 0;
        Y = 0;
        Z = 0;
        Next = NULL;
    }
///Setting It UP
    void SetID(int I)
    {
        ID = I;
    }
    void SetX(int x)
    {
        X = x;
    }
    void SetY(int y)
    {
        Y = y;
    }
    void SetZ(int z)
    {
        Z = z;
    }
///Heres a Shovel Can you get it
    int GetID()
    {
        return ID;
    }
    int GetX()
    {
        return X;
    }
    int GetY()
    {
        return Y;
    }
    int GetZ()
    {
        return Z;
    }
///Hulk Smash
    ~Fish() {};

///Function Junction
    void MakeNew()
    {
        Next = new Fish;
    }
    Fish * GetNext()
    {
        return Next;
    }

///Can you see me?
    void Display()
    {
        cout << "Fish " << ID << " At" << " ( " << X << " , "<< Y << " , "<< Z <<" )" << endl;
    }

    void ShowAll()
    {
        Display();
        if(Next != NULL)
        {
            Next -> ShowAll();
        }
    }

private:
    int ID;
    int X;
    int Y;
    int Z;
    Fish *Next;

};
