module TypeSystem where

import Control.Exception (TypeError (TypeError))
import qualified Data.Map as Map
import Debug.Trace (trace)
import Lexer

type TypeScope = Map.Map String Type

typeCheck :: [Expr] -> [Expr]
typeCheck es = let (_, r) = typeCheck' $ filterExprs es in r

typeCheck' :: [Expr] -> (TypeScope, [Expr])
typeCheck' = foldl typeCheck'' (Map.empty, [])

typeCheck'' :: (TypeScope, [Expr]) -> Expr -> (TypeScope, [Expr])
typeCheck'' (sc, es) e = (nsc, es ++ [ne])
  where
    (nsc, t) = check (sc, e)
    ne = case t of
      (Just x) -> e
      _ -> error $ "TypeError: " ++ show e

filterExprs :: [Expr] -> [Expr]
filterExprs = filter (/= BreakLine)

checkImt :: (TypeScope, Expr) -> Maybe Type
checkImt (sc, e) = snd $ check (sc, e)

check :: (TypeScope, Expr) -> (TypeScope, Maybe Type)
-- Num
check (sc, Num _) = (sc, Just TNum)
check (sc, Plus a b) = numArguments sc (a, b)
check (sc, Less a b) = numArguments sc (a, b)
check (sc, Times a b) = numArguments sc (a, b)
check (sc, Div a b) = numArguments sc (a, b)
-- Bool
check (sc, BTrue) = (sc, Just TBool)
check (sc, BFalse) = (sc, Just TBool)
check (sc, And a b) = boolArguments sc (a, b)
check (sc, Or a b) = boolArguments sc (a, b)
check (sc, Eq a b) =
  let (at, bt) = (checkImt (sc, a), checkImt (sc, b))
   in case (at, bt) of
        (Just TBool, Just TBool) -> (sc, Just TBool)
        (Just TNum, Just TNum) -> (sc, Just TBool)
        _ -> error "TypeError: == requires both options to be the same type"
check (sc, If c a b) =
  let (ct, at, bt) = (checkImt (sc, c), checkImt (sc, a), checkImt (sc, b))
   in case ct of
        Just TBool -> case (at, bt) of
          (Just TBool, Just TBool) -> (sc, Just TBool)
          (Just TNum, Just TNum) -> (sc, Just TNum)
          _ -> error "TypeError: If requires both options to be the same type"
        _ -> error "TypeError: If requires a Boolean as condition"
-- Scope
check (sc, Let a b) =
  let (_, t) = check (sc, b)
   in case t of
        Just t -> (Map.insert a t sc, Just t)
        _ -> error $ "TypeError: Variable " ++ a ++ " not declared on scope"
check (sc, Var a) =
  let t = Map.lookup a sc
   in case t of
        Just t -> (sc, Just t)
        _ -> error $ "TypeError: Variable " ++ a ++ " not declared on scope"
-- Otherwise
check (sc, Paren e) = check (sc, e)
check x = error $ "IntepreterError: Unkown type" ++ show x

boolArguments :: TypeScope -> (Expr, Expr) -> (TypeScope, Maybe Type)
boolArguments sc (a, b) =
  let (ca, cb) = (checkImt (sc, a), checkImt (sc, b))
   in case (ca, cb) of
        (Just TBool, Just TBool) -> (sc, Just TBool)
        x -> error "TypeError: &&, || should only be used with Boolean types"

numArguments :: TypeScope -> (Expr, Expr) -> (TypeScope, Maybe Type)
numArguments sc (a, b) =
  let (ca, cb) = (checkImt (sc, a), checkImt (sc, b))
   in case (ca, cb) of
        (Just TNum, Just TNum) -> (sc, Just TNum)
        x -> error "TypeError: +, -, *, / should only be used with Boolean types"
