import java_cup.runtime.*;
%%

%cup
%unicode
%line


chiffre = [0-9]
entier = {chiffre}+
blanc = [\t]

%%

{entier} {System.out.println("NUM"); return new Symbol(sym.NUM);}
\+ {System.out.println("PLUS"); return new Symbol(sym.PLUS);}
\* {System.out.println("FOIS"); return new Symbol(sym.FOIS);}
\- {System.out.println("MOINS"); return new Symbol(sym.MOINS);}
"(" {System.out.println("PO"); return new Symbol(sym.PO);}
")" {System.out.println("PF"); return new Symbol(sym.PF);}
"\n"  {;}
{blanc}	{;}
.	{System.out.println(yytext());}
