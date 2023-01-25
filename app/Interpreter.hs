module Interpreter where

import Lexer

subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) =
  if v == x
    then n
    else b
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Plus e1 e2) = Plus (subst x n e1) (subst x n e2)
subst x n (Less e1 e2) = Less (subst x n e1) (subst x n e2)
subst x n (Times e1 e2) = Times (subst x n e1) (subst x n e2)
subst x n (Div e1 e2) = Div (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n e = e

isvalue :: Expr -> Bool
isvalue BTrue = True
isvalue BFalse = True
isvalue (Num _) = True
isvalue (Lam _ _ _) = True
isvalue _ = False

step :: Expr -> Maybe Expr
step (Plus (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Plus (Num n1) e2) = case step e2 of
  Just e2' -> Just (Plus (Num n1) e2')
  _ -> Nothing
step (Plus e1 e2) = case step e1 of
  Just e1' -> Just (Plus e1' e2)
  _ -> Nothing

step (Less (Num n1) (Num n2)) = Just (Num (n1 - n2))
step (Less (Num n1) e2) = case step e2 of
  Just e2' -> Just (Less (Num n1) e2')
  _ -> Nothing
step (Less e1 e2) = case step e1 of
  Just e1' -> Just (Less e1' e2)
  _ -> Nothing

step (Times (Num n1) (Num n2)) = Just (Num (n1 * n2))
step (Times (Num n1) e2) = case step e2 of
  Just e2' -> Just (Times (Num n1) e2')
  _ -> Nothing
step (Times e1 e2) = case step e1 of
  Just e1' -> Just (Times e1' e2)
  _ -> Nothing

step (Div (Num n1) (Num n2)) = Just (Num (n1 / n2))
step (Div (Num n1) e2) = case step e2 of
  Just e2' -> Just (Div (Num n1) e2')
  _ -> Nothing
step (Div e1 e2) = case step e1 of
  Just e1' -> Just (Div e1' e2)
  _ -> Nothing

step (And BTrue e2) = Just e2
step (And BFalse _) = Just BFalse
step (And e1 e2) = case step e1 of
  Just e1' -> Just (And e1' e2)
  _ -> Nothing
step (If BTrue e1 _) = Just e1
step (If BFalse _ e2) = Just e2
step (If e e1 e2) = case step e of
  Just e' -> Just (If e' e1 e2)
  _ -> Nothing
step (App e1@(Lam x t b) e2)
  | isvalue e2 = Just (subst x e2 b)
  | otherwise = case step e2 of
      Just e2' -> Just (App e1 e2')
      _ -> Nothing
step (App e1 e2) = case step e1 of
  Just e1' -> Just (App e1' e2)
  _ -> Nothing
step (Paren e) = Just e
step (Eq e1 e2)
  | isvalue e1 && isvalue e2 =
      if (e1 == e2)
        then Just BTrue
        else Just BFalse
  | isvalue e1 = case step e2 of
      Just e2' -> Just (Eq e1 e2')
      _ -> Nothing
  | otherwise = case step e1 of
      Just e1' -> Just (Eq e1' e2)
      _ -> Nothing
step e = Just e

eval :: Expr -> Expr
eval e
  | isvalue e = e
  | otherwise = case step e of
      Just e' -> eval e'
      _ -> error "Interpreter error!"
