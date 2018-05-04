#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
void main(int argc,char**argv)
{
int buff[256];
int fopen=open(argv[1],0);
int ffopen=open(argv[2],O_CREAT|O_WRONLY,0777);
for(;;)
  {
    int n=read(fopen,buff,255);
    if(n<=0)
      break;
    write(ffopen,buff,n);
    
  }
unlink(argv[1]);
}
