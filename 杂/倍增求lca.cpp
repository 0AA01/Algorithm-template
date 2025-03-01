#include <bits/stdc++.h>

using namespace std;

const int N = 40010, M = N * 2;

int n, m;
int h[N], e[M], ne[M], idx;
int q[N], depth[N], fa[N][16];

void add(int a, int b) {
    e[idx] = b, ne[idx] = h[a], h[a] = idx++;
}

void bfs(int root) {
    memset(depth, 0x3f, sizeof depth);
    int head = 0, tail = -1;
    q[++tail] = root, depth[0] = 0, depth[root] = 1;

    while (head <= tail) {
        int t = q[head++];
        for (int i = h[t]; ~i; i = ne[i]) {
            int j = e[i];
            if (depth[j] > depth[t] + 1) {
                depth[j] = depth[t] + 1;
                q[++tail] = j;
                fa[j][0] = t;
                for (int k = 1; k <= 15; k++)
                    fa[j][k] = fa[fa[j][k - 1]][k - 1];
            }
        }
    }
}

int lca(int a, int b) {
    if (depth[a] < depth[b]) swap(a, b);
    for (int k = 15; k >= 0; k--)
        if (depth[fa[a][k]] >= depth[b])
            a = fa[a][k];
    if (a == b) return a;
    for (int k = 15; k >= 0; k--)
        if (fa[a][k] != fa[b][k]) {
            a = fa[a][k];
            b = fa[b][k];
        }
    return fa[a][0];
}

int main() {
    cin >> n;

    memset(h, -1, sizeof h);
    int root;
    for (int i = 0; i < n; i++) {
        int a, b;
        cin >> a >> b;
        if (b == -1) root = a;
        else add(a, b), add(b, a);
    }

    bfs(root);

    cin >> m;
    for (int i = 0; i < m; i++) {
        int a, b;
        int t = lca(a, b);
        if (t == a) cout << 1 << endl;
        else if (t == b) cout << 2 << endl;
        else cout << 0 << endl;
    }

    return 0;
} 
