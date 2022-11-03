%{
        #include<stdio.h>
        int mail;
%}

%%
^[a-z0-9]*("@gmail.com"|"@yahoo.com") {printf("Valid\n");}
.* {printf("Not Valid\n");}
\n {return 0;}
%%

int main()
{
        printf("Enter the mail address:");
        yylex();
}

int yywrap()
{
        return(1);
}
