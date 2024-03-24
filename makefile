Pseudopad: Pseudopad.l
	   lex Pseudopad.l
	   gcc -o Pseudopad lex.yy.c -ll

clean:    
	rm Pseudopad lex.yy.c
	
