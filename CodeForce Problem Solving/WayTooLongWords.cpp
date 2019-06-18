#include <bits/stdc++.h>
#define filein freopen ("in.txt", "r", stdin)
#define fileout freopen ("out.txt", "w", stdout)
using namespace std;

int main(){
    int n;
    cin >> n;

    while (n--){
        string a;
        cin >> a;
        int sz =  a.size();

        if (sz <= 10){

            cout << a << endl;
        }else {

            cout << a[0] << sz - 2 << a[sz - 1] << endl;
        }


    }

    return 0;
}
