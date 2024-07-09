#include <bits/stdc++.h>
 
using namespace std;

const int N = 100010, INF = 1e9;

struct Tree {
	int l, r;
	int key, val;
	int lazy, size;
}tr[N];
 
int T, n, m, idx;
int root;
int x, y, z;

void pushup(int u) {
	tr[u].size = tr[tr[u].l].size + tr[tr[u].r].size + 1;
}

void pushdown(int u) {
	swap(tr[u].l, tr[u].r);
	tr[tr[u].l].lazy ^= 1;
	tr[tr[u].r].lazy ^= 1;
	tr[u].lazy = 0;
}

int get_Node(int val) {
	tr[++idx] = {0, 0, rand() * N, val, 0, 1};
	return idx;
}

void split(int u, int size, int &x, int &y) {
	if (u == 0) x = y = 0;
	else {
		if (tr[u].lazy) pushdown(u);
		if (tr[tr[u].l].size < size) {
			x = u;
			split(tr[u].r, size - tr[tr[u].l].size - 1, tr[u].r, y);
		} else {
			y = u;
			split(tr[u].l, size, x, tr[u].l);
		}
		pushup(u);
	}
}

int merge(int x, int y) {
	if (x == 0 || y == 0) return x + y;
	if (tr[x].key <= tr[y].key) {
		if (tr[x].lazy) pushdown(x);
		tr[x].r = merge(tr[x].r, y);
		pushup(x);
		return x;
	} else {
		if (tr[y].lazy) pushdown(y);
		tr[y].l = merge(x, tr[y].l);
		pushup(y);
		return y;
	}
}


void insert(int val) {
	root = merge(root, get_Node(val));
}

void prin(int u) {
	if (u == 0) return;
	
	if (tr[u].lazy) {
		pushdown(u);
	}
	
	prin(tr[u].l);
	cout << tr[u].val << " ";
	prin(tr[u].r);
}

void rev(int l, int r) {
	split(root, l - 1, x, y);
	split(y, r - l + 1, y, z);
	
	tr[y].lazy ^= 1;
	
	root = merge(x, merge(y, z));
}

void solve() {
	cin >> n >> m;
	
	for (int i = 1; i <= n; i++) {
		insert(i);
	}
	
	while (m--) {
		int l, r;
		cin >> l >> r;
		rev(l, r);
	}
	
	prin(root);	
}
 
int main() {	
 
    return 0;
}
