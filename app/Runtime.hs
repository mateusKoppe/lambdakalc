module Runtime where

import qualified Data.Map as Map
import Debug.Trace (trace)
import Lexer

trace' a = trace (show a) a

type Scope = Map.Map String Expr

type Evaluable = (Scope, Expr)

run :: [Expr] -> [Expr]
run es = let (_, r) = run' $ filterExprs es in r

filterExprs :: [Expr] -> [Expr]
filterExprs = filter (/= BreakLine)

run' :: [Expr] -> (Scope, [Expr])
run' = foldl run'' (Map.empty, [])

run'' :: (Scope, [Expr]) -> Expr -> (Scope, [Expr])
run'' (sc, es) e = (nsc, es ++ [nes])
  where
    (nsc, nes) = runScoped (sc, e)

runImt :: Evaluable -> Expr
runImt (sc, e) = let (_, r) = runScoped (sc, e) in r

runScoped :: Evaluable -> Evaluable
-- TODO: Get rid of the wheres, try with monads or something like it
-- Math
runScoped (sc, Plus a b) = eval (sc, Plus (runImt (sc, a)) (runImt (sc, b)))
runScoped (sc, Less a b) = eval (sc, Less (runImt (sc, a)) (runImt (sc, b)))
runScoped (sc, Times a b) = eval (sc, Times (runImt (sc, a)) (runImt (sc, b)))
runScoped (sc, Div a b) = eval (sc, Div (runImt (sc, a)) (runImt (sc, b)))
-- Logic
runScoped (sc, And a b) = eval (sc, And (runImt (sc, a)) (runImt (sc, b)))
runScoped (sc, Or a b) = eval (sc, Or (runImt (sc, a)) (runImt (sc, b)))
-- Comparison
runScoped (sc, Eq a b) = eval (sc, Eq (runImt (sc, a)) (runImt (sc, b)))
-- Scope
runScoped (sc, Var a) = eval (sc, Var a)
runScoped (sc, Let a b) = let (sca, b') = runScoped (sc, b) in eval (sca, Let a b')
-- Flow
runScoped (sc, If BTrue a _) = runScoped (sc, a)
runScoped (sc, If BFalse _ a) = runScoped (sc, a)
runScoped (sc, If c a b) = let c' = runImt (sc, c) in runScoped (sc, If c' a b)
runScoped (sc, Paren a) = runScoped (sc, a)
-- FN
runScoped (sc, ApplyLam var _ b e) =
  let val = runImt (sc, e)
      r = runImt (Map.insert var val sc, b)
   in (sc, r)
runScoped (sc, ApplyVar var e) =
  let val = runImt (sc, e)
      b = Map.lookup var sc
      r = trace (show b) $ case b of
        Just (Lam id _ b) -> runImt (Map.insert id val sc, b)
        Nothing -> error $ "Runtime error: function " ++ var ++ " does not exist."
   in (sc, r)
-- Otherwise
runScoped x = x

eval :: Evaluable -> Evaluable
-- Math
eval (sc, Plus (Num a) (Num b)) = (sc, Num (a + b))
eval (sc, Less (Num a) (Num b)) = (sc, Num (a - b))
eval (sc, Times (Num a) (Num b)) = (sc, Num (a * b))
eval (sc, Div (Num a) (Num b)) = (sc, Num (a / b))
-- Logic
eval (sc, And BTrue BTrue) = (sc, BTrue)
eval (sc, And _ _) = (sc, BFalse)
eval (sc, Or BFalse BFalse) = (sc, BFalse)
eval (sc, Or _ _) = (sc, BTrue)
-- Comparasion
eval (sc, Eq a b) = (sc, if a == b then BTrue else BFalse)
-- Scope
eval (sc, Let a b) = (Map.insert a b sc, b)
eval (sc, Var a) = case v of
  Just v -> (sc, v)
  Nothing -> error $ "Runtime error: " ++ a ++ " variable does not exist"
  where
    v = Map.lookup a sc

-- Otherwise
eval x = error "Runtime error"
