%{
#include<stdio.h>
int vowel=0 , cons=0;
%}

%%
[aeiouAEIOU]    vowel++;
[a-zA-Z]        cons++;
\n              {return 0;}
%%

int main()
{
        printf("Enter the string:");
        yylex();
        printf("No:of vowels=%d",vowel);
        printf("\nNo:of consonants=%d\n",cons);
}

int yywrap()
{
        return(1);
}
