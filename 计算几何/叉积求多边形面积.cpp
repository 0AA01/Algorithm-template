#include <bits/stdc++.h>

#define x first
#define y second

using namespace std;

typedef long long db;
const db EPS = 0;

inline int sign(db a) { return a < -EPS ? -1 : a > EPS; }
inline int cmp(db a, db b) { return sign(a - b); }
struct P {
    db x, y;
    P() {}
    P(db _x, db _y) : x(_x), y(_y) {}
    P operator+(P p) { return {x + p.x, y + p.y}; }
    P operator-(P p) { return {x - p.x, y - p.y}; }
    P operator*(db d) { return {x * d, y * d}; }
    P operator/(db d) { return {x / d, y / d}; }
    //�����Ӽ��˳�
    bool operator<(P p) const {
        int c = cmp(x, p.x);
        if (c)
            return c == -1;
        return cmp(y, p.y) == -1;
    }
    bool operator==(P o) const {
        return cmp(x, o.x) == 0 && cmp(y, o.y) == 0;
    }
    db dot(P p) { return x * p.x + y * p.y; } //��� (����֮�����a: >0��a<90��,==0����a=90��,<0����a>90��) |a|*|b|*cos(a)
    db det(P p) { return x * p.y - y * p.x; } //��� (����֮�����a: >0��0<a<180��,==0����a=0��||a==180����,<0����180<a>360��) |a|*|b|*sin(a) 
    db distTo(P p) { return (*this - p).abs(); } // ��P����� 
    db abs() { return sqrt(abs2()); } // ��ԭ�����
    db abs2() { return x * x + y * y; }
    int quad() const { return sign(y) == 1 || (sign(y) == 0 && sign(x) >= 0); }
}p[110];
int n;
double area(vector<P> ps) {
    db ret = 0;
    for(int i=0;i<ps.size();++i) 
        ret += ps[i].det(ps[(i + 1) % ps.size()]);
    return ret / 2.0;
}
int main() {
	cin >> n;
	vector<P> t;
	for (int i = 1; i <= n; i++) {
		db x, y;
		cin >> x >> y;
		t.push_back(P(x, y));
	}
	reverse(t.begin(), t.end());
	sort(t.begin(), t.end(), [&](P a, P b) {
		if (a.quad() != b.quad()) {
			return a.quad() > b.quad();
 		}
 		return sign(a.det(b)) > 0;
	});
	cout << fabs(area(t)) << endl;
	return 0;
}
