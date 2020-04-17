/*
 * -----------------------------------------------------------------------------
 * Matching C Data Types with OpenCOBOL USAGEs
 * -----------------------------------------------------------------------------
 */
#include<stdio.h>
int pararrint(int*arr,int*len){
	printf("int pararrint(int*,int):\n");
	printf("%d elements: ",*len);
	int i;
	for(i=0;i<*len;i++){
		printf("%d ",arr[i]);
	}
	printf("\n");
	return 0;
}
int pararruint(unsigned int*arr,int*len){
	printf("int pararruint(unsigned int*,int):\n");
	printf("%d elements: ",*len);
	int i;
	for(i=0;i<*len;i++){
		printf("%d ",arr[i]);
	}
	printf("\n");
	return 0;
}
int pararrlong(long*arr,int*len){
	printf("int pararrlong(long*,int):\n");
	printf("%d elements: ",*len);
	int i;
	for(i=0;i<*len;i++){
		printf("%ld ",arr[i]);
	}
	printf("\n");
	return 0;
}
int pararrulong(unsigned long*arr,int*len){
	printf("int pararrulong(unsigned long*,int):\n");
	printf("%d elements: ",*len);
	int i;
	for(i=0;i<*len;i++){
		printf("%lu ",arr[i]);
	}
	printf("\n");
	return 0;
}
int pararrlongmanip(long*arr,int*len){
	printf("int pararrlongmanip(long*,int):\n");
	int i;
	for(i=0;i<*len;i++){
		arr[i]=i*2;
	}
	printf("\n");
	return 0;
}
int pararrulongmanip(unsigned long*arr,int*len){
	printf("int pararrulongmanip(unsigned long*,int):\n");
	int i;
	for(i=0;i<*len;i++){
		arr[i]=i*2;
	}
	printf("\n");
	return 0;
}
