#include <bits/stdc++.h>

using namespace std;

const int N = 110 * 2, M = 2010;

int T, n, m, depth, scc;
int h[N], e[M], ne[M], idx;
int dfn[N], low[N], bel[N];
bool st[N];
stack<int> stk;

void add(int a, int b) {
	e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void tarjan(int u) {
	dfn[u] = low[u] = ++depth;
	st[u] = true;
	stk.push(u);
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (dfn[j] == 0) {
			tarjan(j);
			low[u] = min(low[u], low[j]);
		} else {
			if (st[j]) low[u] = min(low[u], dfn[j]);
		}
	}
	
	if (dfn[u] == low[u]) {
		++scc;
		while (true) {
			int t = stk.top();
			stk.pop();
			st[t] = false;
			bel[t] = scc;
			if (t == u) break;
		}
	}	
}

void solve() {
	cin >> n >> m;
	
	idx = scc = depth = 0;
	memset(h, -1, sizeof h);
	for (int i = 0; i < 2 * n; i++) {
		dfn[i] = low[i] = 0;
	}
	for (int i = 0; i < m; i++) {
		char o1, o2;
		int x1, x2;
		cin >> o1 >> x1 >> o2 >> x2;
		
		x1--; x2--;		
		int a = x1 * 2 + (o1 == 'h'), b = x2 * 2 + (o2 == 'h'); 
		/*
			a | b == 1;
			a == 0 -> b == 1
			b == 0 -> a == 1
			(a ^ 1) == 0 -> b == 1
			(b ^ 1) == 0 -> a == 1
		*/
		add(a ^ 1, b);
		add(b ^ 1, a);
	}
	for (int i = 0; i < 2 * n; i++) {
		if (dfn[i] == 0) {
			tarjan(i);
		}
	}
	for (int i = 0; i < n; i++) {
		if (bel[2 * i] == bel[2 * i + 1]) {
			cout << "BAD" << endl;
			return;
		}
	}
	cout << "GOOD" << endl;
}

int main() {
	cin >> T;
	while (T--) {
		solve();
	}
	return 0;
} 
