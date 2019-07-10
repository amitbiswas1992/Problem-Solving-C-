#include <bits/stdc++.h>

using namespace std;

long long fib[1000006];

int main(){


        fib[0] = fib[1] = 1;
        for (int i = 2; i <= 1000000; i++){
            fib[i] = fib[i - 1] + fib[i - 2];
        }
        int a;
        while (cin >> a){
            cout << "for " << a << " ans " << fib[a] << endl;
        }
        return 0;

}
