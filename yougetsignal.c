#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <curl/curl.h>
#include "cJSON.h"

size_t write_callback(char *ptr, size_t size, size_t nmemb, void *buffer){
   strcat(buffer, ptr);
   return size *nmemb;
}
int main(int argc,char *argv[]){
 CURL *curl;
 CURLcode res;
 char buffer[10240] = {0};
 char postdata[128] = {0};
 sprintf(postdata,"remoteAddress=%s&key=",argv[1]);
 
 curl = curl_easy_init();
 if(curl){
 curl_easy_setopt(curl, CURLOPT_URL,"http://domains.yougetsignal.com/domains.php");
 curl_easy_setopt(curl, CURLOPT_POSTFIELDS, postdata);
 curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
 curl_easy_setopt(curl, CURLOPT_WRITEDATA, buffer);
 res=curl_easy_perform(curl);
 curl_easy_cleanup(curl);
 }
 cJSON *pJSON,*psubJSON,*psubsubJSON,*result_JSON;
 int domain_size,i;
 char *debug,*lastScrape,*domainCount,*remoteAddress,*remoteIpAddress,*domainArray;
 pJSON = cJSON_Parse(buffer);
        if (!pJSON){
		printf("Error:[%s]\n",cJSON_GetErrorPtr());
	}
	else{
//	debug = cJSON_Print(pJSON);
	psubJSON = cJSON_GetObjectItem(pJSON, "lastScrape");
	lastScrape = cJSON_Print(psubJSON);
	psubJSON = cJSON_GetObjectItem(pJSON, "domainCount");
	domainCount = cJSON_Print(psubJSON);
        psubJSON = cJSON_GetObjectItem(pJSON, "remoteAddress");
        remoteAddress = cJSON_Print(psubJSON);
        psubJSON = cJSON_GetObjectItem(pJSON, "remoteIpAddress");
        remoteIpAddress = cJSON_Print(psubJSON);
	psubJSON = cJSON_GetObjectItem(pJSON, "domainArray");
	domain_size = cJSON_GetArraySize(psubJSON);
	if(domain_size == 0){
		printf("查询不到!\n");
		return 0;
	}
	domainArray = cJSON_Print(psubJSON);
//	printf("DEBUG:\n%s\n",debug);
	printf("域名:%s个 |  域名:%s | IP:%s | 时间:%s\n",domainCount,remoteAddress,remoteIpAddress ,lastScrape);
//	printf("%s \n",domainArray);
	for( i=0; i<domain_size; i++){
		psubsubJSON = cJSON_GetArrayItem(psubJSON,i);
		result_JSON = cJSON_GetArrayItem(psubsubJSON,0);
		domainArray = cJSON_Print(result_JSON);
		printf("域名:%s\n",domainArray);
	}
 	}
	cJSON_Delete(pJSON);
    	return 0;
}
