module Main where

import Lexer
import Parser
import Runtime

main   = getContents >>= print  . run . parser . lexer
