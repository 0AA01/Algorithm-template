#include<bits/stdc++.h>

using namespace std;

const int N = 200010;

int n, m;
int a[N],f[N][21];

void insert(int u) {
	f[u][0] = a[u];
	for (int i = 1; u - (1 << i) >= 0; i++) {
		f[u][i] = max(f[u][i - 1], f[u - (1 << i - 1)][i - 1]);
	}
}

int query(int l, int r) {
	int k = log(r - l + 1) / log(2);
	return max(f[r][k], f[l + (1 << k) - 1][k]);
}

int main(){
    return 0;
}
