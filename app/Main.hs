module Main where

import Lexer (lexer)
import Parser (parser)
import Runtime (run)
import TypeSystem (typeCheck)

main = getContents >>= print . run .  typeCheck . parser . lexer
