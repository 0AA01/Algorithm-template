#include <bits/stdc++.h>

using namespace std;

const int N = 1000;

int n, m;
char A[N], B[N];
int ne[N];

void kmp() {
	cin >> (A + 1);
	cin >> (B + 1);
	n = strlen(A + 1);
	m = strlen(B + 1);
	for (int i = 2, j = 0; i <= m; i++) {
		while (j && B[i] != B[j + 1]) j = ne[j];
		if (B[i] == B[j + 1]) {
			j++;
		}
		ne[i] = j;
	}
	for (int i = 1, j = 0; i <= n; i++) {
		while (j && A[i] != B[j + 1]) j = ne[j];
		if (A[i] == B[j + 1]) {
			j++;
		}
		if (j == m) {
			j = ne[j];
		}
	}	
}

int main() {
	return 0;
}
