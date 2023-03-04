#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(){
int i=5;
if(i<=0){return(0);}char *path=getenv("_");if(!strstr(path,"./Sully_")){++i;}
char *s="#include <stdio.h>%4$c#include <stdlib.h>%4$c#include <string.h>%4$cint main(){%4$cint i=%3$d;%4$cif(i<=0){return(0);}char *path=getenv(%2$c_%2$c);if(!strstr(path,%2$c./Sully_%2$c)){++i;}%4$cchar *s=%2$c%5$s%2$c;%4$cchar *filename;char *compile;char *exe;FILE *f;%4$casprintf(&filename,%2$cSully_%1$cd.c%2$c,i-1);asprintf(&compile,%2$cgcc -Wall -Werror -Wextra Sully_%1$c1$d.c -o Sully_%1$c1$d; %2$c,i-1);asprintf(&exe,%2$c./Sully_%1$cd%2$c,i-1);%4$cif(!(f=fopen(filename,%2$cw%2$c))){return(1);}fprintf(f,s,37,34,i-1,10,s,10);fclose(f);system(compile);if(i>1){system(exe);}return(0);}%4$c";
char *filename;char *compile;char *exe;FILE *f;
asprintf(&filename,"Sully_%d.c",i-1);asprintf(&compile,"gcc -Wall -Werror -Wextra Sully_%1$d.c -o Sully_%1$d; ",i-1);asprintf(&exe,"./Sully_%d",i-1);
if(!(f=fopen(filename,"w"))){return(1);}fprintf(f,s,37,34,i-1,10,s,10);fclose(f);system(compile);if(i>1){system(exe);}return(0);}
