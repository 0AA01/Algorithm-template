#include <bits/stdc++.h>

using namespace std;

typedef unsigned long long ll;
typedef pair<ll, ll> PII;

const int N = 100010, M = 10000007, MOD = 1000000007, MO = 1e9 + 17;
const ll Hash = 13331, INF = 0x3f3f3f3f3f3f3f3f;

struct Tree {
	int s[2], p, v;
	int sum, rev;	
}tr[N];

int n, m;
int stk[N];

bool isroot(int x) {
	return tr[tr[x].p].s[0] != x && tr[tr[x].p].s[1] != x;
}

void calc(int u) {
	swap(tr[u].s[0], tr[u].s[1]);
	tr[u].rev ^= 1;
}

void pushup(int u) {
	tr[u].sum = tr[tr[u].s[0]].sum ^ tr[tr[u].s[1]].sum ^ tr[u].v;
}

void pushdown(int u) {
	if (tr[u].rev) {
		calc(tr[u].s[0]);
		calc(tr[u].s[1]);
		tr[u].rev = 0;
	}
}

void rotate(int x) {
	int y = tr[x].p, z = tr[y].p;
	int k = tr[y].s[1] == x;
	if (!isroot(y)) tr[z].s[tr[z].s[1] == y] = x;
	tr[x].p = z;
	tr[y].s[k] = tr[x].s[k ^ 1]; tr[tr[x].s[k ^ 1]].p = y;
	tr[x].s[k ^ 1] = y; tr[y].p = x;
	pushup(y);
	pushup(x);
}

void splay(int x) {
	int top = 0, r = x;
	stk[++top] = r;
	while (!isroot(r)) {
		stk[++top] = r = tr[r].p;
	}
	while (top) {
		pushdown(stk[top--]);
	}
	while (!isroot(x)) {
		int y = tr[x].p, z = tr[y].p;
		if (!isroot(y))
			if ((tr[y].s[1] == x) ^ (tr[z].s[1] == y)) rotate(x);
			else rotate(y);
		rotate(x); 
	}
}

void access(int x) {
	int z = x;
	for (int y = 0; x; y = x, x = tr[x].p) {
		splay(x);
		tr[x].s[1] = y;
		pushup(x);
	}	
	splay(z);
}

void makeroot(int x) {
	access(x);
	calc(x);
}

int findroot(int x) {
	access(x);
	while (tr[x].s[0]) {
		pushdown(x);
		x = tr[x].s[0];
	}
	splay(x); 
	return x;
}

void split(int x, int y) {
	makeroot(x);
	access(y);
}

void link(int x, int y) {
	makeroot(x);
	if (findroot(y) != x) tr[x].p = y;
}

void cut(int x, int y) {
	makeroot(x);
	if (findroot(y) == x && tr[y].p == x && !tr[y].s[0]) {
		tr[x].s[1] = tr[y].p = 0;
		pushup(x);
	}
}

int main() {
	scanf("%d%d", &n, &m);
	for (int i = 1; i <= n; i++) {
		scanf("%d", &tr[i].v);
	}
	
	while (m--) {
		int t, x, y;
		scanf("%d%d%d", &t, &x, &y);
		if (t == 0) {
			split(x, y);
			printf("%d\n", tr[y].sum);
		} else if (t == 1) {
			link(x, y);
		} else if (t == 2) {
			cut(x, y);
		} else {
			splay(x);
			tr[x].v = y;
			pushup(x);
		}
	}
	
	return 0;
}
