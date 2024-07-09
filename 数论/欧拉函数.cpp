#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = (1 << 20) + 10;

int pr[N], phi[N], cnt;
bool st[N];

void get_primes(int n) {
	phi[1] = 1;
	for (int i = 2; i <= n; i++) {
		if (!st[i]) {
			phi[i] = i - 1;
			pr[cnt++] = i;
		}
		for (int j = 0; i * pr[j] <= n; j++) {
			st[i * pr[j]] = true;
			if (i % pr[j] == 0) {
				phi[i * pr[j]] = phi[i] * pr[j];
				break;
			} else {
				phi[i * pr[j]] = phi[i] * (pr[j] - 1);
			}
		}
	}
}

int main() {
    get_primes(N - 1);
    return 0;
}
