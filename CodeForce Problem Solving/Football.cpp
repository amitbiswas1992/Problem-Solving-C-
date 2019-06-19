#include <bits/stdc++.h>
using namespace std;

int main(){
    string s;
    cin >> s;
    int zero = s.find ("0000000");
    int one = s.find ("1111111");
    if (zero == string :: npos and one == string :: npos)
        cout << "NO\n";
    else cout << "YES\n";
    return 0;
}
