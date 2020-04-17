#include<libcob.h>
#include<stdio.h>
extern void fn(void);
int main(int argc,char** argv){
	int ret=0;
	cob_init(0,NULL);
	fn();
	cob_stop_run(ret);
	return ret;
}
