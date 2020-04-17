/*
 * -----------------------------------------------------------------------------
 * Matching C Data Types with OpenCOBOL USAGEs
 * -----------------------------------------------------------------------------
 */
#include<stdio.h>
int parchar(char*a){
	printf("int parchar(char*):%d\n",*a);
	return 0;
};
int paruchar(unsigned char*a){
	printf("int paruchar(unsigned char*):%d\n",*a);
	return 0;
};
int parint(int*a){
	printf("int parint(int*):%d\n",*a);
	return 0;
};
int paruint(unsigned int*a){
	printf("int paruint(unsigned int*):%d\n",*a);
	return 0;
};
int parshort(short*a){
	printf("int parshort(short*):%d\n",*a);
	return 0;
};
int parushort(unsigned short*a){
	printf("int parushort(unsigned short*):%d\n",*a);
	return 0;
};
int parlong(long*a){
	printf("int parlong(long*):%d\n",*a);
	return 0;
};
int parulong(unsigned long*a){
	printf("int parulong(long*):%d\n",*a);
	return 0;
};
int parlonglong(long long*a){
	printf("int parlonglong(long long*):%lu\n",*a);
	return 0;
};
int parulonglong(unsigned long*a){
	printf("int parulong(unsigned long long*):%lu\n",*a);
	return 0;
};
int parlonglongint(long long int*a){
	printf("int parlonglongint(long long int*):%lu\n",*a);
	return 0;
};
int parulonglongint(unsigned long long int*a){
	printf("int parulonglongint(unsigned long long int*):%lu\n",*a);
	return 0;
};
int parfloat(float*a){
	printf("int parfloat(float*):%f\n",*a);
	return 0;
}
int pardouble(double*a){
	printf("int pardouble(double*):%f\n",*a);
	return 0;
}
int parlongdouble(long double*a){
	printf("int parfloat(long double*):%f\n",*a);
	return 0;
}
