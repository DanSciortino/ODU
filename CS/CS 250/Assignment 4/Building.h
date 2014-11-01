class Building
{
public:
    Building(double d)
    {
        SquareFeet = d;
        Type = 0;
    }
    void setSquareFeet(double d)
    {
        SquareFeet = d;
    }
    double getSquareFeet()
    {
        return SquareFeet;
    }
    void display()
    {
        cout << "The Building has" << SquareFeet << endl;
    }
private:
    int Type;
    double SquareFeet;
};