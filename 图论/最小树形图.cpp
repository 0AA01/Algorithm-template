#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, ll> PII;

const int N = 110, M = N * 2, MOD = 1000000007, INF = 0x3f3f3f3f;

int T, n, m, root;
int g[N][N], d[N][N];
int dfn[N], low[N], id[N], stk[N], top, cnt, dep;
int pre[N];
bool st[N]; 

void dfs(int u) {
	st[u] = true;
	for (int i = 1; i <= n; i++)
		if (!st[i] && g[u][i] != INF) {
			dfs(i);
		}
}

bool check(int root) {	
	dfs(root);
	for (int i = 1; i <= n; i++) {
		if (!st[i]) {
			return false;
		}
	}
	return true;
}

void tarjan(int u) {
	dfn[u] = low[u] = ++dep;
	stk[++top] = u;
	st[u] = true;
	
	int j = pre[u];
	if (!dfn[j]) {
		tarjan(j);
		low[u] = min(low[u], low[j]);
	} else if (st[j]) {
		low[u] = min(low[u], dfn[j]);
	}
	if (dfn[u] == low[u]) {
		++cnt;
		while (true) {
			int t = stk[top--];
			st[t] = false;
			id[t] = cnt;
			if (t == u) break;
		}		
	}	
}

int work(int root) {
	memset(st, false, sizeof st);
	int ans = 0;
	while (true) {
		for (int i = 1; i <= n; i++) {
			pre[i] = i;
			for (int j = 1; j <= n; j++) {
				if (g[pre[i]][i] > g[j][i]) {
					pre[i] = j;
				}
			}
		}
		dep = cnt = 0;
		memset(dfn, 0, sizeof dfn);
		for (int i = 1; i <= n; i++)
			if (!dfn[i]) {
				tarjan(i);
			}
		if (cnt == n) {
			for (int i = 1; i <= n; i++)
				if (i != root)
					ans += g[pre[i]][i];
			break;
		}
		for (int i = 1; i <= n; i++)
			if (i != root && id[pre[i]] == id[i]) {
				ans += g[pre[i]][i];
			}
		for (int i = 1; i <= cnt; i++)
			for (int j = 1; j <= cnt; j++)
				d[i][j] = INF;
		
		for (int i = 1; i <= n; i++)
			for (int j = 1; j <= n; j++)
				if (g[i][j] < INF && id[i] != id[j]) {
					int a = id[i], b = id[j];
					if (id[pre[j]] == id[j]) {
						d[a][b] = min(d[a][b], g[i][j] - g[pre[j]][j]);
					} else {
						d[a][b] = min(d[a][b], g[i][j]);
					}
				}		
		
		n = cnt;
		root = id[root];
		memcpy(g, d, sizeof g);
	}
	return ans;
}

void solve() {
	cin >> n >> m >> root;
	
	memset(g, 0x3f, sizeof g);
	
	for (int i = 1; i <= m; i++) {
		int a, b, c;
		cin >> a >> b >> c;
		if (b == root) continue;
		g[a][b] = min(g[a][b], c);
	}
	
	if (!check(root)) {
		puts("-1");
	} else {
		printf("%d\n", work(root));
	}
}

int main() {	
	T = 1;
	while (T--) {
		solve();
	}
	return 0;
}
