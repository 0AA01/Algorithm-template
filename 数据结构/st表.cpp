#include <bits/stdc++.h>

using namespace std;

const int N = 100010, M = 20;

int n, m;
int f[N][M];

void init() {
	for (int j = 0; j < M; j++) {
		for (int i = 1; i + (1 << j) - 1 <= n; i++) {
			if (j == 0) f[i][j] = a[i];
			else f[i][j] = max(f[i][j - 1], f[i + (1 << j - 1)][j - 1]); 
		}
	}
}

int query(int l, int r) {
	int k = log(r - l + 1) / log(2);
	return max(f[l][k], f[r - (1 << k) + 1][k]);
}

int main() {	
	return 0;
} 
