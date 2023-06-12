%{
#include <stdio.h>
%}

%%
"<"[^>]*>    printf("Valid opening tag");
. printf("Not Valid html tag");
%%

int yywrap(){
    return 1;
}
int main() {
    yylex();
    return 0;
}
