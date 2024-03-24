
%{
#include <stdio.h>
#include <string.h>
#include "pseudopad.h"
%}

%%

"algorithm"          { printf("ALGORITHM "); return ALGORITHM; }
"end algorithm"      { printf("ENDAALGORITHM "); return ENDAALGORITHM; } 
"input"              { printf("INPUT "); return INPUT; }
"output"             { printf("OUTPUT "); return OUTPUT; }
"if"                 { printf("IF "); return IF; } 
"then"               { printf("THEN "); return THEN; } 
"else"               { printf("ELSE "); return ELSE; }
"elseif"             { printf("ELSEIF "); return ELSEIF; }
"end if"             { printf("ENDIF "); return ENDIF; }
"while"              { printf("WHILE "); return WHILE; }
"do"                 { printf("DO "); return DO; } 
"end while"          { printf("ENDWHILE "); return ENDWHILE; }
"for"                { printf("FOR "); return FOR; }
"to"                 { printf("TO "); return TO; } 
"end for"            { printf("ENDFOR "); return ENDFOR; }
"repeat"             { printf("REPEAT "); return REPEAT; }
"until"              { printf("UNTIL "); return UNTIL; }
"switch"             { printf("SWITCH "); return SWITCH; }
"case"               { printf("CASE "); return CASE; }
"default"            { printf("DEFAULT "); return DEFAULT; }
"end switch"         { printf("ENDSWITCH "); return ENDSWITCH; } 
"break"              { printf("BREAK "); return BREAK; }
"continue"           { printf("CONTINUE "); return CONTINUE; }
"procedure"          { printf("PROCEDURE "); return PROCEDURE; }
"end procedure"      { printf("ENDPROCEDURE "); return ENDPROCEDURE; }
"return"             { printf("RETURN "); return RETURN; }
"void"               { printf("VOID "); return VOID; }
"main"               { printf("MAIN "); return MAIN; }
"print"              { printf("PRINT "); return PRINT; }
"scan"               { printf("SCAN "); return SCAN; }
"+"                  { printf("PLUS "); return PLUS; }
"-"                  { printf("MINUS "); return MINUS; }
"*"                  { printf("MULT "); return MULT; }
"/"                  { printf("DIV "); return DIV; }
"->"                 { printf("ASSIGN "); return ASSIGN; }
"="                  { printf("EQUAL "); return EQUAL; }
"!="                 { printf("NOTEQUAL "); return NOTEQUAL; }
"<"                  { printf("LESS "); return LESS; }
">"                  { printf("GREATER "); return GREATER; }
"<="                 { printf("LESSEQUAL "); return LESSEQUAL; }
">="                 { printf("GREATEREQUAL "); return GREATEREQUAL; }
"&&"                 { printf("AND "); return AND; }
"||"                 { printf("OR "); return OR; }
"!"                  { printf("NOT "); return NOT; }
"("                  { printf("LPAREN "); return LPAREN; }
")"                  { printf("RPAREN "); return RPAREN; }
";"                  { printf("SEMICOLON "); return SEMICOLON; }
","                  { printf("COMMA "); return COMMA; }
[0-9]+               { printf("INTEGER "); return INTEGER; }
[0-9]+"."[0-9]+      { printf("FLOAT "); return FLOAT; }
\"[^\"]*\"           { printf("STRING "); return STRING; }
"true"|"false"       { printf("BOOLEAN "); return BOOLEAN; }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER "); return IDENTIFIER; }
"\n"                 { /* ignore newlines */ }
[ \t]                { /* ignore whitespace */ }
.                    { /* catch all other characters */ }

%%

int yywrap () {
    return 1;
}

int main() {
    int token;
    
    do {
        token = yylex();
    } while (token != 0);

    return 0;
}

