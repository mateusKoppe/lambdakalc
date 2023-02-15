# Lambda Kalc - A ML Interpreter

This is a study project to build a interpreter based on a ML language implementing Lambda Calculus using [Haskell](https://www.haskell.org/) and the [Happy Parser](https://github.com/haskell/happy).

## Features
- Lambdas
- Type Validation
- Tuples and Arrays
- If
- Let
- Math operators
- Boolean operators


Code example:
```
let double = (\x: Number -> x * 2)
let isDoubleBiggerThan = (\x:(Number, Number) -> (double nth (0, x)) > nth (1, x)) 

isDoubleBiggerThan (6, 11) -- true
```

More examples in the [examples](./examples/) folder.

## Build
Dependencies:
- [cabal](https://www.haskell.org/cabal/)
- [happy](https://github.com/haskell/happy)

Parsing the grammar to generate the `app/Parser.hs`:
```bash
make parse

## Or if you don't have make you can just run:
happy grammar.y -o app/Parser.hs
```

Running the code:
```bash
cabal run < examples/1-math.lk  # Or use any other file in the example folder
```
