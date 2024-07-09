#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<ll, ll> PII;
typedef pair<PII, int> PIII;

const int N = 105, M = 1 << 11, MOD = 1e9 + 7, INF = 1e9, Eps = 1e-7;

int T, n, m, k;
ll l, r; 
ll f[11][N][M];
vector<int> ve;

ll dp(int u, int state, int pre, int limit) {
	if (u < 0) {
		return !state;
	}
	if (!limit && !pre && f[k][u][state] != -1) return f[k][u][state];
	int up = limit ? ve[u] : k - 1;
	ll ans = 0;
	for (int i = 0; i <= up; i++) {
		int t = state;
		if (!pre || i != 0) t = t ^ (1 << i);
		ans += dp(u - 1, t, pre && i == 0, limit && i == up);
	}	
	if (!limit && !pre) f[k][u][state] = ans;
	return ans;
}

ll calc(ll x) {
	ve.clear();
	while (x) {
		ve.push_back(x % k);
		x /= k;
	}
	return dp(ve.size() - 1, 0, 1, 1);
}

void solve() {
	cin >> k >> l >> r;
	cout << calc(r) - calc(l - 1) << endl;
} 

int main() {
	
	memset(f, -1, sizeof f);
	
	T = 1;
	cin >> T;
	while (T--) {
		solve();
	}
	 
	return 0;
}  
