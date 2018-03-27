#include<stdio.h>
#include<stdlib.h>
void main()
{
int size=10,i=0;
int *arr=(int*)malloc(sizeof(int)*size);
for(;i<10;i++)
{
arr[i]=i;
}
int j=0;
for(;j<10;j++)
{
printf("%d\n",arr[j]);
}


int *arr1=(int*)realloc(arr,size*2);
if(arr1==NULL)
printf("error occured");
else
{
arr=arr1;
int j=0,i=0;
for(;i<size*2;i++)

arr[i]=i;

printf("after reallocating \n");
for(;j<20;j++)
printf("%d\n",arr[j]);
}

}
