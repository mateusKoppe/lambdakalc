{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,116) ([49216,313,14344,39,190,0,0,0,0,0,0,28688,78,0,0,2048,0,256,256,1255,0,0,40700,19,0,4096,20080,512,2510,49216,313,14344,39,59137,8196,40160,63488,8194,0,128,1024,0,4476,16384,14784,2049,10040,0,13312,0,0,0,0,64,0,0,16384,1,10752,0,1344,0,0,2,32768,6,0,0,0,0,0,8572,16384,14784,1,4096,256,1255,0,0,0,208,87,0,32768,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Statement","Exp","Type","num","'+'","'-'","'*'","'/'","\"&&\"","'='","\"==\"","true","false","if","then","else","var","let","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st Prelude.* 29
        bit_end = (st Prelude.+ 1) Prelude.* 29
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..28]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_3
action_0 (15) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 (5) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_3
action_1 (15) = happyShift action_4
action_1 (16) = happyShift action_5
action_1 (17) = happyShift action_6
action_1 (20) = happyShift action_7
action_1 (21) = happyShift action_8
action_1 (22) = happyShift action_9
action_1 (25) = happyShift action_10
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_14
action_2 (9) = happyShift action_15
action_2 (10) = happyShift action_16
action_2 (11) = happyShift action_17
action_2 (12) = happyShift action_18
action_2 (14) = happyShift action_19
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_3

action_4 _ = happyReduce_6

action_5 _ = happyReduce_5

action_6 (7) = happyShift action_3
action_6 (15) = happyShift action_4
action_6 (16) = happyShift action_5
action_6 (17) = happyShift action_6
action_6 (20) = happyShift action_7
action_6 (21) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (25) = happyShift action_10
action_6 (5) = happyGoto action_23
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_4

action_8 (20) = happyShift action_22
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (20) = happyShift action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_3
action_10 (15) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (17) = happyShift action_6
action_10 (20) = happyShift action_7
action_10 (21) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (25) = happyShift action_10
action_10 (5) = happyGoto action_20
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (29) = happyAccept
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_3
action_12 (8) = happyShift action_14
action_12 (9) = happyShift action_15
action_12 (10) = happyShift action_16
action_12 (11) = happyShift action_17
action_12 (12) = happyShift action_18
action_12 (14) = happyShift action_19
action_12 (15) = happyShift action_4
action_12 (16) = happyShift action_5
action_12 (17) = happyShift action_6
action_12 (20) = happyShift action_7
action_12 (21) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (25) = happyShift action_10
action_12 (4) = happyGoto action_13
action_12 (5) = happyGoto action_12
action_12 _ = happyReduce_1

action_13 _ = happyReduce_2

action_14 (7) = happyShift action_3
action_14 (15) = happyShift action_4
action_14 (16) = happyShift action_5
action_14 (17) = happyShift action_6
action_14 (20) = happyShift action_7
action_14 (21) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (25) = happyShift action_10
action_14 (5) = happyGoto action_33
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_3
action_15 (15) = happyShift action_4
action_15 (16) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (5) = happyGoto action_32
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_3
action_16 (15) = happyShift action_4
action_16 (16) = happyShift action_5
action_16 (17) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (21) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (25) = happyShift action_10
action_16 (5) = happyGoto action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_3
action_17 (15) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (21) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (25) = happyShift action_10
action_17 (5) = happyGoto action_30
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_3
action_18 (15) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (25) = happyShift action_10
action_18 (5) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_3
action_19 (15) = happyShift action_4
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (5) = happyGoto action_28
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_14
action_20 (9) = happyShift action_15
action_20 (10) = happyShift action_16
action_20 (11) = happyShift action_17
action_20 (12) = happyShift action_18
action_20 (14) = happyShift action_19
action_20 (26) = happyShift action_27
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (23) = happyShift action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (13) = happyShift action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_14
action_23 (9) = happyShift action_15
action_23 (10) = happyShift action_16
action_23 (11) = happyShift action_17
action_23 (12) = happyShift action_18
action_23 (14) = happyShift action_19
action_23 (18) = happyShift action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_3
action_24 (15) = happyShift action_4
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (25) = happyShift action_10
action_24 (5) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_3
action_25 (15) = happyShift action_4
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (25) = happyShift action_10
action_25 (5) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (25) = happyShift action_35
action_26 (27) = happyShift action_36
action_26 (28) = happyShift action_37
action_26 (6) = happyGoto action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_14

action_28 (11) = happyShift action_17
action_28 _ = happyReduce_15

action_29 (11) = happyShift action_17
action_29 (14) = happyShift action_19
action_29 _ = happyReduce_11

action_30 (8) = happyShift action_14
action_30 (9) = happyShift action_15
action_30 (10) = happyShift action_16
action_30 (11) = happyShift action_17
action_30 (12) = happyShift action_18
action_30 (14) = happyShift action_19
action_30 _ = happyReduce_10

action_31 (11) = happyShift action_17
action_31 (12) = happyShift action_18
action_31 (14) = happyShift action_19
action_31 _ = happyReduce_9

action_32 (10) = happyShift action_16
action_32 (11) = happyShift action_17
action_32 (12) = happyShift action_18
action_32 (14) = happyShift action_19
action_32 _ = happyReduce_8

action_33 (10) = happyShift action_16
action_33 (11) = happyShift action_17
action_33 (12) = happyShift action_18
action_33 (14) = happyShift action_19
action_33 _ = happyReduce_7

action_34 (24) = happyShift action_42
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (25) = happyShift action_35
action_35 (27) = happyShift action_36
action_35 (28) = happyShift action_37
action_35 (6) = happyGoto action_41
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_17

action_37 _ = happyReduce_18

action_38 (8) = happyShift action_14
action_38 (9) = happyShift action_15
action_38 (10) = happyShift action_16
action_38 (11) = happyShift action_17
action_38 (12) = happyShift action_18
action_38 (14) = happyShift action_19
action_38 _ = happyReduce_16

action_39 (8) = happyShift action_14
action_39 (9) = happyShift action_15
action_39 (10) = happyShift action_16
action_39 (11) = happyShift action_17
action_39 (12) = happyShift action_18
action_39 (14) = happyShift action_19
action_39 (19) = happyShift action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_3
action_40 (15) = happyShift action_4
action_40 (16) = happyShift action_5
action_40 (17) = happyShift action_6
action_40 (20) = happyShift action_7
action_40 (21) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (25) = happyShift action_10
action_40 (5) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (24) = happyShift action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_3
action_42 (15) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (17) = happyShift action_6
action_42 (20) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (25) = happyShift action_10
action_42 (5) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (8) = happyShift action_14
action_43 (9) = happyShift action_15
action_43 (10) = happyShift action_16
action_43 (11) = happyShift action_17
action_43 (12) = happyShift action_18
action_43 (14) = happyShift action_19
action_43 _ = happyReduce_13

action_44 (25) = happyShift action_35
action_44 (27) = happyShift action_36
action_44 (28) = happyShift action_37
action_44 (6) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (8) = happyShift action_14
action_45 (9) = happyShift action_15
action_45 (10) = happyShift action_16
action_45 (11) = happyShift action_17
action_45 (12) = happyShift action_18
action_45 (14) = happyShift action_19
action_45 _ = happyReduce_12

action_46 (26) = happyShift action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_19

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([App happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn5
		 (Num happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn5
		 (BFalse
	)

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn5
		 (BTrue
	)

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Less happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (And happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 5 happyReduction_12
happyReduction_12 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 5 happyReduction_13
happyReduction_13 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Paren happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 5 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_19 = happyReduce 5 6 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenPlus -> cont 8;
	TokenLess -> cont 9;
	TokenTimes -> cont 10;
	TokenDiv -> cont 11;
	TokenAnd -> cont 12;
	TokenAssign -> cont 13;
	TokenEq -> cont 14;
	TokenTrue -> cont 15;
	TokenFalse -> cont 16;
	TokenIf -> cont 17;
	TokenThen -> cont 18;
	TokenElse -> cont 19;
	TokenVar happy_dollar_dollar -> cont 20;
	TokenLet -> cont 21;
	TokenLam -> cont 22;
	TokenColon -> cont 23;
	TokenArrow -> cont 24;
	TokenLParen -> cont 25;
	TokenRParen -> cont 26;
	TokenBoolean -> cont 27;
	TokenNumber -> cont 28;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
