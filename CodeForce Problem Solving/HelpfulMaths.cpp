
 #include <bits/stdc++.h>
using namespace std;

int main(){
    string s;
    cin >> s;
    string n = "";
    for (int i = 0; i < s.size(); i++){
        if (isdigit (s[i]))
            n += s[i];
    }
    sort (n.begin(), n.end());

    cout << n[0];
    for (int i = 1;  i < n.size(); i++) {
        cout << '+' << n[i];
    }
    cout << endl;

    return 0;
}
