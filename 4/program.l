%{
 int line = 0, space = 0, word = 0, charc = 0;
%}
%%
[\n] {
    line++;
    word++;
}
[\t] {
    space++;
    word++;
}
[" "] {
    space++;
    word++;
}
[^\n\t] {
    charc++;
}
%%
main(){
    FILE *fp;
    char file[10];
    printf("Enter file name\n");
    scanf("%s",&file);
    fp = fopen(file, "r+");
    yyin = fp;
    yylex();
    printf("\n characters = %d \n words = %d \n spaces = %d \n lines = %d", charc, word, space, line);
}
