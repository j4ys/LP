%{
%}
%%
[a-z][ a-z | 0-9 | _]* {
    printf("It is a identifier");
}
[0-9][0-9]* {
    printf("It is a constant");
}
.+ {
    printf("neither constant nor identifier");
}
%%

main(){
    printf("Enter any value");
    yylex();
}