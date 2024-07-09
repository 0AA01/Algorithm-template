#include <bits/stdc++.h>

using namespace std;

const int N = 1000010, M = 2010;

int n;
int a[N];
int primes[N], cnt;
bool st[N];

void get_prime(int x)
{
    for (int i = 2; i <= x; i ++ )
    {
        if (!st[i]) primes[cnt ++ ] = i;
        for (int j = 0; i * primes[j] <= x; j ++ )
        {
            st[i * primes[j]] = true;
            if (i % primes[j] == 0) break;
        }
    }
}

int main()
{
    cin >> n;
    get_prime(n); // Çó n µÄ½×³Ë 
    
    for (int i = 0; i < cnt; i ++ )
    {
        int p = primes[i];
        int s = 0;
        for (int j = n; j; j /= p)  s += j / p;
        cout << p << " " << s << endl;
    }
    
    
    return 0;
}
