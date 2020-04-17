//#include"b.h"
#include<stdio.h>
//int bar(unsigned short int *pa,unsigned short int*pb){
int bar(unsigned short int pa,unsigned short int pb){
	printf("int bar(int*,int*);\n");
	//printf("%d:%d\n",*pa,*pb);
	printf("%d:%d\n",pa,pb);
	return 0;//pa+pb;
}
