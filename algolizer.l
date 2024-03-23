%{
#include <stdio.h>
#include <string.h>

%}

%%
"algorithm"      { return ALGORITHM; }
"end algorithm"  { RETURN ENDAALGORITHM; } 

"input"  { return INPUT;}
"output" { return OUTPUT;}

"if"  { return IF; } 
"then"   { return ELSE; } 
"else"    { return ELSE; }
"end if"  { return ENDIF ; }

"while"    { return WHILE; }
"do"    { return DO; } 
"end while"  {return ENDWHILE; }

"for"   { return FOR; }
"to" { return TO; }
"do"   { return DO; } 
"end for"   { return ENDFOR ;}


"repeat"  { return REPEAT;}
"until"  { return UNTIL;}

"switch" { return SWITCH; }
"case"  { return CASE;}
"default"  { return DEFAULT; }
"end switch"  { return ENDSWITCH; } 


"break"  { return BREAK ;}
"continue" { return CONTINUE ; }

"procedure"  {return PROCEDURE; }
"end procedure"  {return ENDPROCEDURE; }

"return"  { return RETURN; }
"void"      { return VOID; }
"main"              { return MAIN; }
"printf"            { return PRINTF; }
"scanf"             { return SCANF; }

"+"                 { return PLUS; }
"-"                 { return MINUS; }
"*"                 { return MULT; }
"/"                 { return DIV; }
"="                 { return ASSIGN; }
"=="                { return EQUAL; }
"!="                { return NOTEQUAL; }
"<"                 { return LESS; }
">"                 { return GREATER; }
"<="                { return LESSEQUAL; }
">="                { return GREATEREQUAL; }
"&&"                { return AND; }
"||"                { return OR; }
"!"                 { return NOT; }
"("                 { return LPAREN; }
")"                 { return RPAREN; }
"{"                 { return LBRACE; }
"}"                 { return RBRACE; }
";"                 { return SEMICOLON; }
","                 { return COMMA; }  

"\n"                { /* ignore newlines */ }
[ \t]               { /* ignore whitespace */ }
.                   { /* catch all other characters */ }
%%



int yywrap (void){
     return 1;
}


