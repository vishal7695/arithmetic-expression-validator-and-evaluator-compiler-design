expr: lex yacc
	gcc lex.yy.c y.tab.c

lex: expr.l
	lex expr.l

yacc: expr.y
	yacc -d expr.y

clean: 
	rm a.out lex.yy.c y.tab.c y.tab.h
