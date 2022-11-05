#include <stdio.h>
#define s "#include <stdio.h>%c#define s %c%s%c//HI%cvoid colleen(void) {}%cint main(void){%c    //HI%c    printf(s,10,34,s,34,10,10,10,10,10,10,10);%c}%c"//HI
void colleen(void) {}
int main(void){
    //HI
    printf(s,10,34,s,34,10,10,10,10,10,10,10);
}
