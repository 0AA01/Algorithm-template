#include <bits/stdc++.h>
 
using namespace std;

typedef long long ll; 

const int N = 30010, M = 2 * N, MOD = 1e9 + 7;

struct Tree {
	int l, r;
	int sum, maxs;
}tr[N * 4];

int n, m, tot;
int h[N], e[M], w[N], ne[M], idx;
int sz[N], fa[N], dep[N], id[N];
int l[N], r[N], hs[N], top[N];

void pushup(int u) {
	tr[u].sum = tr[u << 1].sum + tr[u << 1 | 1].sum;
	tr[u].maxs = max(tr[u << 1].maxs, tr[u << 1 | 1].maxs); 
}

void build(int u, int l, int r) {
	if (l == r) {
		tr[u] = {l, r, w[id[l]], w[id[l]]};
	} else {
		tr[u] = {l, r};
		int mid = l + r >> 1;
		build(u << 1, l, mid);
		build(u << 1 | 1, mid + 1, r);
		pushup(u);
	}
}

void modify(int u, int x, int v) {
	if (tr[u].l >= x && tr[u].r <= x) {
		tr[u].sum = tr[u].maxs = v;
		return;
	}
	int mid = tr[u].l + tr[u].r >> 1;
	if (x <= mid) modify(u << 1, x, v);
	if (x > mid) modify(u << 1 | 1, x, v);
	pushup(u);
}

int query_maxs(int u, int l, int r) {
	if (tr[u].l >= l && tr[u].r <= r) {
		return tr[u].maxs;
	}
	int mid = tr[u].l + tr[u].r >> 1;
	
	int maxs = -1e9;
	if (l <= mid) maxs = max(maxs, query_maxs(u << 1, l, r));
	if (r > mid) maxs = max(maxs, query_maxs(u << 1 | 1, l, r)); 
	return maxs;
}

int query_sum(int u, int l, int r) {
	if (tr[u].l >= l && tr[u].r <= r) {
		return tr[u].sum;
	}
	int mid = tr[u].l + tr[u].r >> 1;
	
	int sum = 0;
	if (l <= mid) sum += query_sum(u << 1, l, r);
	if (r > mid) sum += query_sum(u << 1 | 1, l, r); 
	return sum;
}

void add(int a, int b) {
	e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void dfs1(int u, int f) {
	sz[u] = 1;
	hs[u] = -1;
	fa[u] = f;
	dep[u] = dep[f] + 1;
	
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (j == f) continue;
		dfs1(j, u);
		sz[u] += sz[j];
		if (hs[u] == -1 || sz[hs[u]] < sz[j]) {
			hs[u] = j;
		}
	}
}

void dfs2(int u, int t) {
	l[u] = ++tot;
	id[tot] = u;
	top[u] = t;

	if (hs[u] != -1) {
		dfs2(hs[u], t);
	}	
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (j == fa[u] || j == hs[u]) continue;
		dfs2(j, j);		
	}		
	r[u] = tot;
}

int q_maxs(int a, int b) {
	int maxs = -1e9;
	while (top[a] != top[b]) {
		if (dep[top[a]] > dep[top[b]]) {
			maxs = max(maxs, query_maxs(1, l[top[a]], l[a]));
			a = fa[top[a]];
		} else {
			maxs = max(maxs, query_maxs(1, l[top[b]], l[b]));
			b = fa[top[b]];
		}
	}
	if (dep[a] >= dep[b]) {
		maxs = max(maxs, query_maxs(1, l[b], l[a]));
	} else {
		maxs = max(maxs, query_maxs(1, l[a], l[b]));		
	}
	return maxs;
}



int q_sum(int a, int b) {
	int sum = 0;
	while (top[a] != top[b]) {
		if (dep[top[a]] > dep[top[b]]) {
			sum += query_sum(1, l[top[a]], l[a]);
			a = fa[top[a]];
		} else {
			sum += query_sum(1, l[top[b]], l[b]);
			b = fa[top[b]];
		}
	}
	if (dep[a] >= dep[b]) {
		sum += query_sum(1, l[b], l[a]);
	} else {
		sum += query_sum(1, l[a], l[b]);		
	}
	return sum;
}

int main() {
	cin >> n;
	
	memset(h, -1, sizeof h);
	for (int i = 0; i < n - 1; i++) {
		int a, b;
		cin >> a >> b;
		add(a, b);
		add(b, a); 
	}
	for (int i = 1; i <= n; i++) {
		cin >> w[i];
	} 
	
	dfs1(1, 0);
	dfs2(1, 1);	
	build(1, 1, n);
	
	cin >> m;
	while (m--) {
		char ops[10];
		cin >> ops;
		if (ops[1] == 'M') {
			int a, b;
			cin >> a >> b;
			cout << q_maxs(a, b) << endl;
		} else if (ops[1] == 'S') {
			int a, b;
			cin >> a >> b;
			cout << q_sum(a, b) << endl;
		} else if (ops[1] == 'H') {
			int x, v;
			cin >> x >> v;
			modify(1, l[x], v);
		}
	}
	
    return 0;
}
