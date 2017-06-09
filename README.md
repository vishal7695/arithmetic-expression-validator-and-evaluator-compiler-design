Compiler Design Project on - 
“Arithmetic Expression validator and Evaluator”


TOOLS USED 

LEX
The Lex tool receives at the input a set of user defined patterns that it uses to scan the source code. Each time the source code matches one of the patterns a defined action is executed by Lex (one of the action is that of returning the tokens).

Lex is officially known as a "Lexical Analyzer". It’s main job is to break up an input stream into more into meaningful units, or tokens. For example, consider breaking a text file up into individual words.
More pragmatically, Lex is a tool for automatically generating a lexer ( also known as scanner).

YACC

The Yacc tool receives at the input the user grammar. Starting from this grammar it gene-rates the C source code for the parser. Yacc invokes Lex to scan the source code and uses the tokens returned by Lex to build a syntax tree. 

YACC stands for Yet Another Compiler Compiler. Its GNU version is called Bison. YACC translates any grammar of a language into a parser for that language. Grammars for YACC are described using a variant of Backus Naur Form (BNF). A BNF grammar can be used to express context-free languages. By convention, a YACC file has the suffix .y.

Yacc generates a parser in file y.tab.c and an include file y.tab.h. Lex includes this file (y.tab.h) and uses the definitions for token values found in this file for the returned tokens.


Lexical Analyser - expr.l
Syntax analyser - expr.y

How to compile and run the scanner + parser ?
lex expr.l
yacc -d expr.y
gcc lex.yy.c y.tab.c 
./a.out

OR
make
./a.out

Terminate the program with CTLˆD.


The -d option causes yacc to generate definitions for tokens and place them in the file y.tab.h. 
The main() function calls yyparse() which automatically calls yylex()


SAMPLE TEST CASES
1)  Input=5-2*6+7
Result=success
Output=0

2). Input=5-6/0+7
Result=Error(divide by zero)
Output=ERROR: Invalid Arithmetic Expression

3). Input=a-7+5
Result=Error(unrecognized token)
Output=ERROR: Invalid Arithmetic Expression

4). Input=2-5*7/3+4-9/2
Result=Success
Output=-8
 
