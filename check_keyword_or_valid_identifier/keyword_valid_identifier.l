%{
	#include<stdio.h>
%}


%%
"int"|"float"|"char"|"if"|"else"|"switch"|"break" {printf("%s is a keyword ",yytext);}
[a-z A-Z][a-z A-Z 0-9]* {printf("%s is a valid identifier",yytext);}
.* {printf("%s is Invalid Identifier",yytext);}
%%


int main(){
	yylex();
	return 0;
}

int yywrap(){
	return 1;
}