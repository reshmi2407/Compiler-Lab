%{
        #include<stdio.h>
        int vowel=0;
%}

%%
^[aeiouAEIOU][a-zA-Z]* {printf("%s accepted\n",yytext);}
[a-zA-Z]* {printf("%s not accpted\n",yytext);}
\n {return 0;}
%%

int main()
{
        printf("Enter the string:");
        yylex();
}

int yywrap()
{
        return(1);
}
