#include <bits/stdc++.h>

using namespace std;

typedef unsigned long long ll;
typedef pair<ll, ll> PII;

const int N = 100010, M = 10000007, MOD = 1000000007, MO = 1e9 + 17;
const ll Hash = 13331, INF = 0x3f3f3f3f3f3f3f3f;

struct Tree {
	int s[2], p, v;
	int size, flag;
	void init(int _v, int _p) {
		v = _v;
		p = _p;
	}
}tr[N];

int n, m, root, idx;

void pushup(int u) {
	tr[u].size = tr[tr[u].s[0]].size + tr[tr[u].s[1]].size + 1;
}

void pushdown(int u) {
	if (tr[u].flag) {
		swap(tr[u].s[0], tr[u].s[1]);
		tr[tr[u].s[0]].flag ^= 1;
		tr[tr[u].s[1]].flag ^= 1;
		tr[u].flag = 0;
	}
}

void rotate(int x) {
	
	int y = tr[x].p, z = tr[y].p;
	int k = tr[y].s[1] == x;
	tr[z].s[tr[z].s[1] == y] = x; tr[x].p = z;
	tr[y].s[k] = tr[x].s[k ^ 1]; tr[tr[x].s[k ^ 1]].p = y;
	tr[x].s[k ^ 1] = y; tr[y].p = x;
	
	pushup(y);
	pushup(x);
}

void splay(int x, int k) {

	while (tr[x].p != k) {
		int y = tr[x].p, z = tr[y].p;
		
		if (z != k)
			if ((tr[y].s[1] == x) ^ (tr[z].s[1] == y)) rotate(x);
			else rotate(y);
		
		rotate(x);
	}
	if (!k) root = x;
}

void insert(int v) {
	int u = root, p = 0;
	while (u) {
		p = u;
		u = tr[u].s[v > tr[u].v];
	}
	u = ++idx;
	if (p) tr[p].s[v > tr[p].v] = u;
	tr[u].init(v, p);
	splay(u, 0); 
}

int get_k(int k) {
	int u = root;
	while (true) {
		pushdown(u);
		if (tr[tr[u].s[0]].size >= k) u = tr[u].s[0];
		else if (tr[tr[u].s[0]].size + 1 == k) return u;
		else {
			k -= tr[tr[u].s[0]].size + 1;
			u = tr[u].s[1];
		}
//		cout << u << " " << tr[tr[u].s[0]].size << " " << k << endl;
	}
	return -1;
}

void output(int u) {
	pushdown(u);
	if (tr[u].s[0]) output(tr[u].s[0]);
	if (tr[u].v >= 1 && tr[u].v <= n) printf("%d ", tr[u].v);
	if (tr[u].s[1]) output(tr[u].s[1]);
}

int main() {
	
	scanf("%d%d", &n, &m);
	
	for (int i = 0; i <= n + 1; i++) {
		insert(i);
	}
	
	while (m--) {
		int l, r;
		scanf("%d%d", &l, &r);
		l = get_k(l);
		r = get_k(r + 2);
		splay(l, 0);
		splay(r, l);
		tr[tr[r].s[0]].flag ^= 1;
	}
	
	output(root);
	
	return 0;
} 
