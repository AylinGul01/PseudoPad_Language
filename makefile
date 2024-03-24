pseudopad: pseudopad.l
	lex pseudopad.l
	gcc -o pseudopad lex.yy.c 

run: 
	./pseudopad

clean:
	rm pseudopad lex.yy.c
