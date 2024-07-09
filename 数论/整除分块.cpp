#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;

const int N = 1000010, M = 55, MOD = 1e9 + 7;

int T, n, m, k;

void solve() {
	ll n, m;
	cin >> n >> m;
	
	ll res = n * 1ll * m;
	for (int i = 1; i <= n; i++) {
		
		ll d = m / i, l = i, r;
		if (d == 0) {
			r = n;
		} else {
			r = min(m / d, n);			
		}
		
		res -= d * (l + r) * (r - l + 1) / 2;
		i = r;
	}
	
	cout << res << endl;
}

int main() {
	
	T = 1;
//	cin >> T;
	while (T--) {
		solve();
	}
	 
	return 0;
} 
