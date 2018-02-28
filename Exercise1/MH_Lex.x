
{module MH_Lex where }

%wrapper "basic"


$digit      = [0-9]
$lower      = [a-z]
$upper      = [A-Z]
$symb       = [\!\@\#\$\%\^\&\-\+\=\/\<\>\~\:\;\.\?\/\\\~\'\"\|\[\]]

:-

   $white+                                  			;   -- whitespace
   \-[\-]+([^$symb].*)?                     			;   -- comments
   if | then | else | Integer | Bool  					{\s -> KEY s}
   \=\= | \< | \+ | \- | \= | \:\: | \-\> | \&\& | \|\|	{\s -> OP s}
   not 	| um											{\s -> UOP s}
   \( | \) | \;                             			{\s -> PUNC s}
   True | False                             			{\s -> BOOLEAN (read s)}
   $digit+                                  			{\s -> NUM (read s)}
   [$lower][$lower $upper $digit]*[\']*     			{\s -> VAR s}
   $symb+                                   			{\_ -> UNKNOWNSYM}


{

-- The Token type - each action above has type String -> Token

data Token =
    KEY String | 
    OP String |
	UOP String |
    PUNC String | 
    BOOLEAN Bool |
    NUM Integer |
    VAR String |
    UNKNOWNSYM
    deriving Show
}
