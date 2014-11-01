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

    void display()
    {
        cout << "Cost: " << Cost << endl;
        cout << "Value: " << Value << endl;
    }

protected:
    Investments * Next;
    int Type;
    double Cost;
    double Value;
};

class Stock:public Investments //Type = 1
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
private:
    string Ticker;
};

class RealEstate:public Investments //Type = 2
{
public:
    RealEstate()
    {
        Acres = 0;
        Type = 2;
        myBuild = NULL;
    }
    RealEstate(int i)
    {
        Acres = i;
        Type = 2;
    }

    void setAcres(int s)
    {
        Acres = s;
    }

    int getAcres()
    {
        return Acres;
    }
    void makeBuild(int s){
    myBuild = new Building(s);}

private:
    int  Acres;
    Building * myBuild;
};

class Collection:public Investments //Type = 3
{
public:
    Collection()
    {

        Name = ' ';
        Type = 3;
    };

    Collection(string s)
    {

        Name = s ;
        Type = 3;
    };

    void setName(string n)
    {
        Name = n;
    }

    string getName()
    {
        return Name;
    }

private:
    string Name;
};
