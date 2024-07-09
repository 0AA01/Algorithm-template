#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

const int N = 100010, M = 300010 * 2, INF = 1E9 + 7;

struct Node
{
    int a, b, w;
    bool flag;
    bool operator< (const Node &t)  const
    {
        return w < t.w;
    }
}edge[M];

int n, m;
int h[N], e[M], w[M], ne[M], idx;
int p[N];
int dep[N], fa[N][17], d1[N][17], d2[N][17];
ll sum;

int find(int x) {
    return p[x] != x ? p[x] = find(p[x]) : p[x];
}

void add(int a, int b, int c) {
    e[idx] = b; w[idx] = c; ne[idx] = h[a]; h[a] = idx++;
}

void bfs() {
    memset(dep, 0x3f, sizeof dep);
    dep[0] = 0;
    dep[1] = 1;
    queue<int> q;
    q.push(1);
    while (q.size()) {
        int t = q.front();
        q.pop();
        for (int i = h[t]; i != -1; i = ne[i]) {
            int j = e[i];
            if (dep[j] > dep[t] + 1) {
                q.push(j);
                dep[j] = dep[t] + 1;
                fa[j][0] = t;
                d1[j][0] = w[i], d2[j][0] = -INF;
                for (int k = 1; k <= 16; k++) {
                    fa[j][k] = fa[fa[j][k - 1]][k - 1];
                    int tmp[4] = {d1[j][k - 1], d2[j][k - 1], d1[fa[j][k - 1]][k - 1], d2[fa[j][k - 1]][k - 1]};
                    for (int u = 0; u < 4; u++) {
                        if (tmp[u] > d1[j][k]) {
                            d2[j][k] = d1[j][k];
                            d1[j][k] = tmp[u];
                        } else if (d1[j][k] != tmp[u] && tmp[u] > d2[j][k]) {
                            d2[j][k] = tmp[u];
                        }
                    }
                } 
            }
        }
    }
}

int stk[N * 2];
ll lca(int a, int b, int c) {
    if (dep[a] > dep[b]) swap(a, b);
    int top = 0;
    for (int k = 16; k >= 0; k--) {
        if (dep[fa[b][k]] >= dep[a]) {
            stk[++top] = d1[b][k], stk[++top] = d2[b][k];
            b = fa[b][k];
        }
    }
    if (a != b) {
        for (int k = 16; k >= 0; k--) {
            if (fa[a][k] != fa[b][k]) {
                stk[++top] = d1[a][k], stk[++top] = d1[b][k];
                stk[++top] = d2[a][k], stk[++top] = d2[b][k];
                a = fa[a][k];
                b = fa[b][k];
            }
        }
        stk[++top] = d1[a][0], stk[++top] = d1[b][0];
        stk[++top] = d2[a][0], stk[++top] = d2[b][0];
    }
    ll t1 = -INF, t2 = -INF;
    for (int i = 1; i <= top; i++) {
        if (stk[i] > t1) {
            t2 = t1;
            t1 = stk[i];
        } else if (t1 != stk[i] && stk[i] > t2) {
            t2 = stk[i];
        }
    }
    if (c > t1) return sum + c - t1;
    if (c > t2) return sum + c - t2;
    return INF;
}

int main()
{
    cin >> n >> m;
    for (int i = 0; i < m; i ++ ) {
        int a, b, c;
        scanf("%d%d%d", &a, &b, &c);
        edge[i] = {a, b, c};    
    }
    
    for (int i = 1; i <= n; i++) {
        p[i] = i;
    }
    
    sort(edge, edge + m);
    
    memset(h, -1, sizeof h);
    for (int i = 0; i < m; i ++ )
    {
        int a = edge[i].a, b = edge[i].b, w = edge[i].w;
        int fa = find(a), fb = find(b);
        
        if (fa != fb) {
            sum += w;
            edge[i].flag = true;
            p[fa] = fb;
            add(a, b, w);
            add(b, a, w);
        }
    }
    
    bfs();
    
    ll res = 1e18;
    for (int i = 0; i < m; i++) 
        if (!edge[i].flag) {
            res = min(res, (ll)lca(edge[i].a, edge[i].b, edge[i].w));
        }
    
    cout << res << endl;
    
    return 0;
}
