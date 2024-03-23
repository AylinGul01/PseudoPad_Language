# Programming Language Mrt
Group Members: Aylin Gül, Ayşenur Dağ, Nigar Selek, Sezen Huddamoğlu


## Syntax

\<prog\> : \<stmt\> | \<stmts\>

\<stmt\> : \<expr\> ...

## Explanations about the language

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


##BNF

<program> ::= <declaration_list> <function_list> 'main' '(' ')' '{' <statement_list> '}'

<declaration_list> ::= <declaration> <declaration_list> | ε

<declaration> ::= <type> <identifier> ';'
                | <type> <identifier> '=' <expression> ';'

<function_list> ::= <function> <function_list> | ε

<function> ::= <type> <identifier> '(' <parameter_list> ')' '{' <statement_list> '}'

<parameter_list> ::= <parameter> ',' <parameter_list> | <parameter> | ε

<parameter> ::= <type> <identifier>

<statement_list> ::= <statement> <statement_list> | ε

<statement> ::= <declaration>
              | <assignment>
              | <if_statement>
              | <while_statement>
              | <for_statement>
              | <do_while_statement>
              | <function_call> ';'
              | 'return' <expression> ';'
              | '{' <statement_list> '}'

<assignment> ::= <identifier> '=' <expression> ';'

<if_statement> ::= 'if' '(' <expression> ')' <statement> | 'if' '(' <expression> ')' <statement> 'else' <statement>

<while_statement> ::= 'while' '(' <expression> ')' <statement>

<for_statement> ::= 'for' '(' <assignment> <expression> ';' <expression> ')' <statement>

<do_while_statement> ::= 'do' <statement> 'while' '(' <expression> ')' ';'

<function_call> ::= <identifier> '(' <argument_list> ')'

<argument_list> ::= <expression> ',' <argument_list> | <expression> | ε

<expression> ::= <term> '+' <expression>
               | <term> '-' <expression>
               | <term>

<term> ::= <factor> '*' <term>
         | <factor> '/' <term>
         | <factor>

<factor> ::= '(' <expression> ')'
           | <identifier>
           | <number>
           | <function_call>

<type> ::= 'int' | 'float' | 'double' | 'char'

<identifier> ::= <letter> {<letter> | <digit>}

<number> ::= <digit> {<digit>}

<letter> ::= 'a' | 'b' | ... | 'z' | 'A' | 'B' | ... | 'Z'

<digit> ::= '0' | '1' | ... | '9'

