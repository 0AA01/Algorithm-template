#include <bits/stdc++.h>

#define int long long

using namespace std;

typedef long long ll;
typedef pair<ll, ll> PII;

const int N = 510, M = 55, INF = 1e9 + 7, Hash = 13331, MOD = 998244353;

int T, n, m, k;
int a[N], f[N][N * 50];
vector<int> ve;

int calc(int x, int y) {
	if (x <= y) return y - x;
	int cnt = 0;
	while (true) {
		if (x / 2 > y) {
			x /= 2;
			cnt++;
		} else {
			return min(abs(y - x), x / 2 == 0 ? INF : abs(x / 2 - y) + 1) + cnt;
		}
	}
}

void solve() {
    ve.clear();
	cin >> n >> m;
	for (int i = 1; i <= n; i++) {
		cin >> a[i];
		ve.push_back(a[i]);
        int x = a[i] / 2;
        while (x) {
            ve.push_back(x);
            x /= 2;
        }
	}
	ve.push_back(0);
	sort(ve.begin(), ve.end());
	ve.erase(unique(ve.begin(), ve.end()), ve.end());
	for (int i = 1; i <= n; i++) {
		for (int j = 0; j < ve.size(); j++) {
			int x = ve[j];
			f[i][j] = calc(a[i], x);
		}
	}	
	
	ll ans = 1e18;
	for (int i = 0; i < ve.size(); i++) {
		vector<PII> t;
		for (int j = 1; j <= n; j++) {
			t.push_back({f[j][i], f[j][0]});
		}
		sort(t.begin(), t.end());

		ll sum = 0;
		for (int j = 0; j < n - m; j++) {
			sum += t[j].first;
		}
		ans = min(ans, sum);
	}
	cout << ans << endl;
}

signed main() {
//    freopen("data.txt", "r", stdin);
//    freopen("t1.txt", "w", stdout);
    T = 1;
    cin >> T;
    while (T--) {
        solve();
    }
    return 0;
}
