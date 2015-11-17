bison -d -r all parser.y
flex tokenizer.l
g++ lex.yy.c parser.tab.c -std=c++14 -lfl -o zapata
