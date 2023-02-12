{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,161) ([256,18638,512,37276,0,0,61440,11,0,0,0,0,0,0,0,0,0,19969,8,0,0,0,1,28680,74,0,0,0,0,32832,4659,0,0,32256,4097,0,128,0,2,0,0,57344,279,8192,2496,16385,4992,32770,9984,4,19969,8,39938,16,14340,33,28680,66,2016,0,960,0,1920,0,0,0,0,0,12288,0,24576,0,2048,17008,4096,34016,0,16384,0,0,0,0,84,382,64,17148,0,14340,33,0,0,0,64,0,5376,0,0,0,0,0,1024,512,4252,63488,5,61440,32779,0,32768,10,0,2,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Statement","StmtExp","Exp","Lambda","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'='","\"==\"","true","false","if","then","else","var","let","'\\\\'","':'","\"->\"","'('","')'","Bool","'\\n'","Number","%eof"]
        bit_start = st Prelude.* 33
        bit_end = (st Prelude.+ 1) Prelude.* 33
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..32]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (24) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (31) = happyShift action_12
action_0 (4) = happyGoto action_13
action_0 (5) = happyGoto action_14
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (19) = happyShift action_7
action_1 (20) = happyShift action_8
action_1 (23) = happyShift action_9
action_1 (24) = happyShift action_10
action_1 (28) = happyShift action_11
action_1 (31) = happyShift action_12
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (13) = happyShift action_24
action_3 (14) = happyShift action_25
action_3 (15) = happyShift action_26
action_3 (17) = happyShift action_27
action_3 _ = happyReduce_3

action_4 _ = happyReduce_19

action_5 _ = happyReduce_6

action_6 _ = happyReduce_9

action_7 _ = happyReduce_8

action_8 (9) = happyShift action_5
action_8 (18) = happyShift action_6
action_8 (19) = happyShift action_7
action_8 (20) = happyShift action_8
action_8 (23) = happyShift action_9
action_8 (28) = happyShift action_11
action_8 (6) = happyGoto action_20
action_8 (7) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_5
action_9 (18) = happyShift action_6
action_9 (19) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (28) = happyShift action_11
action_9 (6) = happyGoto action_19
action_9 (7) = happyGoto action_4
action_9 _ = happyReduce_7

action_10 (23) = happyShift action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_5
action_11 (18) = happyShift action_6
action_11 (19) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (23) = happyShift action_9
action_11 (25) = happyShift action_17
action_11 (28) = happyShift action_11
action_11 (6) = happyGoto action_16
action_11 (7) = happyGoto action_4
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_5

action_13 (33) = happyAccept
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (9) = happyShift action_5
action_14 (18) = happyShift action_6
action_14 (19) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (23) = happyShift action_9
action_14 (24) = happyShift action_10
action_14 (28) = happyShift action_11
action_14 (31) = happyShift action_12
action_14 (4) = happyGoto action_15
action_14 (5) = happyGoto action_14
action_14 (6) = happyGoto action_3
action_14 (7) = happyGoto action_4
action_14 _ = happyReduce_1

action_15 _ = happyReduce_2

action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_22
action_16 (12) = happyShift action_23
action_16 (13) = happyShift action_24
action_16 (14) = happyShift action_25
action_16 (15) = happyShift action_26
action_16 (17) = happyShift action_27
action_16 (29) = happyShift action_38
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (23) = happyShift action_37
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_36
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (10) = happyShift action_21
action_19 (11) = happyShift action_22
action_19 (12) = happyShift action_23
action_19 (13) = happyShift action_24
action_19 (14) = happyShift action_25
action_19 (15) = happyShift action_26
action_19 (17) = happyShift action_27
action_19 _ = happyReduce_20

action_20 (10) = happyShift action_21
action_20 (11) = happyShift action_22
action_20 (12) = happyShift action_23
action_20 (13) = happyShift action_24
action_20 (14) = happyShift action_25
action_20 (15) = happyShift action_26
action_20 (17) = happyShift action_27
action_20 (21) = happyShift action_35
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (9) = happyShift action_5
action_21 (18) = happyShift action_6
action_21 (19) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (28) = happyShift action_11
action_21 (6) = happyGoto action_34
action_21 (7) = happyGoto action_4
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_5
action_22 (18) = happyShift action_6
action_22 (19) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (28) = happyShift action_11
action_22 (6) = happyGoto action_33
action_22 (7) = happyGoto action_4
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_5
action_23 (18) = happyShift action_6
action_23 (19) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (28) = happyShift action_11
action_23 (6) = happyGoto action_32
action_23 (7) = happyGoto action_4
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_5
action_24 (18) = happyShift action_6
action_24 (19) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (28) = happyShift action_11
action_24 (6) = happyGoto action_31
action_24 (7) = happyGoto action_4
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_5
action_25 (18) = happyShift action_6
action_25 (19) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (28) = happyShift action_11
action_25 (6) = happyGoto action_30
action_25 (7) = happyGoto action_4
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_5
action_26 (18) = happyShift action_6
action_26 (19) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (28) = happyShift action_11
action_26 (6) = happyGoto action_29
action_26 (7) = happyGoto action_4
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_5
action_27 (18) = happyShift action_6
action_27 (19) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (28) = happyShift action_11
action_27 (6) = happyGoto action_28
action_27 (7) = happyGoto action_4
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_21
action_28 (11) = happyShift action_22
action_28 (12) = happyShift action_23
action_28 (13) = happyShift action_24
action_28 (14) = happyShift action_25
action_28 (15) = happyShift action_26
action_28 _ = happyReduce_18

