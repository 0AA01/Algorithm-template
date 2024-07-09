#include <bits/stdc++.h>
 
using namespace std;
 
typedef long long ll;
typedef pair<int, int> PII;
 
const int N = 110, M = N * 2, MOD = 998244353;
const double eps = 1e-10;
  
int T, n, m, k;
double a[N][N];

void gauss() {
	
	int l = 1;
	for (int c = 1; c <= n; c++) {
		int t = l;
		for (int i = l; i <= n; i++) 
			if (fabs(a[i][c]) > fabs(a[t][c]))
				t = i;
		if (fabs(a[t][c]) < eps) continue;
		for (int i = c; i <= n + 1; i++) swap(a[l][i], a[t][i]);
		
		for (int i = n + 1; i >= c; i--) a[l][i] /= a[l][c];
		for (int i = l + 1; i <= n; i++) {
			if (fabs(a[i][c]) > eps) {
				for (int j = n + 1; j >= c; j--) {
					a[i][j] -= a[l][j] * a[i][c];
				}
			}
		}		
		++l;
	}	
	
	if (l <= n) {
		cout << "No Solution" << endl;
	} else {
		for (int i = n - 1; i >= 1; i--) {
			for (int j = i + 1; j <= n; j++) {
				a[i][n + 1] -= a[i][j] * a[j][n + 1];
			}
		}
		for (int i = 1; i <= n; i++) {
			printf("%.2f\n", a[i][n + 1]);	
		}
	}	
}

void solve() {
	cin >> n;
	
	for (int i = 1; i <= n; i++) {
		for (int j = 1; j <= n + 1; j++) {
			cin >> a[i][j];
		}
	} 
	
	gauss(); 
}
 
int main() {	
 
	T = 1; 
//	cin >> T;
	while (T--) {
		solve();
	}		
	
    return 0;
}

