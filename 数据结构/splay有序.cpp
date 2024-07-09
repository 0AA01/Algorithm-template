#include <bits/stdc++.h>

using namespace std;

typedef unsigned long long ll;
typedef pair<ll, ll> PII;

const int N = 200010, M = 10000007, MOD = 1000000007;
const ll Hash = 13331, INF = 0x3f3f3f3f3f3f3f3f;

struct Tree {
	int s[2], p, v;
	int size, cnt;
	void init(int _v, int _p) {
		v = _v;
		p = _p;
		size = 1;
		cnt = 1;
	}
}tr[N];

int n, m, root, idx;

void pushup(int u) {
	tr[u].size = tr[tr[u].s[0]].size + tr[tr[u].s[1]].size + tr[u].cnt;
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

int find(int v) {
	int u = root, p = 0;
	while (u) {
		if (tr[u].v >= v) {
			p = u;
			u = tr[u].s[0];
		} else {
			u = tr[u].s[1];
		}
	}
	splay(p, 0);
	return p;
}

int insert(int v) {
	int u = root, p = 0;
	while (u && tr[u].v != v) {
		p = u;
		u = tr[u].s[v > tr[u].v];
	}
	
	if (u) {
		tr[u].cnt++;
	} else {
		u = ++idx;
		if (p) {
			tr[p].s[v > tr[p].v] = u;
		}
		tr[u].init(v, p);
	}
	
	splay(u, 0);
	return u;
} 

int get(int v, int f) { // Ç°Çý f == 0, ºó¼Ì f == 1 
//	find(v);
	int u = find(v);
	if (f && tr[u].v > v) return u;
	if (!f && tr[u].v < v) return u;
	u = tr[u].s[f];
	while (tr[u].s[f ^ 1]) u = tr[u].s[f ^ 1];
	return u; 
}

void del(int x) {
	int last = get(x, 0);
	int next = get(x, 1);
	splay(last, 0);
	splay(next, last);
	
	int u = tr[next].s[0];
	
	if (tr[u].cnt > 1) {
		tr[u].cnt--;
		splay(u, 0);
	} else {
		tr[next].s[0] = 0;
		splay(next, 0);
	}
}

int get_k(int x) {
	int u = root;
	while (u) {
		if (tr[tr[u].s[0]].size >= x) u = tr[u].s[0];
		else if (tr[tr[u].s[0]].size + tr[u].cnt >= x) return tr[u].v;
		else {
			x -= tr[tr[u].s[0]].size + tr[u].cnt;
			u = tr[u].s[1];
		}
	}
	return -1;
}

int main() {
	scanf("%d", &m);
	
	int L = insert(-MOD), R = insert(MOD);
	
	while (m--) {
		int op, x;
		scanf("%d%d", &op, &x);
		if (op == 1) {
			insert(x);
		} else if (op == 2) {
			del(x);
		} else if (op == 3) {
			printf("%d\n", tr[tr[find(x)].s[0]].size);
		} else if (op == 4) {
			printf("%d\n", get_k(x + 1));
		} else if (op == 5) {
			printf("%d\n", tr[get(x, 0)].v);
		} else {
			printf("%d\n", tr[get(x, 1)].v);
		}
	} 
	
	
	return 0;
} 
