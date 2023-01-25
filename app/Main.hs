module Main where 

import Lexer
import Parser
import Interpreter

main = getContents >>= print . eval . parser . lexer
