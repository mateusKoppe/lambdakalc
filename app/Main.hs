module Main where

import Interpreter
import Lexer
import Parser

main = getContents >>= print . eval . parser . lexer
