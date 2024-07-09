#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;
typedef pair<PII, int> PIII;

const int N = 600005, M = 600005 * 25, MOD = 1e9 + 7, INF = 1e9, Eps = 1e-7;

int T, n, m, k;
int tr[M][2], root[N], max_id[M], idx;
int s[N];

void insert(int i, int k, int p, int q) {
	
	if (k < 0) {
		max_id[q] = i;
		return;
	}
	
	int t = s[i] >> k & 1;
	if (tr[p][t ^ 1]) tr[q][t ^ 1] = tr[p][t ^ 1];
	tr[q][t] = ++idx;
	insert(i, k - 1, tr[p][t], tr[q][t]);
	max_id[q] = max(max_id[tr[q][0]], max_id[tr[q][1]]);
}

int query(int x, int root, int sum) {
	int p = root;
	for (int i = 23; i >= 0; i--) {
		int t = sum >> i & 1;
		if (max_id[tr[p][t ^ 1]] >= x) {
			p = tr[p][t ^ 1];
		} else {
			p = tr[p][t];
		}
	}
	return sum ^ s[max_id[p]];
}

void solve() {
	cin >> n >> m;
	
	max_id[0] = -1;
	root[0] = ++idx;
	insert(0, 23, 0, root[0]);
	
	for (int i = 1; i <= n; i++) {
		cin >> s[i];
		s[i] = s[i] ^ s[i - 1];
		root[i] = ++idx;
		insert(i, 23, root[i - 1], root[i]);
	}
	while (m--) {
		char ops[3];
		cin >> ops;
		if (*ops == 'A') {
			int x;
			cin >> x;
			++n;
			s[n] = x ^ s[n - 1];
			root[n] = ++idx;
			insert(n, 23, root[n - 1], root[n]);
		} else {
			int l, r, x;
			cin >> l >> r >> x;
			cout << query(l - 1, root[r - 1], s[n] ^ x) << endl;
		}
	}
} 

int main() {
	
	T = 1;
//	cin >> T;
	while (T--) {
		solve();
	}
	 
	return 0;
}  
