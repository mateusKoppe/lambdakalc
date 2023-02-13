parse:
	happy grammar.y -o app/Parser.hs
	cabal build
