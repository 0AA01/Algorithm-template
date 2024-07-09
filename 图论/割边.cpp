#include <bits/stdc++.h>

using namespace std;

const int N = 100010, M = 300010 * 2;

int n, m, depth;
int dfn[N], low[N];
int h[N], e[M], ne[M], idx;
vector<int> ans;

void add(int a, int b) {
	e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void dfs(int u, int id) {
	dfn[u] = low[u] = ++depth;
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (!dfn[j]) {
			dfs(j, i);
			low[u] = min(low[u], low[j]); 
			if (dfn[j] == low[j]) ans.push_back(id + 1);
		} else if ((id ^ 1) != i) low[u] = min(low[u], dfn[j]);
	}
} 

int main() {
	cin >> n >> m;
	
	memset(h, -1, sizeof h);
	for (int i = 0; i < m; i++) {
		int a, b;
		cin >> a >> b;
		add(a, b);
		add(b, a);
	}
	
	for (int i = 1; i <= n; i++) {
		if (dfn[i] == 0) {
			dfs(i, -1);
		}
	}
	
	cout << ans.size() << endl;
	
	return 0;
}
