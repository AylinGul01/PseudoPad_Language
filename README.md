## Programming Languages Project
Group Members: Aylin Gül -  20220808614, 
               Ayşenur Dağ - 20220808620, 
               Nigar Selek - 20200808068, 
               Sezen Huddamoğlu - 20200808064


# Explanations about PseudoPad
Psuedopad is a pseudo code language focused on simplicity and comprehensibility. It is primarily used to express the logic of algorithms and programs. While emphasizing readability and clarity, the language provides programmers with a strong expressive capability. Additionally, Psuedopad reduces code complexity, minimizing the likelihood of errors. This makes the software development process more efficient, allowing successful projects to be completed more quickly.


#BNF
```
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

<unary_op> ::= "!" | "not" | "->" | "assign"

<rel_op> ::= "<" | ">" | "<=" | ">=" | "=" | "!=" | "equal" | "not equal" | "less than" | > | "greater than" | "less equal" | "greater equal"

<logical_op> ::= "&&" | "||" | "and" | "or"
```