action_29 (10) = happyShift action_21
action_29 (11) = happyShift action_22
action_29 (12) = happyShift action_23
action_29 (13) = happyShift action_24
action_29 _ = happyReduce_15

action_30 (10) = happyShift action_21
action_30 (11) = happyShift action_22
action_30 (12) = happyShift action_23
action_30 (13) = happyShift action_24
action_30 _ = happyReduce_14

action_31 _ = happyReduce_13

action_32 _ = happyReduce_12

action_33 (12) = happyShift action_23
action_33 (13) = happyShift action_24
action_33 _ = happyReduce_11

action_34 (12) = happyShift action_23
action_34 (13) = happyShift action_24
action_34 _ = happyReduce_10

action_35 (9) = happyShift action_5
action_35 (18) = happyShift action_6
action_35 (19) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (23) = happyShift action_9
action_35 (28) = happyShift action_11
action_35 (6) = happyGoto action_41
action_35 (7) = happyGoto action_4
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (9) = happyShift action_5
action_36 (18) = happyShift action_6
action_36 (19) = happyShift action_7
action_36 (20) = happyShift action_8
action_36 (23) = happyShift action_9
action_36 (28) = happyShift action_11
action_36 (6) = happyGoto action_40
action_36 (7) = happyGoto action_4
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (26) = happyShift action_39
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_17

action_39 (28) = happyShift action_45
action_39 (30) = happyShift action_46
action_39 (32) = happyShift action_47
action_39 (8) = happyGoto action_44
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_21
action_40 (11) = happyShift action_22
action_40 (12) = happyShift action_23
action_40 (13) = happyShift action_24
action_40 (14) = happyShift action_25
action_40 (15) = happyShift action_26
action_40 (17) = happyShift action_27
action_40 (31) = happyShift action_43
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_21
action_41 (11) = happyShift action_22
action_41 (12) = happyShift action_23
action_41 (13) = happyShift action_24
action_41 (14) = happyShift action_25
action_41 (15) = happyShift action_26
action_41 (17) = happyShift action_27
action_41 (22) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (9) = happyShift action_5
action_42 (18) = happyShift action_6
action_42 (19) = happyShift action_7
action_42 (20) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (28) = happyShift action_11
action_42 (6) = happyGoto action_50
action_42 (7) = happyGoto action_4
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_4

action_44 (27) = happyShift action_49
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (28) = happyShift action_45
action_45 (30) = happyShift action_46
action_45 (32) = happyShift action_47
action_45 (8) = happyGoto action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_23

action_47 _ = happyReduce_24

action_48 (27) = happyShift action_52
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (9) = happyShift action_5
action_49 (18) = happyShift action_6
action_49 (19) = happyShift action_7
action_49 (20) = happyShift action_8
action_49 (23) = happyShift action_9
action_49 (28) = happyShift action_11
action_49 (6) = happyGoto action_51
action_49 (7) = happyGoto action_4
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (10) = happyShift action_21
action_50 (11) = happyShift action_22
action_50 (12) = happyShift action_23
action_50 (13) = happyShift action_24
action_50 (14) = happyShift action_25
action_50 (15) = happyShift action_26
action_50 (17) = happyShift action_27
action_50 _ = happyReduce_16

action_51 (10) = happyShift action_21
action_51 (11) = happyShift action_22
action_51 (12) = happyShift action_23
action_51 (13) = happyShift action_24
action_51 (14) = happyShift action_25
action_51 (15) = happyShift action_26
action_51 (17) = happyShift action_27
action_51 (29) = happyShift action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (28) = happyShift action_45
action_52 (30) = happyShift action_46
action_52 (32) = happyShift action_47
action_52 (8) = happyGoto action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (29) = happyShift action_56
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (9) = happyShift action_5
action_54 (18) = happyShift action_6
action_54 (19) = happyShift action_7
action_54 (20) = happyShift action_8
action_54 (23) = happyShift action_9
action_54 (28) = happyShift action_11
action_54 (6) = happyGoto action_55
action_54 (7) = happyGoto action_4
action_54 _ = happyReduce_22

action_55 (10) = happyShift action_21
action_55 (11) = happyShift action_22
action_55 (12) = happyShift action_23
action_55 (13) = happyShift action_24
action_55 (14) = happyShift action_25
action_55 (15) = happyShift action_26
action_55 (17) = happyShift action_27
action_55 _ = happyReduce_21

action_56 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
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
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 5 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn5
		 (BreakLine
	)

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn6
		 (Num happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn6
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn6
		 (BFalse
	)

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn6
		 (BTrue
	)

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Less happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 6 happyReduction_16
happyReduction_16 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Paren happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_2)
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn6
		 (ApplyVar happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 9 6 happyReduction_21
happyReduction_21 ((HappyAbsSyn6  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ApplyLam happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 8 7 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Lam happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  8 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn8
		 (TBool
	)

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn8
		 (TNum
	)

happyReduce_25 = happyReduce 5 8 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 9;
	TokenPlus -> cont 10;
	TokenLess -> cont 11;
	TokenTimes -> cont 12;
	TokenDiv -> cont 13;
	TokenAnd -> cont 14;
	TokenOr -> cont 15;
	TokenAssign -> cont 16;
	TokenEq -> cont 17;
	TokenTrue -> cont 18;
	TokenFalse -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	TokenVar happy_dollar_dollar -> cont 23;
	TokenLet -> cont 24;
	TokenLam -> cont 25;
	TokenColon -> cont 26;
	TokenArrow -> cont 27;
	TokenLParen -> cont 28;
	TokenRParen -> cont 29;
	TokenBoolean -> cont 30;
	TokenBreakLine -> cont 31;
	TokenNumber -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
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
