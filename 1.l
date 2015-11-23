%option main
	#include <stdio.h>

%%
^M{0,1}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3}) puts(yytext);
.|\n|\r
