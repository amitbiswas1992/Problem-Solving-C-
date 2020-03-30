//
//  main.cpp
//  cpp_reverseString||
//
//  Created by Amit Biswas on 3/29/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

#include <iostream>

using namespace std;
#define MAX 100000
#define ll long long
#define MOD 1000000007
#define pii pair<int,int>
#define all(v) (v).begin(),(v).end()

int parent[100000];

int find_parent(int u) /// recursive function
{
    /// base case
    if(u == parent[u]) return u;
    /// recursion call
    return parent[u] = find_parent(parent[u]);
}

void Union(int u, int v)
{
    int pu = find_parent(u); /// pu = india's PM
    int pv = find_parent(v); /// pv = BD's PM
    if(pu != pv)
    {
        parent[pv] = pu;
    }
}

int main()
{
    int n = 6;
    for(int i = 1; i <= n; i++) /// O(N)
    {
        parent[i] = i;
        /**
            parent[1] = 1
            parent[2] = 2
            ...
            parent[n] = n
        **/
    }
    int q, com, u, v;
    cin >> q;
    while(q--)
    {
        cin >> com;
        if(com == 1) /// Union
        {
            cin >> u >> v;
            Union(u, v);
            for(int i = 1; i <= n; i++) cout << i <<  ": " << find_parent(i) << "\n";
            cout << "\n";
        }
        else
        {
            cin >> u;
            cout << find_parent(u) << "\n";
        }
    }
    return 0;
}
