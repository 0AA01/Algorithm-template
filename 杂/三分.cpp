#include <bits/stdc++.h>

using namespace std;

const int N = 100010, M = 20;

int main() {	
	int l = 0, r = 1e9;
	
	// 求最小值 
	while (l + 2 < r) {
		int m1 = l + (r - l) / 3, m2 = l + (r - l) / 3 * 2;
		if (f(m1) > f(m2)) l = m1;
		else r = m2;
	} 
	// 求最大值 
	while (l + 2 < r) {
		int m1 = l + (r - l) / 3, m2 = l + (r - l) / 3 * 2;
		if (f(m1) < f(m2)) l = m1;
		else r = m2;
	} 
	return 0;
} 
