#include<iostream>
#include<windows.h>
using namespace std;
int main()
{
	int t=100;
    while(1)
    {
    	t--;
        system("t.exe > data.txt");
        system("t2.exe < data.txt > t2.txt");
        system("t1.exe < data.txt > t1.txt");
        if(system("fc t1.txt t2.txt"))   break;
    }
    if(t==0) cout<<"no error"<<endl;
    else cout<<"error"<<endl;
    //system("pause");
    return 0;
}
