#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;

const int N =  200010, MOD = 998244353;

struct Node {
	double len;
	int x, y, id, type;
	bool operator< (const Node &t) const {
		if (t.type != type) {
			return type < t.type;
		}
		return t.x * y - t.y * x > 0; // ²æ»ý 
	}
};
int T, n, m;
int x[N], y[N], z[N];
vector<Node> a;
double calc(int x, int y) {
	int dx = x - 0, dy = y - 0;
	return sqrt(dx * dx + dy * dy);
}

void solve() {
	cin >> n >> m;
	for (int i = 1; i <= n; i++) {
		cin >> x[i] >> y[i];
		if (x >= 0 && y >= 0) {
			a.push_back({calc(x[i], y[i]), x[i], y[i], i, 1});
		} else if (x >= 0 && y <= 0) {
			a.push_back({calc(x[i], y[i]), x[i], y[i], i, 2});
		} else if (x <= 0 && y <= 0) {
			a.push_back({calc(x[i], y[i]), x[i], y[i], i, 3});
		} else if (x <= 0 && y >= 0) {
			a.push_back({calc(x[i], y[i]), x[i], y[i], i, 4});
		}
	}
	sort(a.begin(), a.end());
}

int main() {
	T = 1;
	while (T--) {
		solve();	
	}	
	return 0;
} 
