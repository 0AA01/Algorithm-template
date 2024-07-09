#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 1000010;

int n, m;
int p[N], pr[N], pe[N], cnt;
int a[N], b[N], c[N], u[N]; // ���Ӹ��������Ӻ͡�ŷ��������Ī����˹���� 

void get_primes(int n) {
	p[1] = 1;
	for (int i = 2; i <= n; i++) {
		if (!p[i]) {
			p[i] = i;
			pe[i] = i;
			pr[cnt++] = i;
		}
		for (int j = 0; i * pr[j] <= n; j++) {
			p[i * pr[j]] = pr[j];
			if (p[i] == pr[j]) {
				pe[i * pr[j]] = pe[i] * pr[j];
				break;
			} else {
				pe[i * pr[j]] = pr[j];
			}
		} 
	}	
} 

int main() {
	
	n = N - 1;
	
	get_primes(N - 1);
	
	cout << pe[5] << endl;
	
	// ���Ӹ���
	a[1] = 1;
	for (int i = 2; i <= n; i++) {
//		cout << i << endl; 
		if (i == pe[i]) {
			a[i] = a[i / p[i]] + 1;
		} else {
			a[i] = a[i / pe[i]]	* a[pe[i]];
		}
	}
	
	// ���Ӻ� 
	b[1] = 1;
	for (int i = 2; i <= n; i++) {
		if (i == pe[i]) {
			b[i] = b[i / p[i]] + i;
		} else {
			b[i] = b[i / pe[i]] * b[pe[i]];
		}
	}
	
	// ŷ������
	c[1] = 1;
	for (int i = 2; i <= n; i++) {
		if (i == pe[i]) {
			c[i] = i / p[i] * (p[i] - 1);
		} else {
			c[i] = c[i / pe[i]] * c[pe[i]];
		}
	} 
	
	// Ī����˹ 
	u[1] = 1;
	for (int i = 2; i <= n; i++) {
		if (i == pe[i]) {
			if (i == p[i]) u[i] = -1;
			else u[i] = 0;
		} else {
			u[i] = u[i / pe[i]] * u[pe[i]];
		}
	}
	
    return 0;
}
