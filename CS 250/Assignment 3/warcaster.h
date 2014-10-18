class Warcaster
{
public:

    Warcaster ()
    {
        name = " ";
        life = 0;
        focus =0;
        mySpells = NULL;
        //next = NULL;
        for(int i=0; i<3; i++)
        {
            w[i]=new Weapon;
        }
    }

    Warcaster (int j)
    {
        name = " ";
        life = 0;
        focus =0;
        mySpells = NULL;
        //next = NULL;
        for(int i=0; i<j; i++)
        {
            w[i]=new Weapon;
        }
    }

    void setname (string n)
    {
        name = n;
    }
    string getname()
    {
        return name;
    }

    void setlife (int l)
    {
        life = l;
    }

    int getlife()
    {
        return life;
    }

    void setfocus (int f)
    {
        focus = f;
    }

    int getfocus()
    {
        return focus;
    }

    void set_war_weapon(int i,string n, string d)
    {
        w[i] -> setname(n);
        w[i] -> setdecrip(d);
        if (i == 0 )
        {
            w[i] -> setModEffects(0);
        }
    }


    void weaponDisplay(int i)
    {
        w[i] -> display(i);
    }

    void spellDisplay()
    {
        curr = mySpells;

        while (curr != NULL)
        {
            curr -> display();
            curr = curr -> getnextspell();
        }
    }

    void addspell(Spell * s)
    {
        if (mySpells == NULL)
        {
            mySpells = s;
            curr = mySpells;
        }
        else
        {
            curr = mySpells;
            while (curr -> getnextspell() != NULL)
            {
                curr = curr -> getnextspell();
            }
            curr -> setnext(s);
        }

    }

private:
    string name;
    int life;
    int focus;
    Weapon * w[];
    string spellname;
    string description;
    Spell * curr;
    Spell * mySpells;
    Spell * next;
};
