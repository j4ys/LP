%{
 #include<stdio.h>    
%}
%token ID NUMBER
%left '+''-'
%left '*''/'
%%
expr : expr '+' expr |
        expr '-' expr |
        expr '*' expr |
        expr '/' expr |
        '-' NUMBER |
        '-' ID |
        '(' expr ')' |
        NUMBER |
        ID ;
%%

main()
{
    printf("Enter expression");
    yyparse();
    printf("Expression is valid");
    exit(0);
}

yyerror(){
    printf("\n ivalid sytax");
    exit(0);
}