
-- Micro-Haskell examples TPJ 2018

-- load into Haskell by pressing <F6> or writing
-- :load "MH_examples.hs"
-- You may need to provide the full path to the file

-- to reload after changes, type
-- :reload

-- Logical negation

neg :: Bool -> Bool ;
neg b = if b then False else True ;

-- Exercise: define logical conjunction and disjunction.
-- The types should be:
-- land :: Bool -> Bool -> Bool ;
-- lor :: Bool -> Bool -> Bool ;

land :: Bool -> Bool -> Bool ;
land a b = if (a && b) then True else False ;

lor :: Bool -> Bool -> Bool ;
lor a b = if (a || b) then True else False ;

-- Arithmetic functions

fib' :: Integer -> Integer ;
fib' n = if n == 0 then 0
        else if n == 1 then 1
        else fib' (n - 1) + fib' (n - 2) ;  -- this is inefficient

fib :: Integer -> Integer ;
fib n = if n > 0 then fib' n
		else (if (divides 2 n) then (fib' (-n))
		else (-fib' (-n))) ;

times :: Integer -> Integer -> Integer ;
times m n = if 0 < n then m + times m (n - 1)
            else if n < 0 then times m (n + 1) - m
            else 0 ;

absolutna :: Integer -> Integer ;
absolutna n = if n > 0 then n else -n ;

divides' :: Integer -> Integer -> Bool ;
divides' m n = if n == 0 then True
        else if n < m then False
        else divides' m (n - m) ;

divides :: Integer -> Integer -> Bool ;
divides m n = divides' (absolutna m) (absolutna n) ;

-- Exercise: change divides so that it will also work with negative numbers!

-- Exercise: change fib so that it will also work with negative numbers!

-- Currying

double :: Integer -> Integer ;
double = times 2 ;

-- Exercise: define multSeven telling whether a number is a multiple of 7.

multSeven :: Integer -> Bool ;
multSeven = divides 7 ;

-- Taking a function as argument

twice :: (Integer -> Integer) -> Integer -> Integer ;
twice f n = f (f n) ;

-- Exercise: write a function
-- rpt m f n
-- that computes f (f (f (... n))), where f is repeated m times
-- and use it to define a function
-- pow a b
-- which computes a to the power of b

rpt :: Integer -> (a -> a) -> a -> a ;
rpt m f n = if m < 1 then n else f (rpt (m-1) f n) ;

pow:: Integer -> Integer -> Integer ;
pow a b = rpt (b-1) (times a) a ;

-- Representing infinite lists as functions

hd :: (Integer -> Integer) -> Integer ;
hd l = l 0;

tl :: (Integer -> Integer) -> (Integer -> Integer) ;
tl l n = l (n+1) ;

cons :: Integer -> (Integer -> Integer) -> (Integer -> Integer) ;
cons n l m = if m == 0 then n else l (m-1) ;

from :: Integer -> (Integer -> Integer) ;
from m n = m + n ;

-- Exercise: write a function
-- apply f l
-- which applies the function f on each entry of l (i.e., returns a list)

apply :: (Integer -> Integer) -> (Integer -> Integer) -> (Integer -> Integer) ;
apply f l = cons  (f (hd l)) (apply f (tl l)) ;

-- Exercise: define a function square returning the square of the input,
-- and use it to define a list squares of squares of numbers starting with 0.

square :: Integer -> Integer ;
square n = times n n ;

ustvari :: (Integer -> Integer) ;
ustvari = cons 0 (apply (1+) ustvari) ;

naravna :: (Integer -> Integer) ;
naravna = from 0 ;

naravna' :: (Integer -> Integer) ;
naravna' n = n ;

kvadrati :: (Integer -> Integer) ;
kvadrati = apply square naravna ;

-- Filtering an infinite list

fltr :: (Integer -> Bool) -> (Integer -> Integer) -> (Integer -> Integer) ;
fltr p l n =
  if (p (hd l))
    then if n == 0 then hd l
         else fltr p (tl l) (n - 1)
    else fltr p (tl l) n ;


-- Eratosthenes' sieve

notdivides :: Integer -> Integer -> Bool ;
notdivides m n = neg (divides m n) ;

sieve :: (Integer -> Integer) -> (Integer -> Integer) ;
sieve l = cons (hd l) (sieve (fltr (notdivides (hd l)) (tl l))) ;

primes :: Integer -> Integer ;
primes = sieve (from 2) ;

-- Warning, this is *very* slow!!!
-- One reason for this is it recomputes "hd l" multiple times
-- An efficient implementation would avoid this repetition


-- Exercise: define a function
-- addEntries :: (Integer -> Integer) -> (Integer -> Integer)
-- returning a list whose n-th entry is the sum of the first n entries of the input.
-- Using this define the infinite list of triangle numbers triangles.

addEntries :: (Integer -> Integer) -> (Integer -> Integer) ;
addEntries l = cons (hd l) (addEntries (cons ((hd l) + (hd (tl l))) (tl (tl l)))) ;

triangles :: (Integer -> Integer) ;
triangles = addEntries naravna ;

-- Exercise: define a function
-- addLists :: (Integer -> Integer) -> (Integer -> Integer) -> (Integer -> Integer)
-- returning a list whose n-th entry is the sum of n-th entries of the input lists.

addLists :: (Integer -> Integer) -> (Integer -> Integer) -> (Integer -> Integer) ;
addLists l n =  cons ((hd l) + (hd n)) (addLists (tl l) (tl n)) ;

-- Question: What does the following give?
-- addLists triangles (tl triangles)

seznam :: (Integer -> Integer) ;
seznam  = (addLists triangles (tl triangles)) ;

-- Answer: The list of squares.

-- Exercise: see if you can find a more efficient way to compute the
-- "infinite list" of Fibonacci numbers than the fib function above.

-- First we construct a function zadnjaDva, which from a list l constructs a new
-- list, where n-th element is the sum of n-th and (n+1)-th member of l

zadnjaDva :: (Integer -> Integer) -> (Integer -> Integer) ;
zadnjaDva l = cons ((hd (tl l)) + (hd l)) (zadnjaDva (tl l)) ;

-- This gives us an idea for the Fibonacci numbers:

fibo :: (Integer -> Integer) -> (Integer -> Integer) ;
fibo l = cons (hd l)  (fibo (cons (hd (tl l)) (cons ((hd (tl l)) + (hd l)) (tl (tl l))))) ;

nic :: (Integer -> Integer);
nic n = 0 ;

fibonacci :: (Integer -> Integer) ;
fibonacci = fibo (cons 0 (cons 1 nic)) ;
