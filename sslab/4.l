%{
#include "y.tab.h"
%}
%%
"id"	 {return id;}
"+"	  {return plus;}
"*"	  {return star;}
"("	  {return opar;}
")"	  {return cpar;}
. 	return yytext[0];
\n	 return 0;
%%
