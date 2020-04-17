#include<iostream>
//note extern "C"
extern "C"{
	int parvoid_cpp(void){
		std::cout<<"void cpptest(void)"<<std::endl;
		return 0;
	}
}
