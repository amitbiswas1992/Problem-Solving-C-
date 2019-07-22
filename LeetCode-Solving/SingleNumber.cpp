#include <bits/stdc++.h>
using namespace std;

const int maxn = 100;

int a[maxn];
int cum[maxn];

vector <int> nums = {2, 2, 1, 1, 3, 3, 6};

int main(){
    sort (nums.begin(), nums.end());
    if (nums.size() == 1)
        cout << nums[0] << endl;

    else {
        for (int i = 0; i < (int) nums.size() - 2; i += 2) {
            if (nums[i] != nums[i + 1]) {
                cout << nums[i] << endl;
                break;
            }
        }
        cout << num[(int) nums.size() - 1] << endl;
    }
    return 0;
}
