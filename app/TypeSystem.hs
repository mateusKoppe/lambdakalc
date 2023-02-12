module TypeSystem where

import Debug.Trace (trace)
import Lexer
import Control.Exception (TypeError(TypeError))

typeCheck :: [Expr] -> [Expr]
typeCheck es =
  map
    ( \e ->
        let c = check e
         in case c of
              (Just x) -> e
              _ -> error $ "TypeError: " ++ show e
    )
    (filterExprs es)

filterExprs :: [Expr] -> [Expr]
filterExprs = filter (/= BreakLine)

check :: Expr -> Maybe Type
-- Num
check (Num _) = Just TNum
check (Plus a b) = numArguments (a, b)
check (Less a b) = numArguments (a, b)
check (Times a b) = numArguments (a, b)
check (Div a b) = numArguments (a, b)
-- Bool
check BTrue = Just TBool
check BFalse = Just TBool
check (And a b) = boolArguments (a, b)
check (Or a b) = boolArguments (a, b)
check (If c a b) = let (ct, at, bt) = (check c, check a, check b) in
  case ct of
    Just TBool -> case (at, bt) of
      (Just TBool, Just TBool) -> Just TBool
      (Just TNum, Just TNum) -> Just TNum
      x -> error "TypeError: If requires both options to be the same type"
    x -> error "TypeError: If requires a Boolean as condition"


-- Otherwise
check (Paren e) = check e
check x = error "IntepreterError: Unkown type"

boolArguments :: (Expr, Expr) -> Maybe Type
boolArguments (a, b) =
  let (ca, cb) = (check a, check b)
   in case (ca, cb) of
        (Just TBool, Just TBool) -> Just TBool
        x -> error "TypeError: &&, || should only be used with Boolean types"

numArguments :: (Expr, Expr) -> Maybe Type
numArguments (a, b) =
  let (ca, cb) = (check a, check b)
   in case (ca, cb) of
        (Just TNum, Just TNum) -> Just TNum
        x -> error "TypeError: +, -, *, / should only be used with Boolean types"
