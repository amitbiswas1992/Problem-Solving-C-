#include <bits/stdc++.h>

int main (){

    int i, n, a, b ;

    scanf("%d\n",&n);
    for ( i = 1; i <= n ;i++) {

        scanf("%d\n", &a);
        b = a/2;
        a = a % 2 + a /2;
        printf("%d %d\n", a, b);
        

    }


    return 0;
}
