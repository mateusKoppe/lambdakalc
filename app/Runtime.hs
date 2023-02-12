module Runtime where

import qualified Data.Map as Map
import Debug.Trace (trace)
import Lexer

trace' a = trace (show a) a

type Scope = Map.Map String Expr

type Evaluable = ([Expr], Scope, Expr)

run :: [Expr] -> [Expr]
run es = let (_, _, r) = run' $ filterExprs es in r

filterExprs :: [Expr] -> [Expr]
filterExprs = filter (/= BreakLine)

run' :: [Expr] -> ([Expr], Scope, [Expr])
run' = foldl run'' ([], Map.empty, [])

run'' :: ([Expr], Scope, [Expr]) -> Expr -> ([Expr], Scope, [Expr])
run'' (st, sc, es) e = (nst, nsc, es ++ [nes])
  where
    (nst, nsc, nes) = runScoped (st, sc, e)


runScoped :: Evaluable -> Evaluable
-- TODO: Get rid of the wheres, try with monads or something like it
-- Math
runScoped (st, sc, Plus a b) = eval (stb, scb, Plus a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)
runScoped (st, sc, Less a b) = eval (stb, scb, Less a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)
runScoped (st, sc, Times a b) = eval (stb, scb, Times a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)
runScoped (st, sc, Div a b) = eval (stb, scb, Div a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)

-- Logic
runScoped (st, sc, And a b) = eval (stb, scb, And a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)
runScoped (st, sc, Or a b) = eval (stb, scb, Or a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)

-- Comparison
runScoped (st, sc, Eq a b) = eval (stb, scb, Eq a' b')
  where
    (sta, sca, a') = runScoped (st, sc, a)
    (stb, scb, b') = runScoped (sta, sca, b)

-- Scope
runScoped (st, sc, Var a) = eval (st, sc, Var a)
runScoped (st, sc, Let a b) = eval (sta, sca, Let a b')
  where
    (sta, sca, b') = runScoped (st, sc, b)

-- Flow
runScoped (st, sc, If BTrue a _) = runScoped (st, sc, a)
runScoped (st, sc, If BFalse _ a) = runScoped (st, sc, a)
runScoped (st, sc, If c a b) = runScoped (sta, sca, If c' a b)
  where
    (sta, sca, c') = runScoped (st, sc, c)
runScoped (st, sc, Paren a) = runScoped (st, sc, a)
-- FN
runScoped (st, sc, ApplyLam var _ b e) =
  let (_, _, value) = runScoped (st, sc, e)
      (_, _, r) = runScoped (st, Map.insert var value sc, b)
   in (st, sc, r)
runScoped (st, sc, ApplyVar var e) =
  let (_, _, value) = runScoped (st, sc, e)
      b = Map.lookup var sc
      (_, _, r) = trace (show b) $ case b of
        Just (Lam id _ b) -> runScoped (st, Map.insert id value sc, b)
        Nothing -> error $ "Runtime error: function " ++ var ++ " does not exist."
   in (st, sc, r)
-- Otherwise
runScoped (st, sc, x) = (st, sc, x)

eval :: Evaluable -> Evaluable
-- Math
eval (st, sc, Plus (Num a) (Num b)) = (st, sc, Num (a + b))
eval (st, sc, Less (Num a) (Num b)) = (st, sc, Num (a - b))
eval (st, sc, Times (Num a) (Num b)) = (st, sc, Num (a * b))
eval (st, sc, Div (Num a) (Num b)) = (st, sc, Num (a / b))
-- Logic
eval (st, sc, And BTrue BTrue) = (st, sc, BTrue)
eval (st, sc, And _ _) = (st, sc, BFalse)
eval (st, sc, Or BFalse BFalse) = (st, sc, BFalse)
eval (st, sc, Or _ _) = (st, sc, BTrue)
-- Comparasion
eval (st, sc, Eq a b) = (st, sc, if a == b then BTrue else BFalse)
-- Scope
eval (st, sc, Let a b) = (st, Map.insert a b sc, b)
eval (st, sc, Var a) = case v of
  Just v -> (st, sc, v)
  Nothing -> error $ "Runtime error: " ++ a ++ " variable does not exist"
  where
    v = Map.lookup a sc

-- Otherwise
eval (st, sc, x) = error "Runtime error"
