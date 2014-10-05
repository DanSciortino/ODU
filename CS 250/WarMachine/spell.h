class Spell
{
public:

    Spell ()
    {

        string name = " ";
        string description = " ";
        bool up = false;
        bool off = false;
        bool feat = false;
        int spellStat [4] = {0,0,0,0};
        next = NULL;
    }

    Spell (string n, string d,bool u,bool o,bool f)
    {

        string name = n;
        string description = d;
        bool up = u;
        bool off = o;
        bool feat = f;
        int spellStat [4] = {0,0,0,0};
        next = NULL;
    }

    void setspellname(string n)
    {
        spellname = n;
    }
    void setspelldesc(string d)
    {
        spelldescription = d;
    }
    void setspellup(bool u)
    {
        up = u;
    }
    void setspelloff(bool o)
    {
        off = o;
    }
    void setspellfeat(bool f)
    {
        feat = f;
    }
    void setspellstat(int s[])
    {

        memcpy(spellStat,s, sizeof(spellStat));
    }

    void setModEffects(int i)
    {
        cout << "Enter Speed, Strength, Melee, Range, Defense, Armor, and Command" << endl;
        M.seteffects(i);
        cout << "Speed" << setw(10)
             << "Strength" << setw(10)
             << "Melee" << setw(10)
             << "Range"  << setw(10)
             << "Defense"  << setw(10)
             << "Armor"  << setw(10)
             << "Command" << endl;
        M.display();
    }

    void ShowModEffects()
    {
        cout << "Speed" << setw(10)
             << "Strength" << setw(10)
             << "Melee" << setw(10)
             << "Range"  << setw(10)
             << "Defense"  << setw(10)
             << "Armor"  << setw(10)
             << "Command" << endl;
        M.display();
    }

    void setSpellStat()
    {
        cout << "Enter the Cost, Range, Area of Effect, and Power" << endl;
        for (int j = 0; j < 4 ; j++)
        {
            cin >> spellStat[j];
        }
    }

    void displaySpellStat()
    {

        cout << "Cost" << setw(10)
             << "Range" << setw(8)
             << "AoE" << setw(10)
             << "Power" << endl;

        for(int i = 0; i < 4; i++)
        {
            cout << spellStat[i] << setw(10) ;
        }
    }

    void newspell()
    {
        next = new Spell;
    }

    Spell * getnextspell()
    {
        return next;
    }

    void display()
    {
        cout << endl;
        cout << "Spell Name: " << spellname << endl;
        cout << "Description: "<< spelldescription << endl;
        displaySpellStat();
        cout << endl << endl;
    }

    void setnext(Spell * n)
    {
        next = n;
    }

    void showall()
    {
        display();
        if (next != NULL)
        {
            next -> showall();
        }
    }

private:

    string spellname;
    string spelldescription;
    bool up;
    bool off;
    bool feat;
    Modifier M;
    int spellStat[4];
    Spell * next;
    Spell * curr;
};
