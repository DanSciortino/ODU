class Investments
{
public:
    Investments()
    {
        type = 0;
        cost = 0;
        value = 0;
    }

    ~Investments() {}

    //Setters
    void setCost(double c)
    {
        cost = c;
    }

    void setValue(double v)
    {
        value = v;
    }

    //Getters
    double getCost()
    {
        return cost;
    }

    double getValue()
    {
        return value;
    }

    int getType()
    {
        return type;
    }

    void display()
    {
        cout << "Cost: " << cost << endl;
        cout << "Value: " << value << endl;
    }

protected:
    int type;
    double cost;
    double value;
};

class Stock:public Investments
{
public:
    Stock() {};

protected:
};

class RealEstate:public Investments
{
public:
    RealEstate()
    {
        squareFeet = 0;
    }

    void setSquareFeet(int s)
    {
        squareFeet = s;
    }

    int getSquareFeet()
    {
        return squareFeet;
    }
private:
    int squareFeet;
};

class Collection:public Investments
{
public:
    Collection() {};
    void setName(string n)
    {
        name = n;
    }

    string getName()
    {
        return name;
    }
protected:
    string name;
};
