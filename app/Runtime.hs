module Runtime where

import qualified Data.Map as Map
import Lexer

type Scope = Map.Map String Expr

run :: [Expr] -> [Expr]
run es =
  snd
    ( foldl
        (\(s, es) e -> let (ns, nes) = run' s e in (ns, es ++ [nes]))
        (Map.empty :: Scope, [] :: [Expr])
        es
    )

run' :: Scope -> Expr -> (Scope, Expr)
run' s (App a) = (s, App (run'' s a))
run' s (Plus a b) = eval s (Plus (run'' s a) (run'' s b))
run' s (Less a b) = eval s (Less (run'' s a) (run'' s b))
run' s (Var a) = eval s (Var a)
run' s (Let a b) = eval s (Let a (run'' s b))
run' s x = (s, x)

run'' :: Scope -> Expr -> Expr
run'' s e = snd (run' s e)

eval :: Scope -> Expr -> (Scope, Expr)
eval s (Plus (Num a) (Num b)) = (s, Num (a + b))
eval s (Less (Num a) (Num b)) = (s, Num (a - b))
eval s (Let a b) = (Map.insert a b s, b)
eval s (Var a) = case v of
  Just v -> (s, v)
  Nothing -> error ("Runtime error: " ++ a ++ " variable does not exist")
  where
    v = Map.lookup a s
eval s x = error "Runtime error"
