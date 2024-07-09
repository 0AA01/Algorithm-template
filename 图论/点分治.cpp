#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 50010, M = N * 2, T = 510;

int n, k, rt, rts;
int h[N], e[M], ne[M], idx;
int sz[N], f[T], t[T];
bool vis[N];
ll ans;

void add(int a, int b) {
	e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void dfs_root(int u, int fa) {
	sz[u] = 1;
	
	int maxs = 0;
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (j == fa || vis[j]) continue;
		
		dfs_root(j, u);
		
		sz[u] += sz[j];
		maxs = max(maxs, sz[j]);
	}
	maxs = max(maxs, sz[0] - sz[u]);
	if (rts > maxs) {
		rts = maxs;
		rt = u;
	}
}

void get_dist(int u, int fa, int d) {
	if (d > k) return;
	
	t[d]++;
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (j == fa || vis[j]) continue;
		get_dist(j, u, d + 1);
	}
}

void solove(int u) {
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (vis[j]) continue;
		
		get_dist(j, u, 1);
		
		for (int p = 1; p < k; p++) {
			int q = k - p;
			ans = ans + f[p] * t[q];
		}
		ans += t[k];
		for (int i = 1; i <= k; i++) {
			f[i] += t[i];
			t[i] = 0;
		}
	}
	memset(f, 0, sizeof f);
}

void divide(int u) {
	vis[u] = true;
	
	solove(u);
	
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		
		if (vis[j]) continue;
		
		rts = sz[0] = sz[j];
		dfs_root(j, u);
		divide(rt);		
	}
}

int main() {
	cin >> n >> k;
	
	memset(h, -1, sizeof h);
	for (int i = 0; i < n - 1; i++) {
		int a, b;
		cin >> a >> b;
		add(a, b);
		add(b, a);
	}
	
	rts = sz[0] = n;
	
	dfs_root(1, -1);
	
	divide(rt);
	
	cout << ans << endl;
	
	return 0;
}
