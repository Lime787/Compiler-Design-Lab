%{
    #include <bits/stdc++.h>
    #include "P1.tab.h"
%}
%option noyywrap

%% 

"class"                 {return CLASS;}
"public"                {return PUBLIC;}
"static"                {return STATIC;}
"void"                  {return VOID;}
"main"                  {return MAIN;}
"String"                {return STRING;}
"extends"               {return EXTENDS;}
"return"                {return RETURN;}
"int"                   {return INT;}
"boolean"               {return BOOL;}
"if"                    {return IF;}
"else"                  {return ELSE;}
"while"                 {return WHILE;}
"this"                  {return THIS;}
"new"                   {return NEW;}
"#define"               {return DEFINE;}
"Function"              {return FUNCTION;}

"true"                  {return TRUE_;}
"false"                 {return FALSE_;}
"length"                {return LENGTH;}
"System.out.println"    {return PRINT_OUT;}
"import"                {return IMPORT;}
"java.util.function.Function"    {return IMPORT_FUNCTION;}

0|[1-9][0-9]*           {yylval.val = strdup(yytext); return INT_LITERAL;}
[a-zA-Z_][a-zA-Z_0-9]*  {yylval.val = strdup(yytext); return IDENTIFIER;}

"{"                     {return '{';}
"}"                     {return '}';}
"["                     {return '[';}
"]"                     {return ']';}
"("                     {return '(';}
")"                     {return ')';}

")"[ ]*"->"             {return ARROWOP;}
"&&"                    {return AND;}
"||"                    {return OR;}
"<="                    {return LTEQ;}
"!="                    {return NEQ;}
"+"                     {return '+';}
"-"                     {return '-';}
"*"                     {return '*';}
"/"                     {return '/';}
"."                     {return '.';}
","                     {return ',';}
"!"                     {return '!';}
"<"                     {return '<';}
">"                     {return '>';}
";"                     {return ';';}
"="                     {return '=';}

"//".*                      {/*ignores single line comments*/}
"/*"([^*]|\*+[^*/])*\*+"/"  {/*ignores multiline comments*/}
[ \t\n]                     {/*chill*/}

.                       {}

%%
