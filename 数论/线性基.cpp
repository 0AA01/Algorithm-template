#include <bits/stdc++.h>
 
using namespace std;
 
typedef long long ll;
typedef pair<int, int> PII;
 
const int N = 60, M = N * 2, MOD = 998244353;
const double eps = 1e-10;
  
int T, n, m, k;
ll num[N + 5];

bool insert(ll x) {
	for (int i = N - 1; i >= 0; i--) {
		if (x & (1ll << i)) {
			if (num[i] == 0) {
				num[i] = x;
				return true;
			}
			x ^= num[i];
		}
	}
	return false;
}

ll query() {
	ll ans = 0;
	for (int i = N - 1; i >= 0; i--) {
		ans = max(ans, ans ^ num[i]);
	}
	return ans;
}

void solve() {
	cin >> n;
	for (int i = 1; i <= n; i++) {
		ll x;
		cin >> x;
		insert(x);
	}
	cout << query() << endl; 
}
 
int main() {	
 
	T = 1; 
//	cin >> T;
	while (T--) {
		solve();
	}		
	
    return 0;
}

