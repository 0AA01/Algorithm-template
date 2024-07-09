#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 5000000;

int pr[N], phi[N], cnt;
bool st[N];
ll u[N], phi[N]; 

void init(int n) {
	u[1] = phi[1] = 1;
	for (int i = 2; i <= n; i++) {
		if (!st[i]) {
			u[i] = -1;
			phi[i] = i - 1;
			pr[cnt++] = i;
		}
		for (int j = 0; i * pr[j] <= n; j++) {
			st[i * pr[j]] = true;
			if (i % pr[j] == 0) {
				u[i * pr[j]] = 0;
				phi[i * pr[j]] = phi[i] * pr[j];
				break;
			} else {
				u[i * pr[j]] = -u[i];
				phi[i * pr[j]] = phi[i] * (pr[j] - 1);
			}
		}
	}
	for (int i = 1; i <= n; i++) {
		u[i] += u[i - 1];
		phi[i] += phi[i - 1];
	}
}

ll GetSumu(int n) {
  if(n <= N) return sumu[n]; // sumu是提前筛好的前缀和
  if(Smu[n]) return Smu[n]; // 记忆化
  ll ret = 1ll; // 单位元的前缀和就是 1 (f * 1 == ?) 
  for(ll l = 2, r; l <= n; l = r + 1) {
    r = n / (n / l); ret -= (r - l + 1) * GetSumu(n / l);
    // (r - l + 1) 就是 I 在 [l, r] 的和
  } return Smu[n] = ret; // 记忆化
}

ll GetSump(int n) {
  if(n <= N) {
  	return sump[n]; // sumu是提前筛好的前缀和
}
  if(Sphi[n]) return Sphi[n]; // 记忆化
  ll ret = 1ll * n * (n + 1ll) / 2ll; 
  for(ll l = 2, r; l <= n; l = r + 1) {
    r = n / (n / l); ret -= (r - l + 1) * GetSump(n / l);
    // (r - l + 1) 就是 I 在 [l, r] 的和
  } return Sphi[n] = ret; // 记忆化
}

int main() {
    return 0;
}
