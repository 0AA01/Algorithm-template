#include <bits/stdc++.h>

using namespace std;

const int N = 1000010;

int n;
char str[N];
int tr[N][26], idx;
int fail[N];
int q[N], cnt[N];

void insert() {
	int p = 0;
	for (int i = 0; str[i]; i++) {
		int t = str[i] - 'a';
		if (tr[p][t] == 0) tr[p][t] = ++idx;
		p = tr[p][t];
	}
	cnt[p]++;
}
void build() {
	int hh = 0, tt = -1;
	for (int i = 0; i < 26; i++) {
		if (tr[0][i] != 0) {
			q[++tt] = tr[0][i];
		}
	}
	while (hh <= tt) {
		int t = q[hh++];
		for (int k = 0; k < 26; k++) {
			if (tr[t][k] == 0) {
				tr[t][k] = tr[fail[t]][k];
			} else {
				fail[tr[t][k]] = tr[fail[t]][k];
				q[++tt] = tr[t][k];
			}
		}
	}
}

int main() {
	cin >> n;
	for (int i = 0; i < n; i++) {
		cin >> str;
		insert();
	}
	build();
	cin >> str;
	int res = 0;
	for (int i = 0, j = 0; str[i]; i++) {
		int t = str[i] - 'a';
		j = tr[j][t];
		int p = j;
		while (p && cnt[p] != -1) {
			res += cnt[p];
			cnt[p] = -1;
		}
	}
	cout << res << endl;	
	return 0;
}
