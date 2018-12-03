%{
%}
%%
[\n] {
    int a = 10, b=20, c;
    c = a + b;
    printf("addition of 10 + 20 = %d", c);
}
%%
main(){
    printf("\n a = 10 \n b = 30");
    yylex();
}