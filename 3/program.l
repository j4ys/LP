%{
 int flag = 0;
%}
%%
[(] {
    flag++;
}
[)] {
    flag--;
}
[\n] {
    if(flag == 0) {
        printf("no paranthesis are missing\n");
    }
    else if (flag > 0)
    {
        printf(" ')' is missing\n");
    }
    else {
        printf(" '(' is missing\n");
    }
}
%%

main(){
    printf("Enter string of paranthesis \n");
    yylex();
}