%{
    int count = 0;
%}
%%
"rama" { count++; }
"sita" { count++; }
%%
main(int argc, char *argv[]){
    extern FILE *yyin;
    yyin = fopen(argv[1], "r");
    yylex();
    printf("\n total occurances = %d", count);
    return 0;
}