%option main
	#include <stdio.h>

phone   [0-9]{8,9}
ddd     [0-9]{1,3}
country \+?[0-9]{1,3} 
%%
({phone})|({ddd}?{phone})|({country}{ddd}{phone}) puts(yytext);
.|\n|\r
