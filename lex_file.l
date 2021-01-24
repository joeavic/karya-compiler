
%{
	#include <stdlib.h>
	void yyerror(char *);
	#include "y.tab.h"
%}

%%
[0-9]+      { yylval = atoi(yytext);
                return INTEGER;
            }
[-+*/\n]    return *yytext;
जोड़          return '+';
घटाव        return  '-';
गुणा         return '*';
विभाजन      return '/';
[ \t] ;
.           yyerror("character not recognised");
%%
int yywrap(void) {
return 1;
}
