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
    "||"        { TokenOr }
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
    '['         { TokenLBracket }
    ']'         { TokenRBracket }
    ','         { Comma }
    Bool        { TokenBoolean }
    '\n'        { TokenBreakLine }
    Number      { TokenNumber }

%nonassoc if then else
%left "=="
%left "&&" "||"
%left '+' '-'
%left '*' '/'

%% 
Statement : StmtExp                                 { [$1] }
          | StmtExp Statement                       { $1 : $2 }

StmtExp   : Exp                                     { $1 }
          | let var '=' Exp '\n'                    { Let $2 $4 }
          | '\n'                                    { BreakLine }

Exp       : num                                     { Num $1 }
          | var                                     { Var $1 }
          | false                                   { BFalse }
          | true                                    { BTrue }
          | Exp '+' Exp                             { Plus $1 $3 }
          | Exp '-' Exp                             { Less $1 $3 }
          | Exp '*' Exp                             { Times $1 $3 }
          | Exp '/' Exp                             { Div $1 $3 }
          | Exp "&&" Exp                            { And $1 $3 }
          | Exp "||" Exp                            { Or $1 $3 }
          | if Exp then Exp else Exp                { If $2 $4 $6 }
          | '(' Exp ')'                             { Paren $2 }
          | Exp "==" Exp                            { Eq $1 $3 }
          | Lambda                                  { $1 }
          | var Exp                                 { ApplyVar $1 $2 }
          | '(' '\\' var ':' Type "->" Exp ')' Exp  { ApplyLam $3 $5 $7 $9 }
          | '[' Array ']'                           { Array $2 }

Lambda    : '(' '\\' var ':' Type "->" Exp ')'      { Lam $3 $5 $7 }

Array      : Exp                                    { [$1] }
           | Exp ',' Array                          { $1:$3 }

Type      : Bool                                    { TBool }
          | Number                                  { TNum }
          | '(' Type "->" Type ')'                  { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}
