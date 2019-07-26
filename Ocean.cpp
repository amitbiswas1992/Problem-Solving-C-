#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;


int main() {
    int n;
    cin >> n;
    vector <int> v, ans;
    for (int i = 0; i < n; i++) {
        int x;
        cin >> x;
        v.push_back (x);
    }
    int maxi = 0;
    for (int i = n - 1; i >= 0; i--){
        if (v[i] > maxi){
            ans.push_back (v[i]);
            maxi = v[i];
        }
    }
    sort (ans.rbegin(), ans.rend());
    for (auto x : ans) cout << x << ' ';
    cout << '\n';
    return 0;
}

/* 4 5 2 8 1 6 4
 * 4 6 8
 *
 *
 */
