#include <bits/stdc++.h>

using namespace std;

int main(){

    string str;
    getline(cin,str);

    int arr[30];
    memset(arr, 0,  sizeof arr );

    for( int i=0; str[i]; i++ ){
        if( (str[i] >= 'a' and str[i] <= 'z' )
             or (str[i]>='A' and str[i] <= 'Z') ){

            int ch = str[i] | 32;
            cout << ch << " " <<( ch - 'a' ) << endl;


            arr[ (ch - 'a')] = 1;

        }
    }

    for( int i=0; i<=25; i++ ){
        cout << i <<  " "<<arr[i] <<endl;
        if( arr[i] == 0 ) {
            puts("NO");
           return 0;
        }
    }

    puts("YES");

    return 0;
}
