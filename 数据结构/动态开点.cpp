#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<ll, ll> PII;
typedef pair<PII, int> PIII;

const int N = 15001000, M = N * 2, MOD = 1e9 + 7, INF = 1e9, Eps = 1e-7;

struct Tree {
	int l, r;
	int sum, lazy;
}tr[N];

int T, n, m, k, tot;
int root;

void pushup(int u) {
	tr[u].sum = tr[tr[u].l].sum + tr[tr[u].r].sum;
}

void pushdown(int u, int l, int r) {
	if (tr[u].lazy) {
		int mid = l + r >> 1;
		int d = 1;
		if (tr[u].lazy == 1) d = 0;
		
		if (!tr[u].l) tr[u].l = ++tot;
		if (!tr[u].r) tr[u].r = ++tot;
		
		tr[tr[u].l].sum = (mid - l + 1) * d;
		tr[tr[u].r].sum = (r - (mid + 1) + 1) * d;
		
		tr[tr[u].l].lazy = tr[tr[u].r].lazy = tr[u].lazy;
		tr[u].lazy = 0;
	}
}

void modify(int &u, int L, int R, int l, int r, int lazy) {
	if (!u) u = ++tot;
	if (L >= l && R <= r) {
		int d = 1;
		if (lazy == 1) d = 0;
		tr[u].sum = (R - L + 1) * d;
		tr[u].lazy = lazy;
		return;
	}
	
	pushdown(u, L, R);
	int mid = L + R >> 1;
	if (l <= mid) modify(tr[u].l, L, mid, l, r, lazy);
	if (r > mid) modify(tr[u].r, mid + 1, R, l, r, lazy);
	pushup(u);
}

int query(int u, int L, int R, int l, int r) {
//	cout << L << " " << R << " " << l << " " << r << endl;
	if (L >= l && R <= r) {
		return tr[u].sum;
	}
	pushdown(u, L, R);
	int mid = L + R >> 1;
	
	int ans = 0;
	if (l <= mid)  ans += query(tr[u].l, L, mid, l, r);
	if (r > mid) ans += query(tr[u].r, mid + 1, R, l, r);
	
	return ans;
}

void solve() {
	
	scanf("%d%d", &n, &m);
	
	modify(root, 1, n, 1, n, 2);
	while (m--) {
		int l, r, k;
		scanf("%d%d%d", &l, &r, &k);
		
		modify(root, 1, n, l, r, k);
		printf("%d\n", query(root, 1, n, 1, n));
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
