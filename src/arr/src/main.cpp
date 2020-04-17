#include<libcob.h>
#include<stdio.h>
extern "C"{
extern int cobf0();
}
int main(int argc,char** argv){
	int ret=0;
	char hello[8]="Hello, ";
	char world[7]="world!";
	//cob_init(argc,argv);
	cob_init(0,NULL);
	ret=cobf0();
	//cob_tidy();//shutdown run-time
	//printf("done\n");
	cob_stop_run(ret);
	return ret;
}
