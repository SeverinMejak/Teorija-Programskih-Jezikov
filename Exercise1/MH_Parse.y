{module MH_Parse where
import MH_Lex
}

%name mh_parseProg Prog
%name mh_parseExp Exp
%tokentype { Token }
%error { parseError }

%token

--declaration of terminal symbols

        if                  {KEY "if"}
        then                {KEY "then"}
        else                {KEY "else"}
        integertype         {KEY "Integer"}
        booltype            {KEY "Bool"}
        '~'                 {OP "=="}
        '<'                 {OP "<"}
        '+'                 {OP "+"}
        '-'                 {OP "-"}
        '='                 {OP "="}
        land                {OP "&&"}
        lor                 {OP "||"}
        colcol              {OP "::"}
        arrow               {OP "->"}
        not                 {UOP "not"}
        um                  {UOP "um"}
        '('                 {PUNC "("}
        ')'                 {PUNC ")"}
        ';'                 {PUNC ";"}
        num                 {NUM $$}
        boolean             {BOOLEAN $$}
        var                 {VAR $$}


-- precedence and associativity declarations, lowest precedence first

--%left land lor
--%nonassoc not
--%nonassoc '~' '<'
--%nonassoc um
--%left '+' '-'
--%right arrow

%%

-- the grammar

Prog : {- empty -}              {[]}
     | Decl Prog                {$1:$2}

Decl : TypeDecl TermDecl        {($1,$2)}

TypeDecl : var colcol Type ';'  {($1,$3)}

Type : integertype              {TypeConst "Integer"}
     | booltype                 {TypeConst "Bool"}
     | Type arrow Type          {TypeOp ("->", $1, $3)}
     | '(' Type ')'             {$2}

TermDecl : var Args '=' Exp ';' {($1, lamabstract $2 $4)}

Args : {- empty -}              {[]}
     | var Args                 {$1:$2}

Exp  : if Exp then Exp else Exp {Cond ($2, $4, $6)}
     | Exp0                     {$1}

Exp0 : Exp0 land Exp1           {Op ("&&", $1, $3)}
    | Exp1                      {$1}
	 
Exp1 : Exp1 lor Exp2            {Op ("||", $1, $3)}
    | Exp2                      {$1}

Exp2 : not Exp2                 {Uop ("not", $2)}
    | Exp3                      {$1}
	 
Exp3 : Exp3 '~' Exp4            {Op ("==", $1, $3)}
    | Exp4                      {$1}
	 
Exp4 : Exp4 '<' Exp5            {Op ("<", $1, $3)}
    | Exp5                      {$1}
	 
Exp5 : Exp5 '+' Exp6            {Op ("+", $1, $3)}
    | Exp6                      {$1}
	 
Exp6 : Exp6 '-' Exp7            {Op ("-", $1, $3)}
    | Exp7                      {$1}
	 
Exp7 : um Exp7                  {Uop ("um", $2)}
     | Exp8                     {$1}

Exp8 : Exp9 Exp8                {Op ("appl", $1, $2)}
     | Exp9                     {$1}

Exp9 : num                      {Num $1}
     | boolean                  {Boolean $1}
     | var                      {Var $1}
     | '(' Exp ')'              {$2}
     
{
  
parseError :: [Token] -> a
parseError _ = error "MH parse error"

-- Haskell datatypes representing abstract syntax of MH types and expressions
  
data Type =
        TypeConst String |
        TypeOp (String, Type, Type)
        deriving Show
  
data Exp =
        Num Integer |
        Boolean Bool |
        Var String |
        Op (String, Exp, Exp) |
        Uop (String, Exp) |
        Cond (Exp, Exp, Exp) |
        Lam (String, Exp)
        deriving Show

lamabstract [] exp = exp
lamabstract (v:vs) exp = Lam(v, lamabstract vs exp)
}

