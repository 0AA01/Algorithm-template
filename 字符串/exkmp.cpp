#include <bits/stdc++.h>

using namespace std;

typedef pair<int, int> PII;

const int N = 200010;

int n, m;
int z[N];
char s[N], s1[N], s2[N];

void exkmp() { 
	cin >> (s1 + 1) >> (s2 + 1);	
	n = strlen(s1 + 1);
	m = strlen(s2 + 1); 
	for (int i = 1; i <= n; i++) {
		s[i] = s1[i];
	}
	s[n + 1] = '#';
	for (int i = 1; i <= m; i++) {
		s[n + i + 1] = s2[i];
	}
    z[1] = 0;
    int L = 1, R = 0;
    for (int i = 2; i <= n + m + 1; i++) {
        if (i > R) {
            z[i] = 0;
        } else {
            int k = i - L + 1;
            z[i] = min(z[k], R - i + 1);
        }
        while (z[i] + i <= n + m + 1 && s[z[i] + 1] == s[z[i] + i]) {
            ++z[i];
        }
        if (i + z[i] - 1 > R) {
            R = i + z[i] - 1;
            L = i;
        }
    }
}

int main() {
	
	return 0;
}
