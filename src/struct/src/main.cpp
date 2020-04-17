#include<libcob.h>
#include<stdio.h>
#include<string.h>
#include<math.h>
struct STRCTBS{
	long STRCTBSM0;
	long STRCTBSM1;
	long STRCTBSM2;
	long STRCTBSM3;
};
struct STRCTPICX32{
	char STRCTPICX32M0[32];
	char STRCTPICX32M1[33];
	char STRCTPICX32M2[33];
	char STRCTPICX32M3[33];
};
struct STRCTBCL{
	long STRCTBCLM0;
	long STRCTBCLM1;
	long STRCTBCLM2;
	long STRCTBCLM3;
};
extern "C"{
	extern int cobparvoid(        void                );
	extern int cobparfloat(       float*              );
	extern int cobparint(         int*                );
	extern int cobparstr(         char*               );
	extern int cobpararrint(      int*                );
	extern int cobpararrlong(     long*               );
	extern int cobpararrfloat(    float*              );
	extern int cobpararrstr(      char*               );
	extern int cobparstructbs(    struct STRCTBS*     );
	extern int cobparstructpicx32(struct STRCTPICX32* );
	extern int cobparstructbcl(   struct STRCTBCL*    );
}
int main(int argc,char** argv){
	//--------------------------------------------------------------------------------
	int  ret=0;
	int    i=1234;
	float  j=12.34;
	char   k[32];
	int    l[8]={0,1,2,3,4,5,6,7};
	long   m[8]={0,1,2,3,4,5,6,7};
	float  n[128];
	char   o[32][8];
	struct STRCTBS     p;
	struct STRCTPICX32 q;
	struct STRCTBCL    r;
	//--------------------------------------------------------------------------------
	for(i=0;i<sizeof(n)/sizeof(n[0]);i++){
		n[i]=sin(2*M_PI*i/128.0);
	}
	for(i=0;i<sizeof(o)/sizeof(o[0]);i++){
		sprintf(o[i],"str %d",i);
	}
	p.STRCTBSM0=0;
	p.STRCTBSM1=1;
	p.STRCTBSM2=2;
	p.STRCTBSM3=3;
	memset(q.STRCTPICX32M0,0x20,sizeof(q.STRCTPICX32M0));
	memset(q.STRCTPICX32M1,0x20,sizeof(q.STRCTPICX32M0));
	memset(q.STRCTPICX32M2,0x20,sizeof(q.STRCTPICX32M0));
	memset(q.STRCTPICX32M3,0x20,sizeof(q.STRCTPICX32M0));
	sprintf(q.STRCTPICX32M0,"foo");
	sprintf(q.STRCTPICX32M1,"bar");
	sprintf(q.STRCTPICX32M2,"baz");
	sprintf(q.STRCTPICX32M3,"qux");
	r.STRCTBCLM0=0;
	r.STRCTBCLM1=1;
	r.STRCTBCLM2=2;
	r.STRCTBCLM3=3;
	//--------------------------------------------------------------------------------
	cob_init(0,NULL);
	cobparvoid();
	cobparint(&i);
	cobparfloat(&j);
	cobparstr(k);
	cobpararrint(l);
	cobpararrlong(m);
	cobpararrfloat(n);
	cobpararrstr((char*)o);
	cobparstructbs(&p);
	cobparstructpicx32(&q);
	cobparstructbcl(&r);
	cob_stop_run(ret);
	//--------------------------------------------------------------------------------
	return ret;
}
