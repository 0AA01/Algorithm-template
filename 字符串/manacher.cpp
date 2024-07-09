#include <bits/stdc++.h>
 
using namespace std;
 
typedef long long ll;
typedef pair<ll, int> PII;
 
const int N = 10000010, M = N * 2, MOD = 998244353;

int T, n, m, k;
char a[N * 2], b[N * 2];
int p[N * 2];

void manacher() {
	n = strlen(a + 1);
	m = 0;
	b[++m] = '#';
	for (int i = 1; i <= n; i++) {
		b[++m] = a[i];
		b[++m] = '#';
	}
	int M = 0, R = 0;
	for (int i = 1; i <= m; i++) {
		if (i > R) {
			p[i] = 1;
		} else {
			p[i] = min(p[2 * M - i], R - i + 1);
		}
		while (i - p[i] >= 1 && i + p[i] <= m && b[i - p[i]] == b[i + p[i]]) {
			++p[i];
		}
		if (i + p[i] - 1 > R) {
			R = i + p[i] - 1;
			M = i;
		}
	}
	int ans = 0;
	for (int i = 1; i <= m; i++) {
		ans = max(ans, p[i]);
	}
	cout << ans - 1 << endl;
}

void solve() {
	
	cin >> (a + 1);
	
	manacher(); 
}
 
int main() {	
 
	T = 1; 
//	cin >> T;
	while (T--) { 
		solve();
	}		
	
    return 0;
}
