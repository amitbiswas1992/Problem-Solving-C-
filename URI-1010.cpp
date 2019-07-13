#include <bits/stdc++.h>

using namespace std;


int main(){

       int code1,code2 , unit1, unit2;
       double price1,price2;
       double calc;
       cin >> code1 >> unit1 >> price1;
       cin >> code2 >> unit2 >> price2;


       calc = (unit1 * price1) + (unit2 * price2);

       printf("VALOR A PAGAR: R$ %.2lf\n",calc);
       return 0;

}
