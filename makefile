Pseudopad: PseudoPad.l
	   lex PseudoPad.l
	   gcc -o PseudoPad lex.yy.c -ll

clean:    
	rm PseudoPad lex.yy.c
	
