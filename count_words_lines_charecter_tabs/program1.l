%{
	#include<stdio.h>
	int word_count = 0, letter_count = 0 , space_count = 0, tab_count =0, line_count = 0;
%}

%%
\n {line_count++;}
[ ] {space_count++;}
\t {tab_count++;}
[^\n\t ]+ {word_count++; letter_count +=yyleng;}
%%


int yywrap(){
	return 1;
}

int main(){

	extern FILE *yyin, *yyout;
		
	yyin=fopen("demo.txt", "r");

		
	yyout=fopen("out.txt", "w");
	yylex();

	fprintf(yyout,"\nword_count = %d",word_count);
	fprintf(yyout,"\nletter_count = %d",letter_count);
	fprintf(yyout,"\nspace_count = %d",space_count);
	fprintf(yyout,"\ntab_count = %d",tab_count);
	fprintf(yyout,"\nline_count = %d",line_count);

	return 0;

}