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
happyExpList = Happy_Data_Array.listArray (0,130) ([32832,627,57360,156,1528,0,0,0,0,0,0,1024,10040,0,0,0,16,0,4,14340,39,0,49152,29663,2,0,1024,10040,256,2510,32832,627,57360,156,14340,39,52737,16393,29568,57346,23,1,2048,32768,0,24448,4,57360,156,14340,39,0,104,0,57344,7,30720,0,7680,0,0,0,0,0,96,0,24,0,0,1,32768,6,0,0,0,0,0,6112,2,14340,39,0,16388,29568,2,0,0,40960,32257,1,0,1024,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Statement","Exp","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'='","\"==\"","true","false","if","then","else","var","let","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st Prelude.* 30
        bit_end = (st Prelude.+ 1) Prelude.* 30
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..29]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_3
action_0 (16) = happyShift action_4
action_0 (17) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 (5) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_3
action_1 (16) = happyShift action_4
action_1 (17) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (21) = happyShift action_7
action_1 (22) = happyShift action_8
action_1 (23) = happyShift action_9
action_1 (26) = happyShift action_10
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_14
action_2 (9) = happyShift action_15
action_2 (10) = happyShift action_16
action_2 (11) = happyShift action_17
action_2 (12) = happyShift action_18
action_2 (13) = happyShift action_19
action_2 (15) = happyShift action_20
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_3

action_4 _ = happyReduce_6

action_5 _ = happyReduce_5

action_6 (7) = happyShift action_3
action_6 (16) = happyShift action_4
action_6 (17) = happyShift action_5
action_6 (18) = happyShift action_6
action_6 (21) = happyShift action_7
action_6 (22) = happyShift action_8
action_6 (23) = happyShift action_9
action_6 (26) = happyShift action_10
action_6 (5) = happyGoto action_24
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_4

action_8 (21) = happyShift action_23
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (21) = happyShift action_22
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_3
action_10 (16) = happyShift action_4
action_10 (17) = happyShift action_5
action_10 (18) = happyShift action_6
action_10 (21) = happyShift action_7
action_10 (22) = happyShift action_8
action_10 (23) = happyShift action_9
action_10 (26) = happyShift action_10
action_10 (5) = happyGoto action_21
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (30) = happyAccept
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_3
action_12 (8) = happyShift action_14
action_12 (9) = happyShift action_15
action_12 (10) = happyShift action_16
action_12 (11) = happyShift action_17
action_12 (12) = happyShift action_18
action_12 (13) = happyShift action_19
action_12 (15) = happyShift action_20
action_12 (16) = happyShift action_4
action_12 (17) = happyShift action_5
action_12 (18) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (22) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (4) = happyGoto action_13
action_12 (5) = happyGoto action_12
action_12 _ = happyReduce_1

action_13 _ = happyReduce_2

action_14 (7) = happyShift action_3
action_14 (16) = happyShift action_4
action_14 (17) = happyShift action_5
action_14 (18) = happyShift action_6
action_14 (21) = happyShift action_7
action_14 (22) = happyShift action_8
action_14 (23) = happyShift action_9
action_14 (26) = happyShift action_10
action_14 (5) = happyGoto action_35
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_3
action_15 (16) = happyShift action_4
action_15 (17) = happyShift action_5
action_15 (18) = happyShift action_6
action_15 (21) = happyShift action_7
action_15 (22) = happyShift action_8
action_15 (23) = happyShift action_9
action_15 (26) = happyShift action_10
action_15 (5) = happyGoto action_34
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_3
action_16 (16) = happyShift action_4
action_16 (17) = happyShift action_5
action_16 (18) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (22) = happyShift action_8
action_16 (23) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (5) = happyGoto action_33
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_3
action_17 (16) = happyShift action_4
action_17 (17) = happyShift action_5
action_17 (18) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (22) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (5) = happyGoto action_32
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_3
action_18 (16) = happyShift action_4
action_18 (17) = happyShift action_5
action_18 (18) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (22) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (5) = happyGoto action_31
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_3
action_19 (16) = happyShift action_4
action_19 (17) = happyShift action_5
action_19 (18) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (22) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (5) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_3
action_20 (16) = happyShift action_4
action_20 (17) = happyShift action_5
action_20 (18) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (22) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (5) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_14
action_21 (9) = happyShift action_15
action_21 (10) = happyShift action_16
action_21 (11) = happyShift action_17
action_21 (12) = happyShift action_18
action_21 (13) = happyShift action_19
action_21 (15) = happyShift action_20
action_21 (27) = happyShift action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (24) = happyShift action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (14) = happyShift action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_14
action_24 (9) = happyShift action_15
action_24 (10) = happyShift action_16
action_24 (11) = happyShift action_17
action_24 (12) = happyShift action_18
action_24 (13) = happyShift action_19
action_24 (15) = happyShift action_20
action_24 (19) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_3
action_25 (16) = happyShift action_4
action_25 (17) = happyShift action_5
action_25 (18) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (22) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (5) = happyGoto action_41
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_3
action_26 (16) = happyShift action_4
action_26 (17) = happyShift action_5
action_26 (18) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (22) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (5) = happyGoto action_40
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (26) = happyShift action_37
action_27 (28) = happyShift action_38
action_27 (29) = happyShift action_39
action_27 (6) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_15

action_29 (8) = happyShift action_14
action_29 (9) = happyShift action_15
action_29 (10) = happyShift action_16
action_29 (11) = happyShift action_17
action_29 (12) = happyShift action_18
action_29 (13) = happyShift action_19
action_29 _ = happyReduce_16

action_30 (8) = happyShift action_14
action_30 (9) = happyShift action_15
action_30 (10) = happyShift action_16
action_30 (11) = happyShift action_17
action_30 _ = happyReduce_12

action_31 (8) = happyShift action_14
action_31 (9) = happyShift action_15
action_31 (10) = happyShift action_16
action_31 (11) = happyShift action_17
action_31 _ = happyReduce_11

action_32 _ = happyReduce_10

action_33 _ = happyReduce_9

action_34 (10) = happyShift action_16
action_34 (11) = happyShift action_17
action_34 _ = happyReduce_8

action_35 (10) = happyShift action_16
action_35 (11) = happyShift action_17
action_35 _ = happyReduce_7

action_36 (25) = happyShift action_44
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (26) = happyShift action_37
action_37 (28) = happyShift action_38
action_37 (29) = happyShift action_39
action_37 (6) = happyGoto action_43
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_18

action_39 _ = happyReduce_19

action_40 (8) = happyShift action_14
action_40 (9) = happyShift action_15
action_40 (10) = happyShift action_16
action_40 (11) = happyShift action_17
action_40 (12) = happyShift action_18
action_40 (13) = happyShift action_19
action_40 (15) = happyShift action_20
action_40 _ = happyReduce_17

action_41 (8) = happyShift action_14
action_41 (9) = happyShift action_15
action_41 (10) = happyShift action_16
action_41 (11) = happyShift action_17
action_41 (12) = happyShift action_18
action_41 (13) = happyShift action_19
action_41 (15) = happyShift action_20
action_41 (20) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_3
action_42 (16) = happyShift action_4
action_42 (17) = happyShift action_5
action_42 (18) = happyShift action_6
action_42 (21) = happyShift action_7
action_42 (22) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (5) = happyGoto action_47
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (25) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_3
action_44 (16) = happyShift action_4
action_44 (17) = happyShift action_5
action_44 (18) = happyShift action_6
action_44 (21) = happyShift action_7
action_44 (22) = happyShift action_8
action_44 (23) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (5) = happyGoto action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (8) = happyShift action_14
action_45 (9) = happyShift action_15
action_45 (10) = happyShift action_16
action_45 (11) = happyShift action_17
action_45 (12) = happyShift action_18
action_45 (13) = happyShift action_19
action_45 (15) = happyShift action_20
action_45 _ = happyReduce_14

action_46 (26) = happyShift action_37
action_46 (28) = happyShift action_38
action_46 (29) = happyShift action_39
action_46 (6) = happyGoto action_48
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (8) = happyShift action_14
action_47 (9) = happyShift action_15
action_47 (10) = happyShift action_16
action_47 (11) = happyShift action_17
action_47 (12) = happyShift action_18
action_47 (13) = happyShift action_19
action_47 (15) = happyShift action_20
action_47 _ = happyReduce_13

action_48 (27) = happyShift action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_20

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

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 5 happyReduction_13
happyReduction_13 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 5 happyReduction_14
happyReduction_14 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Paren happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 5 happyReduction_17
happyReduction_17 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_20 = happyReduce 5 6 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 30 30 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenPlus -> cont 8;
	TokenLess -> cont 9;
	TokenTimes -> cont 10;
	TokenDiv -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenAssign -> cont 14;
	TokenEq -> cont 15;
	TokenTrue -> cont 16;
	TokenFalse -> cont 17;
	TokenIf -> cont 18;
	TokenThen -> cont 19;
	TokenElse -> cont 20;
	TokenVar happy_dollar_dollar -> cont 21;
	TokenLet -> cont 22;
	TokenLam -> cont 23;
	TokenColon -> cont 24;
	TokenArrow -> cont 25;
	TokenLParen -> cont 26;
	TokenRParen -> cont 27;
	TokenBoolean -> cont 28;
	TokenNumber -> cont 29;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 30 tk tks = happyError' (tks, explist)
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
