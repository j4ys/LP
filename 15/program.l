%{
    #include "y.tab.h"
%}
%%
"(" {return OPEN; }
")" {return CLOSE; }
[\t] {}
\n|. { return yytext[0]; }
%%