#include <bits/stdc++.h>

using namespace std;

int bubbleSort();
int main(){

bubbleSort();

return 0;
}

int bubbleSort(){

 int num[10] = {3,5,4,6,78,23,9,12,10,22};
 int i , j , temp, n = 10;

    for (i = 0;  i<n; i++) {

        for (j = i+0 ; j < n; j++) {

            if (num[i]> num[j]){

                temp = num[i];
                num[i] = num[j];
                num[j] = temp;
            }

        }

    }

    for(i = 0; i< n ; i++){
        printf("%d\n", num[i]);

    }
}
