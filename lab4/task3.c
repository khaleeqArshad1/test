#include<stdio.h>
#include<stdlib.h>
#include<setjmp.h>
int counter=0;
static jmp_buf envbuf;

void haveFun()
{ 
printf("IN haveFun....\n"); 
printf("Value of Counter: %d\n", counter);
counter++; 	
}

void firstSetJump() 
{ 
printf("IN firstSetJump() ..\n"); 
printf("Value of Counter: %d\n", counter);
counter++;            
}

void main()
{ 
int i = 0; 
for(; i <10; i++)
{
printf("This is main function\n"); 
if (counter == 0 && (i = setjmp(envbuf)) == 0)
firstSetJump() ; 
haveFun();
}  
}


