class monomial
{
public:
    //Constructors
    monomial() {}; // default
    monomial(double c, int e)
    {
        coeff = c;
        exp = e;
        next = NULL;
    };


    //setters
    void setcoeff(double c)
    {
        coeff = c;
    }

    void setexp(int e )
    {
        exp = e;
    };

    void setequation()
    {
        double c;
        int e;

        cout << "What equation? ";
        coeff = c;
        exp = e;
    }

    void newmono()
    {
        next = new monomial();
    }

    //getters
    double getcoeff()
    {
        return coeff;
    }

    int getexp()
    {
        return exp;
    }

    monomial * getnextnode()
    {
        return next;
    }

    //display
    void display()
    {
        cout << coeff << "x^" << exp;
    }

    //Show all linkd list
    void showall()
    {

        display();
        if (next != NULL)
        {
            next -> showall();
        }
    }

    //destructor
    ~monomial() {};

private:
    double coeff;
    int exp
};