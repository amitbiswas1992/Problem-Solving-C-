//
//  main.cpp
//  LightOJ-1000
//
//  Created by Maze Geek on 6/17/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

//#include <iostream>

#include <bits/stdc++.h>

int main (){

    int i, n, a, b, sum ;

    scanf("%d\n",&n);
    for ( i = 1; i < n ;i++) {

        scanf("%d %d", &a, &b);
        sum = a + b;
        printf("Case %d: %d\n", i , sum);


    }


    return 0;
}
