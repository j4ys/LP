%{
    #include<stdio.h>
%}
%token ONE ZERO NL;
%%
str1 : str2 nl {};
str2 : ONE ZERO str3{} | ONE ZERO {};
str3 : ONE str3 {} | ZERO str3 {} | ONE ZERO {};
nl : NL{ printf("\nstring matched"); }
%%
main()
{
    yyparse();
}
yyerror()
{
    printf("\nError");
}