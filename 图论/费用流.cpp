#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<ll, ll> PII;

const int N = 5010, M = 50010 * 2;
const ll INF = 1ll << 60; 

struct MinCostGraph {
	int s, t, tot;
	int h[N], e[M], ne[M], idx;
	ll w1[M], w2[M], flow, cost;
	ll dis[N], pf[N];
	bool vis[N];
	int pre[N];
	void add(int a, int b, ll v1, ll v2, ll c) {
		e[idx] = b; w1[idx] = v1; w2[idx] = c; ne[idx] = h[a]; h[a] = idx++;
		e[idx] = a; w1[idx] = v2; w2[idx] = -c; ne[idx] = h[b]; h[b] = idx++;
	}
	bool spfa() {
		ll INF = 1ll << 60;
		for (int i = 1; i <= tot; i++) {
			dis[i] = INF;
			vis[i] = false;
			pre[i] = -1;
			pf[i] = INF;
		}
		dis[s] = 0;
		vis[s] = true;
		queue<int> q;
		q.push(s);
		while (!q.empty()) {
			int u = q.front();
			for (int i = h[u]; i != -1; i = ne[i]) {
				int j = e[i];
				if (w1[i] && dis[j] > dis[u] + w2[i]) {
					dis[j] = dis[u] + w2[i];
					pre[j] = i;
					pf[j] = min(pf[u], w1[i]);
					if (!vis[j]) {
						vis[j] = true;
						q.push(j);
					}
				}
			}
			q.pop();
			vis[u] = false;
		}
		return dis[t] != INF;
	} 
	
	void augment() {
		ll f = pf[t];
		
		flow += f;
		cost += f * dis[t];
		int u = t;
		while (~pre[u]) {
			w1[pre[u]] -= f;
			w1[pre[u] ^ 1] += f;
			u = e[pre[u] ^ 1];
		}
	} 
	
	PII solve() {
		flow = 0, cost = 0;
		while (spfa()) {
			augment();
		}
		return {flow, cost};
	}
	void init(int _s, int _t, int _tot) {
		s = _s; t = _t; tot = _tot;
		idx = 0;
		for (int i = 1; i <= tot; i++) h[i] = -1;
	}
}g;

int n, m, s, t, tot;
int id[55][55];

int main() {
	
	return 0;
} 
