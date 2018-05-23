#include <iostream>
#include <string>
#include <curl/curl.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>


static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

int main(void)
{
  CURL *curl;
  CURLcode res;
  std::string readBuffer;

  int sleep = 1000000;
  char E[1000];
  FILE *fp;

while(true){
	  curl = curl_easy_init();
  	  if(curl) {

    	curl_easy_setopt(curl, CURLOPT_URL, "http://127.0.0.1:3000");
    	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    	curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
    	res = curl_easy_perform(curl);
    	curl_easy_cleanup(curl);

    	strcpy(E, readBuffer.c_str());
      if(E[0]<=48||E[0]>=58){
        E[0]=48;
      }

    	printf("%s\n", E);
    	readBuffer.clear();

      fp = fopen("data.txt", "w+");
   		fprintf(fp, "%s", E);
    	fclose(fp);
    	clock_t time_end;
    	time_end = clock() + sleep;
    	while (clock() < time_end){}

    }


}




  return 0;
}