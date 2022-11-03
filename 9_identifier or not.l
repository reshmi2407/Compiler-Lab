%{
	#include<stdio.h>
%}

%%
^[a-zA-Z_][a-zA-Z0-9]* {printf("Valid Identifier\n");}
.* {printf("Identifier is not valid\n");}
\n return(0);
%%

int main()
{
	printf("Enter the string:");
	yylex();
}

int yywrap()
{
	return 1;
}
