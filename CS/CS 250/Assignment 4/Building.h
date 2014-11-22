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
    void BuildDisplay()
    {
        cout << "  The Building has " << SquareFeet << " square feet." << endl;
    }
private:
    int Type;
    double SquareFeet;
};