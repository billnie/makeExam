#include <stdio.h>

/**********************************************************************
* Description:将信息写入文件中
***************************************************************/
int writeLog(char *buffer)
{
	FILE * fp = NULL;
	char path[64] = {"./ttttLog.log"};
	fp = fopen(path, "a+");	
	if(fp == NULL){
		return -3;
	}
	fwrite(buffer,strlen(buffer),1,fp);
	fclose(fp);
	
	return 0;
}

int main( ){
	writeLog("123");
	return 0;
}