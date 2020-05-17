plTeapot: plTeapot.l	plTeapot.y 
	lex plTeapot.l
	yacc -d plTeapot.y
	gcc -o plTeapot lex.yy.c y.tab.c -ll -ly -lm

clean:
	rm plTeapot lex.yy.c
