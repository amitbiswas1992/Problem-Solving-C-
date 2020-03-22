#include <iostream>
#include <vector>
#include <queue>
#include <cstring>
using namespace std;

vector <int> g[101];
int d[101];

int main() {
	int n, m;
	cin >> n >> m;
	for (int i = 0; i < m; i++){
		int u, v;
		cin >> u >> v;
		g[u].push_back(v);
		g[v].push_back(u);
	}
	memset (d, -1, sizeof d);
	queue <int> q;
	q.push (1);
	d[1] = 0;
	while (!q.empty()){
		int u = q.front();
		q.pop();
		for (int i = 0; i < g[u].size(); i++){
			int v = g[u][i];
			if (d[v] == -1){
				d[v] = d[u] + 1;
				q.push (v);
			}
		}
	}
for (int i = 1; i <= n; i++){
	cout << i << " " << d[i] << endl;
}
	return 0;
}

/*
5 6
1 2
1 3
1 4
3 4
2 3
2 5
*/