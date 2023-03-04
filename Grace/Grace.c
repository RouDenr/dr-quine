#include <stdio.h>
#define s "#include <stdio.h>%c#define s %c%s%c%c#define MAIN() int main(void){ FILE*f;if((f=fopen(%cGrace_kid.c%c, %cw%c))!=NULL){fprintf(f,s,10,34,s,34,10,34,34,34,34,10,10,10,10,10);fclose(f);}return 0;}%c/*%c    HI Grace!%c*/%cMAIN()%c"
#define MAIN() int main(void){ FILE*f;if((f=fopen("Grace_kid.c", "w"))!=NULL){fprintf(f,s,10,34,s,34,10,34,34,34,34,10,10,10,10,10);fclose(f);}return 0;}
/*
    HI Grace!
*/
MAIN()
