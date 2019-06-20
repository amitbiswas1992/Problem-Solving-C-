#include <bits/stdc++.h>
using namespace std;

int main(){
    string s,cap,sml;
    getline(cin,s); // Taking a line input


    int k=0,l=0;
    for (int i = 0; s[i]; i++) {
        if ( s[i] >= 'A' && s[i] <= 'Z') {
            cap += s[i];
        }
        else if( s[i] >= 'a' && s[i] <= 'z' ){
            sml += s[i];
        }
    }

    cout << cap  << " \n" << sml << endl;


    return 0;
}
