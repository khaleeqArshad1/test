#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
void main()
{
int buff[256];
int fopen=open("f.txt",0);
int ffopen=open("f1.txt",1);
for(;;)
  {
    int n=read(fopen,buff,255);
    if(n<=0)
      break;
    write(ffopen,buff,n);
  }
}
