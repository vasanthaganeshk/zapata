%{
	#include <bits/stdc++.h>
	using namespace std;
	extern "C" int yylex();
	extern "C" int yyparse();
	extern "C" FILE *yyin;
	extern int line_no;

	void yyerror(char const *s);
%}

%union {
	int ival;
	float fval;
	char *sval;
}

%token <ival> INT
%token <fval> FLOAT
%token <sval> STRING
%token <sval> CHAR
%token IDENTIFIER

%token USING
%token NAMESPACE
%token STD
%token SEMICOLON
%token TYPEINT
%token TYPEFLOAT
%token TYPECHAR
%token TYPESTRING
%token TYPEAUTO 
%token TYPEVOID
%token RETURN
%token HASH
%token INCLUDE
%token OCBRACE
%token ECBRACE

%token IF
%token OBRACE
%token EBRACE
%token COMMA

%right ASSIGNMENT
%left OR
%left AND
%left NOT
%left LESSTHAN GREATERTHAN DOUBLEEQUAL NOTEQUAL LESSTHOREQ GREATTHOREQ
%left BITWISEOR
%left BITWISEXOR
%left BITWISEAND
%left LEFTSHIFT RIGHTSHIFT
%left PLUS MINUS
%left STAR DIVISION REMAINDER
%right POWER
%left BITWISEINV

%%
template:
	typelines
	;

typelines:
	typelines typeline
	| typeline
	;

typeline:
	header
	| declaration SEMICOLON
	| function
	;

header:
	HASH INCLUDE LESSTHAN IDENTIFIER GREATERTHAN
	USING NAMESPACE STD SEMICOLON
	;

declaration:
	rettype decl
	;

decl:
	decl COMMA IDENTIFIER
	| decl COMMA IDENTIFIER ASSIGNMENT expression
	| IDENTIFIER
	| IDENTIFIER ASSIGNMENT expression
	;

function:
	rettype IDENTIFIER OBRACE argsdefinition EBRACE  OCBRACE blockstmts ECBRACE
	;

blockstmts:
	blockstmts blockstmt
	| blockstmt
	;

blockstmt:
	expression SEMICOLON
	| typeline
	| IF OBRACE expression EBRACE OCBRACE blockstmts ECBRACE
	| RETURN expression SEMICOLON
	;

rettype:
	TYPEAUTO
	| TYPEINT
	| TYPEFLOAT
	| TYPECHAR
	| TYPESTRING
	| TYPEVOID
	;

argsdefinition:
	argsdefinition COMMA IDENTIFIER
	| argsdefinition COMMA IDENTIFIER ASSIGNMENT expression
	| IDENTIFIER
	| IDENTIFIER ASSIGNMENT expression
	|
	;

argscall:
	argscall COMMA expression
	| expression
	|
	;

expression:
	IDENTIFIER ASSIGNMENT expression
	| OBRACE expression EBRACE
	| BITWISEINV expression
	| expression POWER expression
	| expression STAR expression
	| expression DIVISION expression
	| expression REMAINDER expression
	| expression PLUS expression
	| expression MINUS expression
	| expression LEFTSHIFT expression
	| expression RIGHTSHIFT expression
	| expression BITWISEAND expression
	| expression BITWISEXOR expression
	| expression BITWISEOR expression
	| expression LESSTHAN expression
	| expression GREATERTHAN expression
	| expression DOUBLEEQUAL expression
	| expression NOTEQUAL expression
	| expression LESSTHOREQ expression
	| expression GREATTHOREQ expression
	| NOT expression
	| expression AND expression
	| expression OR expression
	| IDENTIFIER
	| INT
	| STRING
	| CHAR
	| FLOAT
	| IDENTIFIER OBRACE argscall EBRACE
	;
%%

int main(int argc, char *argv[])
{
	FILE *myfile = fopen(argv[1], "r");
	if(!myfile){
		cout<< "Error in opening the file";
		return 1;
	}
	yyin = myfile;

	do{
		yyparse();

	}while(!feof(yyin));
	return 0;
}

void yyerror(char const *s){
	cout<< "Message: " << s << endl;
	printf("\033[1;31mError in line %d \033[0m\n", line_no);
	exit(1);
}

int yywrap(void)
{
    return 0;
}
