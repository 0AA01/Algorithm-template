#include <bits/stdc++.h>
 
using namespace std;

typedef long long ll; 
typedef int PII;

const int N = 500010, M = 2 * N, MOD = 1e9 + 7;

int n, m, k, tot, s;
vector<int> G[N];
int d[N], fa[N];
int hs[N], top[N], sz[N];

void dfs1(int u, int fr) {
    sz[u] = 1;
    d[u] = d[fr] + 1;
    fa[u] = fr;
    for (auto v: G[u]) {
        if (v == fr) continue;
        dfs1(v, u);
        sz[u] += sz[v];
        if (hs[u] == 0 || sz[hs[u]] < sz[v]) {
            hs[u] = v;
        }
    }
}

void dfs2(int u, int t) {
    top[u] = t;
    if (hs[u]) {
        dfs2(hs[u], t);
    }
    for (auto v : G[u]) {
        if (v == fa[u] || v == hs[u]) continue;
        dfs2(v, v);
    }
}

int lca(int x, int y) {
    while (top[x] != top[y]) {
        if (d[top[x]] > d[top[y]]) {
            x = fa[top[x]];
        } else {
            y = fa[top[y]];
        }
    }
    return d[x] <= d[y] ? x : y;
}

void init() {
    dfs1(1, 0);
    dfs2(1, 1);
}

int main() {	
    return 0;
}
