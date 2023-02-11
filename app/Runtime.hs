module Runtime where

import qualified Data.Map as Map
import Lexer
import Data.Functor.Contravariant (Comparison(Comparison))

type Scope = Map.Map String Expr

run :: [Expr] -> [Expr]
run es =
  snd
    ( foldl
        (\(s, es) e -> let (ns, nes) = runScoped s e in (ns, es ++ [nes]))
        (Map.empty :: Scope, [] :: [Expr])
        es
    )


-- This function needs to be removed
-- Edge case: 1 + let a = 2 will not change scope
runGet :: Scope -> Expr -> Expr
runGet s e = snd (runScoped s e)

runScoped :: Scope -> Expr -> (Scope, Expr)
runScoped s (App a) = runScoped s a
-- Math
runScoped s (Plus a b) = eval s (Plus (runGet s a) (runGet s b))
runScoped s (Less a b) = eval s (Less (runGet s a) (runGet s b))
runScoped s (Times a b) = eval s (Times (runGet s a) (runGet s b))
runScoped s (Div a b) = eval s (Div (runGet s a) (runGet s b))
-- Logic
runScoped s (And a b) = eval s (And (runGet s a) (runGet s b))
runScoped s (Or a b) = eval s (Or (runGet s a) (runGet s b))
-- Comparison
runScoped s (Eq a b) = eval s (Eq (runGet s a) (runGet s b))
-- Scope
runScoped s (Var a) = eval s (Var a)
runScoped s (Let a b) = eval s (Let a (runGet s b))
-- Flow
runScoped s (If BTrue t _) = runScoped s t
runScoped s (If BFalse _ a) = runScoped s a
runScoped s (If e a b) = runScoped s (If (runGet s e) a b)
runScoped s (Paren a) = runScoped s a
-- FN
runScoped s (Lam a t e) = (s, Callable a e)

runScoped s x = (s, x)


eval :: Scope -> Expr -> (Scope, Expr)
-- Math
eval s (Plus (Num a) (Num b)) = (s, Num (a + b))
eval s (Less (Num a) (Num b)) = (s, Num (a - b))
eval s (Times (Num a) (Num b)) = (s, Num (a * b))
eval s (Div (Num a) (Num b)) = (s, Num (a / b))
-- Logic
eval s (And BTrue BTrue) = (s, BTrue)
eval s (And _ _) = (s, BFalse)
eval s (Or BFalse BFalse) = (s, BFalse)
eval s (Or _ _) = (s, BTrue)
-- Comparasion
eval s (Eq a b) = (s, if a == b then BTrue else BFalse)
-- Scope
eval s (Let a b) = (Map.insert a b s, b)
eval s (Var a) = case v of
  Just v -> (s, v)
  Nothing -> error ("Runtime error: " ++ a ++ " variable does not exist")
  where
    v = Map.lookup a s
eval s x = error "Runtime error"
