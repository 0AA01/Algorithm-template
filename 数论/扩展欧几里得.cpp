#include <bits/stdc++.h>
 
using namespace std;
/*
	ax + by = c
	
	d = exgcd(a, b, x, y)
	
	x1 = x * (c / d)
	y1 = y * (c / d)
	
	-d / 2 <= t <= d / 2
	x = x1 - (b / d) * t 
	y = y1 + (a / d) * t
	
	最小正整数解 x = (x % (b / d) + (b / d)) % (b / d) 
*/
int exgcd(int a, int b, int &x, int &y) {
	if (b == 0) {
		x = 1;
		y = 0;
		return a;
	}
	int d = exgcd(b, a % b, y, x);
	y -= a / b * x;
	return d;
}

int main() {
	int a, b, c;
	cin >> a >> b >> c;
	
	int x, y;
	int d = exgcd(a, b, x, y);
	if (c % d != 0) {
		cout << "-1" << endl; 
	} else {
		int t = c / d;
		cout << (-x * t) << " " << (-y * t) << endl;
	}
	
	return 0;
} 
