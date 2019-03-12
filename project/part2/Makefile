all: y.tab.c lex.yy.c
	gcc -o parser y.tab.c
y.tab.c: CS315f18_group35.y lex.yy.c
	yacc CS315f18_group35.y
lex.yy.c: CS315f18_group35.l
	lex CS315f18_group35.l
