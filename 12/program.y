%{
#include<stdio.h>
%}
%token DIGIT LETTER
%%
var : LETTER rest | LETTER;
rest : LETTER rest | DIGIT rest | LETTER | DIGIT;
%%
main(){
    printf("Enter variable name");
    yyparse();
    printf("Variable name is valid");
}

yyerror(){
    printf("not a valid variable name");
}