#include <bits/stdc++.h>

using namespace std;

typedef long long LL;

const int N = (1 << 20) + 10;

int pr[N], tot;
int minp[N];
bool st[N];

void get_primes(int n) {
    for (int i = 2; i <= n; i++) {
        if (!st[i]) {
            pr[tot++] = i;
            minp[i] = i;
        }
        for (int j = 0; i * pr[j] <= n; j++) {
            st[i * pr[j]] = true;
            minp[i * pr[j]] = pr[j];
            if (i % pr[j] == 0) break;
        }
    }
}

int main() {
    return 0;
}
