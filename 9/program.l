%{
    int flag=0;
%}
%%
(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"") {
    flag = 1;
}
%%
int main()
{
    printf("Enter sentence\n");
    yylex();
    if(flag == 1){
        printf("\ncompound sentence");
    }
    else{
        printf("\nsimple sentence");
    }
    return 0;
}