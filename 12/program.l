%{
#include "y.tab.h"
extern yyval;
%}
%%
[0-9]+ {
    yyval = atoi(yytext);
    return DIGIT;
}
[a-z|A-Z] {
    return LETTER;
}
[\t] {}
[\n] {
    return 0;
}
. {
    return yytext[0];
}
%%