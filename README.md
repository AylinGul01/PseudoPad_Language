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

