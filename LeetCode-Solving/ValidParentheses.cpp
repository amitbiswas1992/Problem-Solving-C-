class Solution {
public:
    bool isValid(string s) {
        stack<char> stk;
        stk.push('#');
        char top;
        for(int i(0); i < s.size(); i++)
        {
            top = stk.top();
                 if(top == '(' && s[i] == ')') stk.pop();
            else if(top == '[' && s[i] == ']') stk.pop();
            else if(top == '{' && s[i] == '}') stk.pop();
            else stk.push(s[i]);
        }
        top = stk.top();
        if(top == '#') return true;
        else           return false;
    }
};
