#include <bits/stdc++.h>
 
using namespace std;

const int N = 100010, INF = 1e9;

struct Tree {
	int l, r;
	int key, val;
	int size;
}tr[N];
 
int T, n, idx;
int root;
int x, y, z;

void pushup(int u) {
	tr[u].size = tr[tr[u].l].size + tr[tr[u].r].size + 1;
}

int get_Node(int val) {
	tr[++idx] = {0, 0, rand() * N, val, 1};
	return idx;
}

void split(int u, int val, int &x, int &y) {
	if (u == 0) x = y = 0;
	else {
		if (tr[u].val <= val) {
			x = u;
			split(tr[u].r, val, tr[u].r, y);
		} else {
			y = u;
			split(tr[u].l, val, x, tr[u].l);
		}
		pushup(u);
	}
}

int merge(int x, int y) {
	if (x == 0 || y == 0) return x + y;
	if (tr[x].key <= tr[y].key) {
		tr[x].r = merge(tr[x].r, y);
		pushup(x);
		return x;
	} else {
		tr[y].l = merge(x, tr[y].l);
		pushup(y);
		return y;
	}
}


void insert(int val) {
	split(root, val, x, y);
	root = merge(x, merge(get_Node(val), y));
}

void del(int val) {
	split(root, val, x, z);
	split(x, val - 1, x, y);
	y = merge(tr[y].l, tr[y].r);
	root = merge(x, merge(y, z));
}

void get_rank(int val) {
	split(root, val - 1, x, y);
	
	cout << tr[x].size << endl;
	
	root = merge(x, y);
}

void get_val(int rank) {
	int u = root;
	
	while (u != 0) {
		if (tr[tr[u].l].size + 1 == rank) {
			break;
		} else if (tr[tr[u].l].size >= rank) {
			u = tr[u].l;
		} else {
			rank -= tr[tr[u].l].size + 1;
			u = tr[u].r;
		}
	}
	
	cout << tr[u].val << endl;
}

void get_prev(int val) {
	split(root, val - 1, x, y);
	
	int u = x;
	while (tr[u].r) {
		u = tr[u].r;
	}
	
	cout << tr[u].val << endl;
	
	root = merge(x, y);
}

void get_next(int val) {
	split(root, val, x, y);
	
	int u = y;
	while (tr[u].l) {
		u = tr[u].l;
	}
	
	cout << tr[u].val << endl;
	
	root = merge(x, y);	
}

void solve() {
	cin >> n;
	
	insert(-INF);
	insert(INF);
	
	while (n--) {
		int t, x;
		cin >> t >> x;
		
		if (t == 1) {
			insert(x);
		} else if (t == 2) {
			del(x);
		} else if (t == 3) {
			get_rank(x);
		} else if (t == 4) {
			get_val(x + 1);
		} else if (t == 5) {
			get_prev(x);
		} else {
			get_next(x);
		}
	} 
}
 
int main() {	
 
	T = 1; 
//	cin >> T;
	while (T--) { 
		solve();
	}		
	
    return 0;
}
