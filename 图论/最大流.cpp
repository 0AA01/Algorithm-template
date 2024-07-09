#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 20010, M = 400010;

struct FlowGraph {
	int s, t, tot;
	int h[N], e[M], ne[M], idx;
	ll w[M];
	int dis[N], cur[N];
	void add(int a, int b, ll v1, ll v2) {
		e[idx] = b; w[idx] = v1; ne[idx] = h[a]; h[a] = idx++;
		e[idx] = a; w[idx] = v2; ne[idx] = h[b]; h[b] = idx++;
	}
	bool bfs() {
		for (int i = 1; i <= tot; i++) {
			dis[i] = 0;
			cur[i] = h[i];
		}
		queue<int> q;
		q.push(s);
		dis[s] = 1;
		while (!q.empty()) {
			int u = q.front(); q.pop();
			for (int i = h[u]; ~i; i = ne[i]) {
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
		ll ans = 0;
		for (int i = cur[u]; ~i; cur[u] = i = ne[i]) {
			int j = e[i];
			if (w[i] && dis[j] == dis[u] + 1) {
				ll f = dfs(j, min(w[i], m));
				w[i] -= f;
				w[i ^ 1] += f;
				m -= f;
				ans += f;
				if (!m) break;
			}
		}
		if (!ans) {
			dis[u] = -1;
		}
		return ans;
	}
	ll dinic() {
		ll ans = 0;
		while (bfs()) {
			ans += dfs(s, 1e18);
		}
		return ans;
	}
	void init(int _s, int _t, int _tot) {
		s = _s; t = _t; tot = _tot;
		idx = 0;
		for (int i = 1; i <= tot; i++) h[i] = -1;
	}
}g;

int main() {
	return 0;
} 
