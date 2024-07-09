#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 210, M = 5010 * 2, T = 510;
const ll INF = 1e18;

int n, m, s, t;
int h[N], e[M], ne[M], idx;
ll w[M];
int cur[N], dis[N];

void add(int a, int b, ll c) {
	e[idx] = b; w[idx] = c; ne[idx] = h[a]; h[a] = idx++;
}

bool bfs() {
	for (int i = 0; i <= n; i++) {
		dis[i] = 0;
		cur[i] = h[i];
	}
	queue<int> q;
	q.push(s);
	dis[s] = 1;
	while (!q.empty()) {
		int u = q.front(); 
		q.pop();
		for (int i = h[u]; i != -1; i = ne[i]) {
			int j = e[i];
			if (w[i] && !dis[j]) {
				dis[j] = dis[u] + 1;
				if (j == t) return true;
				q.push(j);
			}
		}
	}
	return false;
}

ll dfs(int u, ll m) {
	if (u == t) return m;
	ll flow = 0;
	for (int i = cur[u]; i != -1; cur[u] = i = ne[i]) {
		int j = e[i];
		if (w[i] && dis[j] == dis[u] + 1) {
			ll f = dfs(j, min(m, w[i]));
			w[i] -= f;
			w[i ^ 1] += f;
			m -= f;
			flow += f;
			if (!m) break;
		}
	}
	if (!flow) dis[u] = -1;
	return flow;
}

ll dinic() {
	ll flow = 0;
	while (bfs()) {
		flow += dfs(s, INF);
	}
	return flow;
}

int main() {
	scanf("%d%d%d%d", &n, &m, &s, &t);
	
	memset(h, -1, sizeof h);
	for (int i = 0; i < m; i++) {
		int a, b, c;
		scanf("%d%d%d", &a, &b, &c);
		add(a, b, c);
		add(b, a, 0);
	}
	
	printf("%lld\n", dinic());
	
	return 0;
}
