module LangTypes where

data Type
  = TBool
  | TNum
  | TFun Type Type
  | TArray Type
  | TTuple [Type]
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
  | BgT Expr Expr
  | LsT Expr Expr
  | If Expr Expr Expr
  | Var String
  | Paren Expr
  | Eq Expr Expr
  | Let String Expr
  | Lam String Type Expr
  | ApplyVar String Expr
  | ApplyLam String Type Expr Expr
  | Array [Expr]
  | Tuple [Expr]
  | Nth Double Expr
  | Not Expr
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
  | TokenNot
  | TokenBT
  | TokenLT
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
  | TokenLBracket
  | TokenRBracket
  | TokenNth
  | TokenComma
  | TokenBreakLine
  deriving (Show)
