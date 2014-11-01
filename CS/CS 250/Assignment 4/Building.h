class Building
{
public:
    Building(int i)
    {
        SquareFeet = i;
        Type = 0;
    }
    void setSquareFeet(int s)
    {
        SquareFeet = s;
    }
    int getSquareFeet()
    {
        return SquareFeet;
    }
    void display()
    {
        cout << "The Building has" << SquareFeet << endl;
    }
private:
    int Type;
    int SquareFeet;
};