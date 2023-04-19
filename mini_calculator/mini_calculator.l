%{
	#include<stdio.h>
	int a , result , flag =0;
	char cc ;
%}

%%

[0-9]+ {a = atoi(yytext);
  	if(flag==0){
  		result = a;
  		flag =1;
  	}
  	else{
  		switch(cc){
  			case '+':result=result+a;
  			break;
  			case '-':result=result-a;
  			break;
  			case '*':result=result*a;
  			break;
  			case '/':result=result/a;
  			break;
  		}
  	}
  }
  "+"|"-"|"*"|"/" {if(strcmp(yytext,"+")==0)cc='+';
                   if(strcmp(yytext,"-")==0)cc='-';
                   if(strcmp(yytext,"*")==0)cc='*';
                   if(strcmp(yytext,"/")==0)cc='/';

  }
  . ;

%%

int yywrap(){
	return -1;
}

int main(){
	yylex();
	printf(" result =  %d",result);
	printf("\n");
	return 0;
}

