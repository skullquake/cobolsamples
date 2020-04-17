#include<libcob.h>
#include<stdio.h>
extern int fna(char*hello,char*world);
extern int fnb(void);
extern int fnc(char*hello,char*world);
extern int fnd(char*hello,char*world);
int main(int argc,char** argv){
	int ret=0;
	char hello[8]="Hello, ";
	char world[7]="world!";
	cob_init(0,NULL);
	ret=fna(hello,world);
	/*
	ret=fnb();
	ret=fnc(hello,world);
	ret=fnd(hello,world);
	*/
	cob_stop_run(ret);
	return ret;
}
