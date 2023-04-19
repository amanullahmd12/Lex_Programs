%{
	#include<stdio.h>
%}

%%
[-+]?[0-9]+\.[0-9]+ {printf("Float Number");}
[-+]?[0-9]+ {printf("Integer Number");}
.* {printf("Not Valid Input");}

%%

int yywrap(){
	return 1;
}

int main(){
	yylex();
	return 0;
}