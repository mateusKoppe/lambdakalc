module Lexer where

import Data.Char

data Ty
  = TBool
  | TNum
  | TFun Ty Ty
  deriving (Show, Eq)
  
type Statement = [Expr]

data Expr
  = BTrue
  | BFalse
  | Num Double
  | Plus Expr Expr
  | Less Expr Expr
  | Times Expr Expr
  | Div Expr Expr
  | And Expr Expr
  | Or Expr Expr
  | If Expr Expr Expr
  | Var String
  | Paren Expr
  | Eq Expr Expr
  | Let String Expr
  | Callable String Expr
  | Lam String Ty Expr
  | ApplyVar String Expr
  | ApplyLam String Ty Expr Expr
  | BreakLine
  deriving (Show, Eq)

data Token
  = TokenTrue
  | TokenFalse
  | TokenNum Double
  | TokenPlus
  | TokenLess
  | TokenTimes
  | TokenDiv
  | TokenAnd
  | TokenOr
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenVar String
  | TokenLam
  | TokenColon
  | TokenArrow
  | TokenLParen
  | TokenRParen
  | TokenBoolean
  | TokenNumber
  | TokenEq
  | TokenAssign
  | TokenLet
  | TokenBreakLine
  deriving (Show)

isToken :: Char -> Bool
isToken c = elem c "->&|="

lexer :: String -> [Token]
lexer [] = []
lexer ('+' : cs) = TokenPlus : lexer cs
lexer ('|' : '|': cs) = TokenOr : lexer cs
lexer ('&' : '&': cs) = TokenAnd : lexer cs
lexer ('=' : '=': cs) = TokenEq : lexer cs
lexer ('=': cs) = TokenAssign : lexer cs
lexer ('-' : '>': cs) = TokenArrow : lexer cs
lexer ('-' : cs) = TokenLess : lexer cs
lexer ('*' : cs) = TokenTimes : lexer cs
lexer ('/' : cs) = TokenDiv : lexer cs
lexer ('\\' : cs) = TokenLam : lexer cs
lexer (':' : cs) = TokenColon : lexer cs
lexer ('(' : cs) = TokenLParen : lexer cs
lexer (')' : cs) = TokenRParen : lexer cs
lexer ('\n' : cs) = TokenBreakLine : lexer cs
lexer (c : cs)
  | isSpace c = lexer cs
  | isDigit c = lexNum (c : cs)
  | isAlpha c = lexKW (c : cs)
lexer _ = error "Lexical error: caracter inválido!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of
  (num, rest) -> TokenNum (read num) : lexer rest

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of
  ("true", rest) -> TokenTrue : lexer rest
  ("let", rest) -> TokenLet : lexer rest
  ("false", rest) -> TokenFalse : lexer rest
  ("if", rest) -> TokenIf : lexer rest
  ("then", rest) -> TokenThen : lexer rest
  ("else", rest) -> TokenElse : lexer rest
  ("Bool", rest) -> TokenBoolean : lexer rest
  ("Number", rest) -> TokenNumber : lexer rest
  (var, rest) -> TokenVar var : lexer rest
