#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> PII;

const int N = 110, M = 11, MOD = 1e9 + 7;

int n, m, k, x;
ll f[N], g[N][N];

void mul(ll a[][N], ll b[][N]) {
	ll t[N][N] = {0};
	for (int i = 0; i < x; i++)
		for (int k = 0; k < x; k++)
			if (a[i][k])
				for (int j = 0; j < x; j++)
					if (b[k][j])
						t[i][j] = (t[i][j] + a[i][k] * b[k][j]) % MOD;
	memcpy(a, t, sizeof t);
}

void mul(ll a[], ll b[][N]) {
	ll t[M] = {0};
	for (int i = 0; i < x; i++)
		for (int j = 0; j < x; j++)
				t[i] = (t[i] + a[j] * b[j][i]) % MOD;
	memcpy(a, t, sizeof t);
}

int main() {
	
	while (k) {
		if (k & 1) mul(f, g);
		mul(g, g);
		k >>= 1;
	}
	 
	return 0;
} 
