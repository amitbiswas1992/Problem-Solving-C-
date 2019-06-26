#include <bits/stdc++.h>

using namespace std;

int grid[6][6];

int main(){
    int current_row, current_col;
    for (int i = 1; i <= 5; i++){
        for (int j = 1; j <= 5; j++){
            cin >> grid[i][j];
            if (grid[i][j] == 1){
                current_row = i;
                current_col = j;
            }
        }
    }
    cout << abs (current_row - 3) + abs (current_col - 3) << endl;

    return 0;
}
