%{
    int line_no = 1;
%}
line .*\n 
%%
{line} {
    printf("%5d  %s",line_no++, yytext);
}
%%
main(int argc, char *argv[])
{
    extern FILE *yyin;
    yyin = fopen(argv[1], "r+");
    yylex();
}