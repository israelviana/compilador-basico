import java_cup.runtime.*;


%%

%class scanner
%unicode
%cup
%line
%column

%%
// PALAVRAS-CHAVE
"if"        { return new Symbol(sym.IF, "if"); }
"else"      { return new Symbol(sym.ELSE, "else"); }
"while"     { return new Symbol(sym.WHILE, "while"); }
"return"    { return new Symbol(sym.RETURN, "return"); }

// IDENTIFICADORES
[a-zA-Z_][a-zA-Z0-9_]* { return new Symbol(sym.IDENTIFIER, yytext()); }

// CONSTANTES NUMÉRICAS
[0-9]+                  { return new Symbol(sym.INT_LITERAL, yytext()); }
[0-9]+"."[0-9]+         { return new Symbol(sym.FLOAT_LITERAL, yytext()); }

// OPERADORES
"+"         { return new Symbol(sym.PLUS, "+"); }
"-"         { return new Symbol(sym.MINUS, "-"); }
"*"         { return new Symbol(sym.TIMES, "*"); }
"/"         { return new Symbol(sym.DIVIDE, "/"); }
"="         { return new Symbol(sym.ASSIGN, "="); }
">"         { return new Symbol(sym.GREATER, ">"); }
"<"         { return new Symbol(sym.LESS, "<"); }

// DELIMITADORES
";"         { return new Symbol(sym.SEMICOLON, ";"); }
","         { return new Symbol(sym.COMMA, ","); }
"{"         { return new Symbol(sym.LBRACE, "{"); }
"}"         { return new Symbol(sym.RBRACE, "}"); }
"("         { return new Symbol(sym.LPAREN, "("); }
")"         { return new Symbol(sym.RPAREN, ")"); }

// COMENTÁRIOS
"//".*                       { /* Ignorar comentários de linha única */ }
"/*"([^*]|[*][^/])*"*/"      { /* Ignorar comentários de múltiplas linhas */ }

// ESPAÇOS EM BRANCO
[ \t\n\r]+                   { /* Ignorar */ }

<<EOF>> { return new Symbol(sym.EOF); }

// QUALQUER OUTRO CARACTERE
.                            { System.err.println("Caractere inválido: " + yytext()); }
