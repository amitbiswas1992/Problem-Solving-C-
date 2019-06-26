#include <bits/stdc++.h>
using namespace std;



int main(){
    int n;
    cin >> n;

    int a , b, c;
    int x = 0, y = 0, z = 0;


    for (int i = 1; i<=n; i++){

        cin >> a  >> b >> c;
        x += a;
        y += b;
        z += c;

    }



    if (x == 0 and y == 0 and z == 0){
        cout << "YES" << endl;
    }else {
        cout << "NO" << endl;
    }

    return 0;
