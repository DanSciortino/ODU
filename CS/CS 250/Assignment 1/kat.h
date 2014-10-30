class kat
{
public:

//default constructor
    kat()
    {
        purr = " ";
        play = " ";
        sleep = " ";
        muffins = "";
        eat = " ";
    }

//alternate constructor
    kat(string prr, string ply, string sl, string muff, string et)
    {
        purr = prr;
        play = ply;
        sleep = sl;
        muffins = muff;
        eat = et;
    }

//destructor
    ~kat()
    {
        cout << "kitty goes bye bye" << endl;
    }

//set
    void setpurr (string prr) {purr = prr;}
    void setplay (string ply) {play = ply;}
    void setsleep (string sl) {sleep = sl;}
    void setmuffins (string muff) {muffins = muff;}
    void seteat (string et) {eat = et;}

//get
    string getpurr()
    {
        return purr;
    }
    string getplay()
    {
        return play;
    }
    string getsleep()
    {
        return sleep;
    }
    string getmuffins()
    {
        return muffins;
    }
    string geteat()
    {
        return eat;
    }
// display
    void display()
    {

        cout <<"purr = " << purr << endl;
        cout <<"play = " << play << endl;
        cout <<"sleep = " << sleep << endl;
        cout <<"muffins = " << muffins << endl;
        cout <<"eat = " << eat << endl;

    }


private: //kat attributes
    string purr;
    string play;
    string sleep;
    string muffins;
    string eat;
};
