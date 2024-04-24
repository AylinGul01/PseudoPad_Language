pseudopad:  pseudopad.l
    lex pseudopad.l
	gcc pseudopad.c lex.yy.c -o pseudopad

clean:
	rm pseudopad lex.yy.c
