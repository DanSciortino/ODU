class Modifier{
public:

    Modifier()
    {
        next = NULL;
    }

    void seteffects(int i)
    {
        for (int j = 0; j < 7 ; j++)
        {
            cin >> effects[j];
        }
    };
    void geteffects();

    void newmodifer()
    {
        next = new Modifier();
    }
    Modifier * getM()
    {
        return next;
    }

    void display()
    {
        for(int i = 0; i < 7; i++)
        {
            cout << effects[i] << setw(10) ;
        }
        cout << endl;
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
    int effects[7];
    Modifier * next;
};
