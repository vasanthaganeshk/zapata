/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INT = 258,
    FLOAT = 259,
    STRING = 260,
    CHAR = 261,
    IDENTIFIER = 262,
    USING = 263,
    NAMESPACE = 264,
    STD = 265,
    SEMICOLON = 266,
    TYPEINT = 267,
    TYPEFLOAT = 268,
    TYPECHAR = 269,
    TYPESTRING = 270,
    TYPEAUTO = 271,
    TYPEVOID = 272,
    RETURN = 273,
    HASH = 274,
    INCLUDE = 275,
    OCBRACE = 276,
    ECBRACE = 277,
    IF = 278,
    OBRACE = 279,
    EBRACE = 280,
    COMMA = 281,
    ASSIGNMENT = 282,
    OR = 283,
    AND = 284,
    NOT = 285,
    LESSTHAN = 286,
    GREATERTHAN = 287,
    DOUBLEEQUAL = 288,
    NOTEQUAL = 289,
    LESSTHOREQ = 290,
    GREATTHOREQ = 291,
    BITWISEOR = 292,
    BITWISEXOR = 293,
    BITWISEAND = 294,
    LEFTSHIFT = 295,
    RIGHTSHIFT = 296,
    PLUS = 297,
    MINUS = 298,
    STAR = 299,
    DIVISION = 300,
    REMAINDER = 301,
    POWER = 302,
    BITWISEINV = 303
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 13 "parser.y" /* yacc.c:1909  */

	int ival;
	float fval;
	char *sval;

#line 109 "parser.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
