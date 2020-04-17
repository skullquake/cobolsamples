#include<stdio.h>
#include<stdlib.h>
int parstr(char*c,int*len){
	char*buf=(char*)malloc(*len+1);
	memcpy(buf,c,*len);
	//buf[*len-1]='\0';
	//printf("int parstr(char*,*int):[%c,%d]\n",*c,*len);
	printf("int parstr(char*,*int):%s:\n",buf);
	free(buf);
	return 0;
};
int parcstr(char*c){
	printf("int parcstr(char*):%s:\n",c);
	return 0;
};
int partolower(char*c){
	int i;
	if(c!=NULL){
		for(i=0;i<strlen(c);i++){
			c[i]=tolower(c[i]);
		}
	}
	return 0;
}
int partoupper(char*c){
	int i;
	if(c!=NULL){
		for(i=0;i<strlen(c);i++){
			c[i]=toupper(c[i]);
		}
	}
	return 0;
}
