%{
 #include "y.tab.h"    
 extern yyval;
%}
%%
[0-9]+ {
    yyval = atoi(yytext);
    return NUMBER;
}
[a-z|A-Z]+ {
    return ID;
}
[\t]+ {
}
[\n] {
    return 0;
}
. {
    return yytext[0];
}
%%