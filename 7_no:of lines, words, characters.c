%{
#include<stdio.h>
int line=0,word=0,letter=0,digits=0,spl=0;
%}
%%
\n {line++;word++;}
[\t ' '] {word++;}
[A-Z a-z] {letter++;}
[0-9] {digits++;}
. {spl++;}
%%

main()
{
yyin=fopen("sample.txt","r");
yylex();
printf("no:of lines%d\n",line);
printf("no:of words%d\n",word);
printf("no:of letters%d\n",letter);
printf("no:of digits%d\n",digits);
printf("no:of special characters%d",spl);

}
int yywrap()
{
return 1;
}

