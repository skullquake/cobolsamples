#include<stdio.h>
struct StructInt{
	int a;
	int b;
	int c;
	int d;
};
struct StructUInt{
	unsigned int a;
	unsigned int b;
	unsigned int c;
	unsigned int d;
};
struct StructLong{
	long a;
	long b;
	long c;
	long d;
};
struct StructULong{
	unsigned long a;
	unsigned long b;
	unsigned long c;
	unsigned long d;
};
struct StructStr{
	char a[32];
	char b[32];
	char c[32];
	char d[32];
};
struct StructStrPtr{
	char*a;
	char*b;
	char*c;
	char*d;
};
int parstructint(struct StructInt*s){
	printf("int parstructint(struct StructInt*):\n");
	printf("[%d,%d,%d,%d]\n",s->a,s->b,s->c,s->d);
	return 0;
}
int parstructuint(struct StructUInt*s){
	printf("int parstructuint(struct StructUInt*):\n");
	printf("[%d,%d,%d,%d]\n",s->a,s->b,s->c,s->d);
	return 0;
}
int parstructlong(struct StructLong*s){
	printf("int parstructlong(struct StructLong*):\n");
	printf("[%ld,%ld,%ld,%ld]\n",s->a,s->b,s->c,s->d);
	return 0;
}
int parstructulong(struct StructULong*s){
	printf("int parstructulong(struct StructULong*):\n");
	printf("[%lu,%lu,%lu,%lu]\n",s->a,s->b,s->c,s->d);
	return 0;
}
int parstructstr(struct StructStr*s){
	printf("int parstructstr(struct StructStr*):\n");
	printf("[%s,%s,%s,%s]\n",s->a,s->b,s->c,s->d);
	return 0;
}
