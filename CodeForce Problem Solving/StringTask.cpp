#include <bits/stdc++.h>
using namespace std;

bool vowel (char ch){
    if (ch == 'a' or ch == 'e' or ch == 'i' or ch == 'o'
    or ch == 'u' or ch == 'y') return true;
    else return false;
}

int main(){
    string s;
    cin >> s;
    for (int i = 0; i < s.size(); i++){
        s[i] = tolower (s[i]);
        if (!vowel (s[i])){
            cout << "." << s[i];
        }
    }
    cout << endl;
    return 0;
}
