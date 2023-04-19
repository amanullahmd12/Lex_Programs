%{
	#include<stdio.h>
	int letter_count = 0 , space_count = 0 , line_count =0 , tab_count = 0;
%}

%%
[ ] {space_count++;}
\n {line_count++;}
\t {tab_count++;}
. {letter_count++;}
%%

int yywrap(){
	return 1;
}

int main(){
	printf("Enter Sentence \n");
	yylex();

	printf("\n space_count = %d",space_count);
	printf("\n line_count = %d",line_count);
	printf("\n tab_count = %d",tab_count);
	printf("\n letter_count = %d",letter_count);

	return 0;
}