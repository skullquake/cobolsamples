#include<libcob.h>
#include<stdio.h>
#include<string.h>
#include<math.h>
#include<vector>
#include<string>
extern "C"{
	extern int cobparstr(char*);
	extern int cobparint(int*);
	extern int cobparlong(long*);
	extern int cobparfloat(float*);
}
int main(int argc,char** argv){
	//-----------------------------------------------------------------------
	int ret;
	//-----------------------------------------------------------------------
	std::vector<std::string> vs{"lorem","ipsum","sit","consecutar"};
	std::vector<int>         vi{0,1,2,3};
	std::vector<long>        vl{0,1,2,3};
	std::vector<float>       vf{0.1,1.1,2.1,3.1};
	char buf[32];
	//-----------------------------------------------------------------------
	cob_init(0,NULL);
	//-----------------------------------------------------------------------
	for(auto a:vi){
		cobparint(&a);
	}
	for(auto a:vl){
		cobparlong(&a);
	}
	for(auto a:vf){
		cobparfloat(&a);
	}
	for(auto a:vs){
		memset(buf,0x20,sizeof(buf));
		sprintf(buf,a.c_str());
		cobparstr(buf);
	}
	//-----------------------------------------------------------------------
	cob_stop_run(ret);
	//-----------------------------------------------------------------------
	return 0;
}
