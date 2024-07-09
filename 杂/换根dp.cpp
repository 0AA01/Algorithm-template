#include <bits/stdc++.h> 

using namespace std;

typedef long long ll;

const int N = 200010, M = N * 2;

int T, n, m, k;
int h[N], e[M], w[M], ne[M], idx;
int f[N], v[N];

void add(int a, int b, int c) {
	e[idx] = b; w[idx] = c; ne[idx] = h[a]; h[a] = idx++;
}

void up(int u, int fa) {
	f[u] = 0;
	bool flag = true;
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (j == fa) continue;
		up(j, u);
		
		f[u] += min(w[i], f[j]);
		
		flag = false;
	}
	if (flag) {
		f[u] = (1 << 30);
	}
}

void down(int u, int fa) {
	v[u] = 0;
	for (int i = h[u]; i != -1; i = ne[i]) {
		int j = e[i];
		if (j == fa) continue;
		if (f[u] + v[u] - min(f[j], w[i])) {
			v[j] = min(w[i], f[u] + v[u] - min(f[j], w[i]));	
		} else {
			v[j] = w[i];
		}		
		down(j, u);
	}
}

void solve() {
	cin >> n;
	
	idx = 0;
	memset(h, -1, sizeof h);
	
	for (int i = 0; i < n - 1; i++) {
		int a, b, c;
		cin >> a >> b >> c;
		add(a, b, c);
		add(b, a, c);
	}	
	
	up(1, 0);
	down(1, 0);
	
	int ans = 0;
	for (int i = 1; i <= n; i++) {
		if (f[i] != (1 << 30)) {
			ans = max(ans, f[i] + v[i]);
		} else {
			ans = max(ans, v[i]);
		}
	}
	cout << ans << endl;
}

int main() {
	T = 1;
	cin >> T;
	while (T--) {
		solve();
	}
	
	return 0;
}
