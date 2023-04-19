%{
	#include<stdio.h>
%}

%%
\/\/(.*) ;
\/\*(.*\n).*\*\/;
%%

int main(){
	yyin = fopen("demo.c","r");
	yyout = fopen("out.c","w");
	yylex();
}
int yywrap(){
	return 1;
}