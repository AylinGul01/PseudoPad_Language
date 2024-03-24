# Programming Languages
Group Members: Aylin Gül, Ayşenur Dağ, Nigar Selek, Sezen Huddamoğlu


# Explanations about the language

- Takes a file with extension .mrt
- Has if, while, ...

- You can run your program by running the makefile and giving it to myprog as input:

make
./myprog < example.mrt



Automatic C-code Generator
The Automatic C-code Generator is a tool that converts algorithms or pseudocode into corresponding C code. This tool is designed to help programmers and students quickly generate C code from a given set of instructions or algorithmic steps.

Functionalities
The Automatic C-code Generator supports the following functionalities:

Declaring and Initializing Variables: Variables can be declared and initialized as per the requirements of the algorithm.
Variable Usage: Variables can only be used if they have been declared.
Operations: Supports arithmetic, logical, assignment, and relational operations.
Input/Output: Provides the ability to read input from the user and print output.
Conditional Statements: Supports if-else and switch-case statements for conditional execution of code.
Looping Statements: Supports while, for, and do-while loops for iterative execution of code.
Functions and Procedures: Allows the definition and usage of functions and procedures.
Tools Used
The Automatic C-code Generator is implemented using the following tools:

Lex: Used for lexical analysis, defining keywords and tokens.



#BNF

<program> ::= <algorithm> <main> <procedure_list>

<algorithm> ::= "algorithm" <declaration_list> <statement_list> "end algorithm"

<main> ::= "main" <statement_list> "end main"

<procedure_list> ::= <procedure> <procedure_list> | ε

<procedure> ::= "procedure" IDENTIFIER "(" <param_list> ")" <statement_list> "end procedure"

<param_list> ::= IDENTIFIER <param_list_tail> | ε

<param_list_tail> ::= "," IDENTIFIER <param_list_tail> | ε

<declaration_list> ::= <declaration> <declaration_list> | ε

<declaration> ::= <type> IDENTIFIER <init> ";"

<type> ::= "int" | "float" | "string" | "bool"

<init> ::= "=" <expression> | ε

<statement_list> ::= <statement> <statement_list> | ε

<statement> ::= <assignment> | <if_statement> | <while_statement> | <for_statement> | <repeat_statement> | <switch_statement> | <break_statement> | <continue_statement> | <return_statement> | <print_statement> | <scan_statement> | <procedure_call>

<assignment> ::= IDENTIFIER "=" <expression> ";"

<if_statement> ::= "if" "(" <expression> ")" <statement_list> <elseif_list> <else_part> "end if"

<elseif_list> ::= "elseif" "(" <expression> ")" <statement_list> <elseif_list> | ε

<else_part> ::= "else" <statement_list> | ε

<while_statement> ::= "while" "(" <expression> ")" <statement_list> "end while"

<for_statement> ::= "for" IDENTIFIER "=" <expression> "to" <expression> "do" <statement_list> "end for"

<repeat_statement> ::= "repeat" <statement_list> "until" "(" <expression> ")"

<switch_statement> ::= "switch" "(" <expression> ")" <case_list> <default_case> "end switch"

<case_list> ::= "case" <expression> ":" <statement_list> <case_list> | ε

<default_case> ::= "default" ":" <statement_list> | ε

<break_statement> ::= "break" ";"

<continue_statement> ::= "continue" ";"

<return_statement> ::= "return" <expression> ";"

<print_statement> ::= "print" "(" <expression> ")" ";"

<scan_statement> ::= "scan" "(" IDENTIFIER ")" ";"

<procedure_call> ::= IDENTIFIER "(" <arg_list> ")" ";"

<arg_list> ::= <expression> <arg_list_tail> | ε

<arg_list_tail> ::= "," <expression> <arg_list_tail> | ε

<expression> ::= <term> <expression_tail>

<expression_tail> ::= <rel_op> <term> <expression_tail> | <logical_op> <term> <expression_tail> | ε

<term> ::= <factor> <term_tail>

<term_tail> ::= <mult_op> <factor> <term_tail> | ε

<factor> ::= "(" <expression> ")" | IDENTIFIER | INTEGER | FLOAT | STRING | BOOLEAN | <unary_op> <factor>

<add_op> ::= "+" | "-" | "plus" | "minus" 

<mult_op> ::= "*" | "/" | "multiply" | "divide"

<unary_op> ::=  "!" | "not" | "->" | "assign"

<rel_op> ::= "<" | ">" | "<=" | ">=" | "=" | "!=" | "equal" | "not equal" | "less than" | > | "greater than" | "less equal" | "greater equal"

<logical_op> ::= "&&" | "||" | "and" | "or"
