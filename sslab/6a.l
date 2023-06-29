%{
#include<stdio.h>
int com=0;
%}
%%
"//".* {com++;}
"/*"([^*]|\*+[^*/])*\*+"/" {com++;}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main(int argc, char *argv[])
{
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf("No of comment lines=%d\n",com);
}
