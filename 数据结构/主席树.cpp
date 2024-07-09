#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;
typedef pair<PII, int> PIII;

const int N = 100005, M = 600005 * 25, MOD = 1e9 + 7, INF = 1e9, Eps = 1e-7;

struct Tree {
	int l, r;
	int cnt;
}tr[N * 20]; 

int T, n, m, k;x 
int a[N], root[N], idx; 
vector<int> ve[N];

void pushup(int u) {
	tr[u].cnt = tr[tr[u].l].cnt + tr[tr[u].r].cnt;
}

int build(int l, int r) {
	int p = ++idx;
	if (l == r) return p;
	
	int mid = l + r >> 1;	
	tr[p].l = build(l, mid);
	tr[p].r = build(mid + 1, r);
	return p;
}

int insert(int p, int l, int r, int x) {
	int q = ++idx;
	tr[q] = tr[p];
	if (l == r) {
		tr[q].cnt++;
		return q;
	}
	int mid = l + r >> 1;
	if (x <= mid) tr[q].l = insert(tr[p].l, l, mid, x);
	else tr[q].r = insert(tr[p].r, mid + 1, r, x);
	pushup(q);
	return q;
}

int query(int p, int q, int l, int r, int L, int R) {
//	cout << l << " " << r << " " << L << " " << R << endl;
	if (l >= L && r <= R) {
		return tr[q].cnt - tr[p].cnt;
	}
	int mid = l + r >> 1;
	
	int ans = 0;
	if (L <= mid) ans += query(tr[p].l, tr[q].l, l, mid, L, R);
	if (R > mid) ans += query(tr[p].r, tr[q].r, mid + 1, r, L, R);
	return ans;
}

void solve() {
	cin >> n >> k;
	
	root[0] = build(0, n);
	
	for (int i = 1; i <= n; i++) {
		cin >> a[i];
		ve[a[i]].push_back(i);
		int t = 0;
		if (ve[a[i]].size() > k) {
			t = ve[a[i]][ve[a[i]].size() - k - 1];
		}
		root[i] = insert(root[i - 1], 0, n, t);
	} 
	
	cin >> m;
	
	int last = 0;
	while (m--) {
		int l, r;
		cin >> l >> r;
		l = (l + last) % n + 1;
		r = (r + last) % n + 1;
		if (l > r) swap(l, r);
		
		last = query(root[l - 1], root[r], 0, n, 0, l - 1);
		cout << last << endl;
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
