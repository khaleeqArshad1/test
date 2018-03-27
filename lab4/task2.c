#include<stdio.h>
#include<stdlib.h>

void main(){
int *p1, *p2,*p3,*p4;
printf("before malloc(4): %x\n",sbrk(0));
p1= (int *) malloc(4);
printf("after p1: %x\n",sbrk(0));
p2= (int *) malloc(4);
printf("after p2: %x\n",sbrk(0));
p3= (int *) malloc(4);
printf("after p3: %x\n",sbrk(0));
p4= (int *) malloc(4);
printf("after p4: %x\n",sbrk(0));

printf("p1 = %x, p2= %x, p3 = %x, p4= %x\n ",p1,p2,p3,p4);

free(p1);
free(p2);
free(p3);
free(p4);
}