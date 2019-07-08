#include <bits/stdc++.h>

#define filein freopen ("in.txt", "r", stdin)
#define fileout freopen ("out.txt", "w", stdout)
#define dbg(x) cerr << #x << ": " << x << endl

using namespace std;
typedef long long ll;

const int maxn = 405;

int a[maxn];
int temp[maxn];

void combine (int L, int R){
	int mid = (L + R) / 2;
	int lptr = L, rptr = mid + 1;
    int temp_ptr = L;
    while (lptr <= mid and rptr <= R){
        if (a[lptr] < a[rptr]){
            temp[temp_ptr] = a[lptr];
            temp_ptr++;
            lptr++;
        }
        else temp[temp_ptr++] = a[rptr++];
    }
    while (lptr <= mid)
        temp[temp_ptr++] = a[lptr++];
	while (rptr <= R)
		temp[temp_ptr++] = a[rptr++];
    for (int i = L; i <= R; i++)
		a[i] = temp[i];
}

void mergesort (int L, int R){
	if (L == R) return;
    int mid = (L + R) / 2;
    mergesort (L, mid);
    mergesort (mid + 1, R);
    combine (L, R);
}

int main(){
//	filein;
    int n;
    cin >> n;
    for (int i = 1; i <= n; i++){
        cin >> a[i];
    }
	mergesort (1, n);
	for (int i = 1; i <= n; i++)
		cout << a[i] << ' ';
	cout << endl;
    return 0;
}
