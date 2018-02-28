
{module MH_Lex where }

%wrapper "basic"


$digit      = [0-9]
$lower      = [a-z]
$upper      = [A-Z]
$symb       = [\!\@\#\$\%\^\&\-\+\=\/\<\>\~\:\;\.\?\/\\\~\'\"\|\[\]]

:-

   $white+                                                                      ;   -- whitespace
   \-[\-]+([^$symb].*)?                                                         ;   -- comments
   if | then | else | Integer | Bool | Char | String | List                         {\s -> KEY s}
   \=\= | \< | \+ | \- | \= | \:\: | \-\> | \&\& | \|\|                         {\s -> OP s}
   not 	| um                                                                    {\s -> UOP s}
   \( | \) | \;                                                                 {\s -> PUNC s}
   True | False                                                                 {\s -> BOOLEAN (read s)}
   $digit+                                                                      {\s -> NUM (read s)}
    \'($lower | $upper)\'                                                                {\s -> CHAR (read s)}
   \"($lower | $upper)*\"                                                       {\s -> STRN (read s)}
   \[(([^\,]*,)*([^\,])$)?\]                                                    {\s -> LIST (read s)}
   [$lower][$lower $upper $digit]*[\']*                                         {\s -> VAR s}
   $symb+                                                                       {\_ -> UNKNOWNSYM}


{

-- The Token type - each action above has type String -> Token

data Token =
    KEY String |
    OP String |
    UOP String |
    PUNC String |
    BOOLEAN Bool |
    NUM Integer |
    CHAR Char |
    STRN String |
    LIST List |
    VAR String |
    UNKNOWNSYM
    deriving Show
}
