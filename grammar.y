{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token
    num         { TokenNum $$ }
    '+'         { TokenPlus }
    '-'         { TokenLess }
    '*'         { TokenTimes }
    '/'         { TokenDiv }
    "&&"        { TokenAnd }
    '='         { TokenAssign }
    "=="        { TokenEq }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    let         { TokenLet }
    '\\'        { TokenLam }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    Bool        { TokenBoolean }
    Number      { TokenNumber }

%nonassoc if then else
%left '+' '-'
%left '*'
%left "&&"
%left "=="

%% 
Statement : Exp { [App $1] }
          | Exp Statement { $1 : $2 }

Exp     : num                        { Num $1 }
        | var                        { Var $1 }
        | false                      { BFalse }
        | true                       { BTrue }
        | Exp '+' Exp                { Plus $1 $3 }
        | Exp '-' Exp                { Less $1 $3 }
        | Exp '*' Exp                { Times $1 $3 }
        | Exp '/' Exp                { Div $1 $3 }
        | Exp "&&" Exp               { And $1 $3 }
        | if Exp then Exp else Exp   { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
        | '(' Exp ')'                { Paren $2 }
        | Exp "==" Exp               { Eq $1 $3 }
        | let var '=' Exp            { Let $2 $4 }

Type    : Bool                       { TBool }
        | Number                     { TNum }
        | '(' Type "->" Type ')'     { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}
