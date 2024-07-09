#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;

const int N = 500010, M = 2000010, INF = 1e9 + 7, Hash = 13331, MOD = 998244353;

int T, n, m, k, s;
vector<int> G[N];
vector<PII> f[M];
int dfn[N], d[N], p[N][20], tot;

void dfs1(int u, int fa) {
    d[u] = d[fa] + 1;
    dfn[u] = ++tot;
    p[tot][0] = fa;
    for (int v : G[u]) {
        if (v == fa) continue;
        dfs1(v, u);
    }
}

int RMQ(int l, int r) {
    if (l > r) swap(l, r);
    int k = log(r - l + 1) / log(2);
    int x = p[l][k], y = p[r - (1 << k) + 1][k];
    return d[x] <= d[y] ? x : y;
}

int lca(int x, int y) {
    if (x == y) return x;
    if (dfn[x] > dfn[y]) swap(x, y);
    return RMQ(dfn[x] + 1, dfn[y]);
}

void init() {
    dfs1(s, 0);
    for (int j = 1; 1 << j <= n; j++) {
	    for (int i = 1; i + (1 << j) - 1 <= n; i++) {
	            int x = p[i][j - 1], y = p[i + (1 << j - 1)][j - 1];
	            p[i][j] = d[x] <= d[y] ? x : y;
	        }
	    }
}

int main() {
	return 0;
}
