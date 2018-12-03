%{
    #include<stdio.h>
%}
%token A B
%%
statement : A A A A A A A A A A S;
S : A S | B;
%%
main(){
    printf("\nEnter string\n");
    yyparse();
    printf("String is valid");
    exit(0);
}
yyerror(){
    printf("String is not valid");
    exit(0);
}