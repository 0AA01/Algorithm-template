#include <bits/stdc++.h>
using namespace std;

typedef long long LL;

const int N = 2e5 + 10;

struct Seg {
    int x, y1, y2, c;
}p[N];
int xs[N], sz;
struct Node {
    int l, r, mn, s, add;
}tr[N * 4];

void build(int u, int l, int r) {
    tr[u] = {l, r, 0, 0, 0};
    if (l == r) {
        tr[u].s = xs[r + 1] - xs[l];
    }
    else {
        int mid = l + r >> 1;
        build(u << 1, l, mid);
        build(u << 1 | 1, mid + 1, r);
        tr[u].s = tr[u << 1].s + tr[u << 1 | 1].s;
    }
}

void pushdown(int u) {
    if (tr[u].add) {
        tr[u << 1].mn += tr[u].add;
        tr[u << 1].add += tr[u].add;
        tr[u << 1 | 1].mn += tr[u].add;
        tr[u << 1 | 1].add += tr[u].add;
        tr[u].add = 0;
    }
}

void modify(int u, int l, int r, int c) {
    if (tr[u].l >= l && tr[u].r <= r) {
        tr[u].mn += c;
        tr[u].add += c;
    }
    else {
        pushdown(u);
        int mid = tr[u].l + tr[u].r >> 1;
        if (l <= mid) modify(u << 1, l, r, c);
        if (r >= mid + 1) modify(u << 1 | 1, l, r, c);
        tr[u].mn = min(tr[u << 1].mn, tr[u << 1 | 1].mn);
        tr[u].s = 0;
        if (tr[u << 1].mn == tr[u].mn) tr[u].s += tr[u << 1].s;
        if (tr[u << 1 | 1].mn == tr[u].mn) tr[u].s += tr[u << 1 | 1].s;
    }
}

int find(int x) {
    int l = 1, r = sz;
    while (l < r) {
        int mid = l + r >> 1;
        if (xs[mid] >= x) r = mid;
        else l = mid + 1;
    }
    return l;
}

int main() {
    int n;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        int x1, y1, x2, y2;
        scanf("%d %d %d %d", &x1, &y1, &x2, &y2);
        p[i << 1] = {x1, y1, y2, 1};
        p[i << 1 | 1] = {x2, y1, y2, -1};
        xs[++sz] = y1, xs[++sz] = y2;
    }
    sort(xs + 1, xs + sz + 1);
    sz = unique(xs + 1, xs + sz + 1) - xs - 1;
    sort(p, p + 2 * n, [&](Seg &a, Seg &b) {
        return a.x < b.x;
    });
    build(1, 1, sz - 1);
    LL ret = 0;
    for (int i = 0; i < 2 * n - 1; i++) {
        modify(1, find(p[i].y1), find(p[i].y2) - 1, p[i].c);
        LL len = xs[sz] - xs[1] - !tr[1].mn * tr[1].s;
        ret += len * (p[i + 1].x - p[i].x);
    }
    printf("%lld", ret);
    
    return 0;
}
