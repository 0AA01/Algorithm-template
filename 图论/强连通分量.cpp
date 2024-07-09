#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 100010, M = N * 2;

int n;
int h[N], e[M], ne[M], idx;
int dfn[N], low[N], id[N], cnt[N], depth, scc;
int stk[N], top;
bool st[N];

void add(int a, int b) {
	e[idx] = b; ne[idx] = h[a]; h[a] = idx++;
}

void tarjan(int u) {
	dfn[u] = low[u] = ++depth;
	st[u] = true;
	stk[++top] = u;
	
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
			int t = stk[top--];
			st[t] = false;
			id[t] = scc;
			cnt[scc]++;
			if (t == u) break;
		}
	}		
}

int main() {
}
