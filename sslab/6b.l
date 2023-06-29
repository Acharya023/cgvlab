%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
int |char|bool|float|void|for|do|while|if else|return|void|main{ printf("Keyword is %s",yytxt); return KEY;}
[+|-|*|/|=|<|>]
[a-zA-Z][a-zA-Z0-9]*   {printf("operator is %s",yytxt); return DP;}
%%
%{
#include<stdio.h>
#include<stdlib.h>
int id=0,key=0,op=0;
%}
%token ID KEY OP
%%
input ID input{id++;}
|KEY input{key++}
|OP input{op++}
|ID {id++}
|KEY {key++}

exterm file *yyin;
void main(int argc,char**argv)
{
yyin=fopen(argv[i],"r");
yyparse();
printf("keywords =%d,identifiers =%d operator=%d,key,id,op);
}
void yyerror()
{
printf("not valid");
}
