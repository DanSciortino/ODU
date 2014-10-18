class Weapon
//test{
public:
    Weapon()
    {
        string name = " ";
        string describe = " ";
    };

    void setname(string n)
    {
        name = n;
    }

    void setdecrip(string d)
    {
        description = d;
    }
    void setweaponstats(int i)
    {
        for (int j = 0; j < 4 ; j++)
        {
            weaponStat[j] = i;
        }
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

    void display(int i)
    {
        cout << endl <<"Weapon Name: " << name << endl;
        cout <<"Description: " << description << endl;
    }


private:
    int weaponStat[4];
    string name;
    string description;
    Modifier M;
};
