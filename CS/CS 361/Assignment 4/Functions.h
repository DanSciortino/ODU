bool Current(char a,char b)
{
    if (a == '(' && b == ')')
        return true;
    else if (a == '[' && b == ']')
        return true;
    else if (a == '{' && b == '}')
        return true;
    else if (a == '/*' && b == '*/')
        return true;
    else
        return false;

}

bool CheckSymbols(string Name)
{
    stack <char> Stck;
    int x = Name.length();
    string Symbol;
    cout << Name;

    for(int i = 0; i < x; ++i)
    {
        switch(Name[i])
        {
//Checking for opening brackets
        case '(':
            Stck.push(Name[i]);
            break;
        case '[':
            Stck.push(Name[i]);
            break;
        case '{':
            Stck.push(Name[i]);
            break;
        case '/*':
            Stck.push(Name[i]);
            break;

//Checking for ending brackets
        case ')':
            if (Stck.empty() || !Current(Stck.top(),Name[i]))
            {
            cout << "symbol ) is not balanced" << endl;
            return false;
            }
            else Stck.pop();
            break;
        case ']':
            if (Stck.empty() || !Current(Stck.top(),Name[i]))
            {
            cout << "symbol ] is not balanced" << endl;
            return false;
            }
            else Stck.pop();
            break;
        case '}':
            if (Stck.empty() || !Current(Stck.top(),Name[i]))
            {
            cout << "symbol } is not balanced" << endl;
            return false;
            }
            else Stck.pop();
            break;
        case '*/':
            if (Stck.empty() || Current(Stck.top(),Name[i]))
            {
            cout << "symbol */ is not balanced" << endl;
            return false;
            }
             else Stck.pop();
             break;
        }
    }

    if (Stck.empty())
    {
    return true;
    }
}
