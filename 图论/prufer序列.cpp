#include <bits/stdc++.h> 

using namespace std;

typedef long long ll;

const int N = 5000010, M = N * 2;

int T, n, m, k;
int f[N], d[N], p[N];

void tree2prufer() {
	for (int i = 1; i <= n - 1; i++) {
		scanf("%d", &f[i]);
		d[f[i]]++;
	}
	
	for (int i = 0, j = 1; i < n - 2; j++) {
		while (d[j]) ++j;
		p[++i] = f[j];
		while (i < n - 2 && --d[p[i]] == 0 && p[i] < j) {
			++i;
			p[i] = f[p[i - 1]];
		}
	}
	
	ll res = 0;
	for (int i = 1; i <= n - 2; i++) {
		res ^= (ll)i * p[i];
	}
	printf("%lld\n", res);
}

void prufer2tree() {
	for (int i = 1; i <= n - 2; i++) {
		scanf("%d", &p[i]);
		d[p[i]]++;
	}
	p[n - 1] = n;
	
	for (int i = 1, j = 1; i <= n - 1; i++, j++) {
		while (d[j]) j++;
		f[j] = p[i];
		while (i <= n - 2 && --d[p[i]] == 0 && p[i] < j) {
			f[p[i]] = p[i + 1];
			++i;
		}
	}
	
	ll res = 0;
	for (int i = 1; i <= n - 1; i++) {
		res ^= (ll)i * f[i];
	}
	printf("%lld\n", res);
} 

int main() {
	scanf("%d%d", &n, &m);
	
	if (m == 1) { // 将tree变成prufer序列 
		tree2prufer();
	} else { // 将prufer变成tree序列
		prufer2tree();
	}
	
	return 0;
}
