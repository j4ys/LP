%{
%}
comment \/\*(.*\n)*.*\*\/
%%
{comment} ECHO ;
%%
main(int argc, char *argv[])
{
    extern FILE *yyin;
    yyin = fopen(argv[1], "r");
    yylex();
    printf("\n");
    return 0;
}