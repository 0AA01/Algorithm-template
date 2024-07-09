#include <bits/stdc++.h>

using namespace std; 

typedef long long ll;

const int N = 100010, M = N * 2, MOD = (int)1e9 + 7;

int n, m, idx, tot;
int h[N], e[M], ne[M];
int col[N];
int l[N], r[N], id[N], hs[N], sz[N];
int cnt[N];
ll ans[N];
ll maxcnt, maxsum;

void add(int a, int b) {
    e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void dfs1(int u, int fa) {
    l[u] = ++tot;
    id[tot] = u;
    hs[u] = -1;
    sz[u] = 1;
    for (int i = h[u]; i != -1; i = ne[i]) {
        int j = e[i];
        if (j == fa) continue;
        dfs1(j, u);
        sz[u] += sz[j];
        if (hs[u] == -1 || sz[j] > sz[hs[u]]) {
            hs[u] = j;
        }
    }
    r[u] = tot;
}

void add(int u) {
    u = col[u];
    cnt[u]++;
    if (cnt[u] > maxcnt) {
        maxcnt = cnt[u];
        maxsum = 0;
    }
    if (maxcnt == cnt[u]) maxsum += u;
}

void del(int u) {
    u = col[u];
    cnt[u]--;
}

void dfs2(int u, int fa, bool flag) {
    for (int i = h[u]; i != -1; i = ne[i]) {
        int j = e[i];
        if (j == fa || j == hs[u]) continue;
        dfs2(j, u, false);
    }

    if (hs[u] != -1) {
        dfs2(hs[u], u, true);
    }
    
    for (int i = h[u]; i != -1; i = ne[i]) {
        int j = e[i];
        if (j == fa || j == hs[u]) continue;
        for (int t = l[j]; t <= r[j]; t++) {
            add(id[t]);
        }
    }
    add(u);
    ans[u] = maxsum;
    if (!flag) {
        maxsum = maxcnt = 0;
        for (int i = l[u]; i <= r[u]; i++)
            del(id[i]);
    }
}

int main() {
	cin >> n;

    for (int i = 1; i <= n; i++) {
    	cin >> col[i];
    }

	memset(h, -1, sizeof h);
    for (int i = 0; i < n - 1; i++) {
    	int a, b;
    	cin >> a >> b;
        add(a, b);
        add(b, a);
    }

    dfs1(1, 0);
    dfs2(1, 0, false);

    for (int i = 1; i <= n; i++) {
        cout << ans[i] << " ";
    }
	cout << endl;
}

