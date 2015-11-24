%option main
	#include<stdio.h>
%s HIDE
%%
"<HIDE>" {
	printf("<HIDE>");
	BEGIN(HIDE);
}
"</HIDE>" {
	printf("</HIDE>");
	BEGIN(0);
}
<HIDE>. printf("X");
. ECHO;
%%
