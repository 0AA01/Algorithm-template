#include <bits/stdc++.h>
 
using namespace std;

char str[100010];

int get_min(char *s) {
	int i = 0, j = 1, k = 0;
	while (i < n && j < n) {
		for (k = 0; k < n && s[i + k] == s[j + k]; k++);
		if (k == n) break;
		if (s[i + k] > s[j + k]) {
			i += k + 1;
			if (i == j) i++;
		} else {
			j += k + 1;
			if (i == j) j++;
		}
	}
	return min(i, j);
}
 
int main() {	 	
    return 0;
}

