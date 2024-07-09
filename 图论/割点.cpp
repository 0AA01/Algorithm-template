#include <bits/stdc++.h>

using namespace std;

const int N = 20010, M = 100010 * 2;

int n, m, depth, root;
int h[N], e[M], ne[M], idx;
int dfn[N], low[N], cut[N];

void add(int a, int b) {
	e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void tarjan(int u, int fa) {
	dfn[u] = low[u] = ++depth;
	
	int s = 0;
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (dfn[j] == 0) {
			tarjan(j, u);
			s++;
			low[u] = min(low[u], low[j]);
			if (low[j] >= dfn[u]) {
				cut[u] = 1;
			}
		} else {
			if (j != fa) low[u] = min(low[u], dfn[j]);
		}
	}
	if (root == u && s <= 1) cut[u] = 0;	
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
	
	for (int i = 1; i <= n; i++)
		if (dfn[i] == 0) {
			root = i;
			tarjan(i, 0);
		}
	
	vector<int> ans;
	for (int i = 1; i <= n; i++)
		if (cut[i]) {
			ans.push_back(i);
		}
		
	cout << ans.size() << endl;
	for (auto ver : ans) {
		cout << ver << " ";
	}
	cout << endl;
		
	return 0;
} 
