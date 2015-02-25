#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <curl/curl.h>
#include "cJSON.h"
#define  CLIENT_ID "BAIDU_API CODE"
#define  BD_API    "http://openapi.baidu.com/public/2.0/bmt/translate"

size_t write_callback(char *ptr, size_t size, size_t nmemb, void *buffer){
   strcat(buffer, ptr);
   return size *nmemb;
}
int main(int argc,char *argv[]){
 if(argc < 2){
	printf("用法:\n%s 语言代码 \"words\"\n",argv[0]);
        printf("例如要翻译\"Hello World!\"成中文 %s zh \"Hello World!\"\n",argv[0]);
	printf("语言代码列表\n");
	printf("中文 	zh 	英语 	en\n");
	printf("日语 	jp 	韩语 	kor\n");
	printf("西班牙语spa 	法语 	fra\n");
	printf("泰语 	th 	阿拉伯语ara\n");
	printf("俄罗斯语ru 	葡萄牙语pt\n");
	printf("粤语 	yue 	文言文 	wyw\n");
	printf("白话文 	zh 	自动检测auto\n");
	printf("德语 	de 	意大利语it\n");
	printf("荷兰语 	nl 	希腊语 	el\n");
	return 0;
 }
 CURL *curl;
 CURLcode res;
 char buffer[40960] = {0};
 char postdata[10240] = {0};
 sprintf(postdata,"client_id="CLIENT_ID"&from=auto&to=%s&q=%s",argv[1],argv[2]);
 curl = curl_easy_init();
 if(curl){
 curl_easy_setopt(curl, CURLOPT_URL,BD_API);
 curl_easy_setopt(curl, CURLOPT_POSTFIELDS, postdata);
 curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
 curl_easy_setopt(curl, CURLOPT_WRITEDATA, buffer);
 res=curl_easy_perform(curl);
 curl_easy_cleanup(curl);
 }

 cJSON *pJSON,*psubJSON,*psubsubJSON,*result_JSON;
 int trans_size,i;
 char *trans_from,*trans_to,*trans_src,*trans_dst;
 pJSON=cJSON_Parse(buffer);
        if (!pJSON) {
	printf("Error:[%s]\n",cJSON_GetErrorPtr());
	}
	else{
	psubJSON = cJSON_GetObjectItem(pJSON, "from");
	trans_from = cJSON_Print(psubJSON);
	psubJSON = cJSON_GetObjectItem(pJSON, "to");
	trans_to = cJSON_Print(psubJSON);
	psubJSON = cJSON_GetObjectItem(pJSON, "trans_result");
	trans_size = cJSON_GetArraySize(psubJSON);
	if(trans_size == 0){
		printf("查询不到!\n");
		return 0;
	}
	printf("%s翻译为%s :查询次数%d\n",trans_from,trans_to,trans_size);
	for( i=0; i<trans_size; i++){
		psubsubJSON = cJSON_GetArrayItem(psubJSON,i);
		result_JSON = cJSON_GetObjectItem(psubsubJSON, "src");
     		trans_src = cJSON_Print(result_JSON);
		result_JSON = cJSON_GetObjectItem(psubsubJSON, "dst");
		trans_dst = cJSON_Print(result_JSON);
		printf("原文:%s \n译文:%s \n",trans_src,trans_dst);
	}
	cJSON_Delete(pJSON);
	free(trans_from);
	free(trans_to);
	free(trans_src);
	free(trans_dst);
 	}
 	return 0;
}
