%{
    #include<stdio.h>
    #include<ctype.h>
    #include "y.tab.h";
    extern int yydebug;
%}
%token OPEN CLOSE
%%
statement : S '\n' {printf("ok");};
S : OPEN S CLOSE S;
%%
main(){
    yydebug = 1;
    printf("\nEnter text\n");
    return yyparse();
    printf("String accepted");
    exit(0);
}

yyerror(char *s)
{
    fprintf(stderr, "\n%s\n", s);
}

yywrap(){
    return 1;
}