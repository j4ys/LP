%{
 #include<stdio.h>    
%}
%token A B
%%
statement : S;
S : A S B |
;
%%
main()
{
    printf("\nEnter string\n");
    yyparse();
    printf("\nString is valid\n");
    exit(0);
}

yyerror(){
    printf("\nstring is not valid\n");
    exit(0);
}