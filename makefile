plTeapot: plTeapot.l
	lex plTeapot.l
	gcc -o plTeapot lex.yy.c -ll

clean:
	rm plTeapot lex.yy.c
