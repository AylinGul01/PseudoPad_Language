text (\"[^\"]*\")
character (\'[^\']\')
number ([+-]?[0-9]+(\.[0-9]+)?)
boolean (true|false)
IO (writeFile|readFile)

NUMBER number
STRING_TYPE text
BOOLEAN_TYPE flag
CHAR_TYPE char
final const

func func
void empty

comment  \(\*(.|\n)*?\*\)

var [a-zA-Z_$][a-zA-Z0-9_'$]*

%%
\+                                  printf(" PLUS ");
plus                                printf(" PLUS ");
\-                                  printf(" MINUS ");
MINUS                               printf(" MINUS ");
\*                                  printf(" MULT ");
multiply                            printf(" MULT ");
\/                                  printf(" DIV ");
divide                              printf(" DIV ");
{text}                              printf(" STRING "); 
{character}                         printf(" CHARACTER "); 
{boolean}                           printf(" BOOLEAN "); 
{number}                            printf("NUMBER "); 
{STRING_TYPE}                       printf(" STRING_TYPE ");
{BOOLEAN_TYPE}                      printf(" BOOLEAN_TYPE ");
{CHAR_TYPE}                         printf(" CHAR_TYPE ");
{final}                             printf(" CONSTANT ");
{func}                              printf(" FUNC ");
{void}                              printf(" VOID_TYPE ");
return                              printf(" RETURN ");
or                                  printf(" OR ");
and                                 printf(" AND");
\=                                  printf(" EQUAL ");
equal                               printf(" EQUAL ");
\!\=                                printf(" NOTEQUAL ");
notequal                            printf(" NOTEQUAL ");
\=\>                                printf(" ASSIGN");
assign                              printf(" ASSIGN");
\>                                  printf(" GREATER ");
greater                             printf(" GREATER ");
\<                                  printf(" SMALLER ");
smaller                             printf(" SMALLER ");
\>=                                 printf(" GREATEREQUAL ");
greaterequal                        printf(" GREATEREQUAL ");
\<=                                 printf(" LESSEQUAL ");
lessequal                           printf(" LESSEQUAL ");
\!                                  printf(" NOT ");
not                                 printf(" NOT ");
algorithm                           printf(" ALGORITHM ");
endalgorithm                        printf(" ENDALGORITHM ");
if                                  printf(" IF ");
endif                               printf(" ENDIF "); 
do                                  printf(" DO "); 
to                                  printf(" TO ");
then                                printf(" THEN ");
else                                printf(" ELSE ");
elif                                printf(" ELSEIF ");
for                                 printf(" FOR ");
endfor                              printf(" ENDFOR ");
while                               printf(" WHILE ");
endwhile                            printf(" ENDWHILE "); 
repeat                              printf(" REPEAT ");
until                               printf(" UNTIL ");
switch                              printf(" SWITCH ");                   
case                                printf(" CASE ");
default                             printf(" DEFAULT ");
endswitch                           printf(" ENDSWITCH ");
break                               printf(" BREAK ");
continue                            printf(" CONTINUE ");
procedure                           printf(" PROCEDURE ");  
endprocedure                        printf(" ENDPROCEDURE ");             
{comment}                           printf(" COMMENT ");
print                               printf(" PRINT ");
FINISH                              printf(" FINISH_PROG ");
\(                                  printf(" LPAREN ");
\)                                  printf(" RPAREN ");
\;                                  printf(" SEMICOLON ");
\,                                  printf(" COMMA ");
{var}                               printf(" VARIABLE ");
[ \t]                               /* Ignore whitespace */
.                                   printf(" Syntax Error! ");


%%            
            
            
int yywrap (void)            
{            
    return 1;            
}            
            
