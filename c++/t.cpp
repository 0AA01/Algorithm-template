#include <bits/stdc++.h>

#define random(a,b) ((a)+rand()%((b)-(a)+1))

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;

const int N = 100010, M = N * 2, INF = 1e9 + 7, Hash = 13331;

int T, n, m;

void solve() {
	
	
//	cout << 1 << endl;

	int n = random(1, 1000), m = random(1, 1000);
	cout << n << " " << m << endl;
}

signed main() {
//    freopen("data.txt", "r", stdin);
//    freopen("t1.txt", "w", stdout);
    T = random(1, 1000);
//	T = 1;
    cout << T << endl;
    while (T--) {
        solve();
    }
    return 0;
}
