#include <stdio.h>
#define s "#include <stdio.h>%c#define s %c%s%c%c/*%c    HI Colleen!%c*/%cvoid colleen(void) {printf(s,10,34,s,34,10,10,10,10,10,10,10,10,10,10,10,10);}%cint main(void){%c/*%c    HI Main!%c*/%c    colleen();%c}%c"
/*
    HI Colleen!
*/
void colleen(void) {printf(s,10,34,s,34,10,10,10,10,10,10,10,10,10,10,10,10);}
int main(void){
/*
    HI Main!
*/
    colleen();
}
