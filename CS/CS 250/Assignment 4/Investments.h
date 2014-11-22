class Investments
{
public:
    Investments()
    {
        Type = 0;
        Cost = 0;
        Value = 0;
        Next = NULL;
    }
    Investments(double d1, double d2)
    {
        Type = 0;
        Cost = d1;
        Value = d2;
        Next = NULL;
    }

    ~Investments() {}

    //Setters
    void setCost(double c)
    {
        Cost = c;
    }

    void setValue(double v)
    {
        Value = v;
    }

    //Getters
    double getCost()
    {
        return Cost;
    }

    double getValue()
    {
        return Value;
    }

    int getType()
    {
        return Type;
    }
    Investments *getNext()
    
    {
        return Next;
    }

    void InvestDisplay()
    {
        cout << "Cost: " << Cost << endl;
        cout << "Value: " << Value << endl;
    }

protected:
    Investments *Next;
    int Type;
    double Cost;
    double Value;
};

class Stock: public Investments //Type = 1
{
public:
    Stock()
    {
        Type = 1;
    }
    Stock(string s)
    {
        Ticker = s;
        Type = 1;
    }

    void setTicker(string t)
    {
        Ticker = t;
    }
    string getTicker()
    {
        return Ticker;
    }
    void StockDisplay()
    {
        cout << "You have stock with: " << Ticker << endl;

    }
private:
    string Ticker;
};

class RealEstate: public Investments //Type = 2
{
public:
    RealEstate()
    {
        Acres = 0;
        Type = 2;
    }
    RealEstate(double d)
    {
        Acres = d;
        Type = 2;
    }
    void setAcres(int s)
    {
        Acres = s;
    }

    int getSquareFeet()
    {
        return Acres;
    }
    void makeBuild(double s)
    {
        myBuild = new Building(s);
    }
    void RealEDisplay()
    {
        cout << "Your Real Estate has " << Acres << " on it.";

    }

private:
    int Acres;
    Building *myBuild;
};

class Collection: public Investments //Type = 3
{
public:
    Collection()
    {

        Name = ' ';
        Type = 3;
        Next = NULL;
    };

    Collection(string s)
    {

        Name = s ;
        Type = 3;
        Next = NULL;
    };

    void setName(string n)
    {
        Name = n;
    }

    string getName()
    {
        return Name;
    }
    void CollectDisplay()
    {
        cout << "You Collect " << Name << endl;
    }

private:
    string Name;
};

class Item: public Investments
{
public:
    Item()
    {

        Name = " ";
        Type = 4;
    }

    Item(string s)
    {
        Name = s;
        Type = 4;
    }

    void setName(string s)
    {
        Name = s;
    }

    string getName()
    {
        return Name;
    }
    void ItemDisplay()
    {
        cout << "In your Collection you have " << Name << endl;
    }
private:
    Item *Next;
    string Name;
    int Type;
};
