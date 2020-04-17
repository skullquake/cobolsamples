/*
 * -----------------------------------------------------------------------------
 * Matching C Data Types with OpenCOBOL USAGEs
 * -----------------------------------------------------------------------------
 */
#include<stdio.h>
int pararrint(int*arr,int*len){
	printf("int pararrint(unsigned int*,int):%d\n",*len);
	int i;
	for(i=0;i<*len;i++){
		printf("%d\n",arr[i]);
	}
	return 0;
}
