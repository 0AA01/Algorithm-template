#include <bits/stdc++.h>

using namespace std;

const int N = 100010, M = N * 2; 

int bfs(int u) {
    memset(d, -1, sizeof d);
    d[u] = 0; 
    int hh = 0, tt = 0;
    q[0] = u; 
    while(hh <= tt) {
        int t = q[hh++];
        for(int i = h[t]; i != -1; i = ne[i]) {
            int j = e[i];
            if(d[j] == -1) {
                d[j] = d[t] + 1;
                pre[j] = i;
                q[++tt] = j;
            }
        }
    }
    int p = u;
    for(int i = 1; i <= n; i++)
        if(d[i] > d[p])
            p = i;
    return p;
}
int dfs(int u, int father) {
    int dist1 = 0, dist2 = 0;
    for(int i = h[u]; i != -1; i = ne[i]) {
        int j = e[i];
        if(j == father) continue;

        int dist = dfs(j, u) + w[i];
        if(dist >= dist1) dist2 = dist1, dist1 = dist;
        else if(dist > dist2) dist2 = dist;
    }
    ans = max(ans, dist1 + dist2);
    return dist1;
}
void update(int ed, int st) { //�� ed ���Ƶ� st������·�Ͼ����ı߶�ȡ��
    while(ed != st) {
        w[pre[ed]] = -1; //�����ȡ��
        w[pre[ed] ^ 1] = -1; //�����ȡ��
        ed = e[pre[ed] ^ 1]; //�˵������ߵ���㣬����һ���ߵ��ĵ�
    }
}

int main() {	
	return 0;
}
