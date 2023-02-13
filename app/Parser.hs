{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,184) ([512,20892,16388,13184,138,0,0,32256,1,0,0,0,0,0,0,0,0,0,0,39938,80,0,0,0,512,0,19969,41,49184,1289,0,0,0,0,0,57360,8844,0,0,32768,95,32,0,512,32256,4097,0,2048,0,512,0,0,0,57344,279,0,39938,80,32832,2579,2048,17008,1,19969,40,49184,1289,1024,41272,32768,9984,20,2016,0,15360,0,32768,7,0,0,0,0,0,0,3,0,96,0,128,5159,4096,34016,2,0,4,0,0,0,0,0,19969,40,0,0,0,8192,20,191,256,6112,2,512,20636,0,0,0,0,32,0,2048,5,0,0,0,0,0,512,4096,34016,2,764,0,24448,1024,0,16384,40,0,16,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Statement","StmtExp","Exp","Lambda","Array","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'='","\"==\"","true","false","if","then","else","var","let","'\\\\'","':'","\"->\"","'('","')'","'['","']'","','","Bool","'\\n'","Number","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (10) = happyShift action_5
action_0 (19) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (31) = happyShift action_12
action_0 (35) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_15
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (10) = happyShift action_5
action_1 (19) = happyShift action_6
action_1 (20) = happyShift action_7
action_1 (21) = happyShift action_8
action_1 (24) = happyShift action_9
action_1 (25) = happyShift action_10
action_1 (29) = happyShift action_11
action_1 (31) = happyShift action_12
action_1 (35) = happyShift action_13
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_25
action_3 (13) = happyShift action_26
action_3 (14) = happyShift action_27
action_3 (15) = happyShift action_28
action_3 (16) = happyShift action_29
action_3 (18) = happyShift action_30
action_3 _ = happyReduce_3

action_4 _ = happyReduce_19

action_5 _ = happyReduce_6

action_6 _ = happyReduce_9

action_7 _ = happyReduce_8

action_8 (10) = happyShift action_5
action_8 (19) = happyShift action_6
action_8 (20) = happyShift action_7
action_8 (21) = happyShift action_8
action_8 (24) = happyShift action_9
action_8 (29) = happyShift action_11
action_8 (31) = happyShift action_12
action_8 (6) = happyGoto action_23
action_8 (7) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (10) = happyShift action_5
action_9 (19) = happyShift action_6
action_9 (20) = happyShift action_7
action_9 (21) = happyShift action_8
action_9 (24) = happyShift action_9
action_9 (29) = happyShift action_11
action_9 (31) = happyShift action_12
action_9 (6) = happyGoto action_22
action_9 (7) = happyGoto action_4
action_9 _ = happyReduce_7

action_10 (24) = happyShift action_21
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (10) = happyShift action_5
action_11 (19) = happyShift action_6
action_11 (20) = happyShift action_7
action_11 (21) = happyShift action_8
action_11 (24) = happyShift action_9
action_11 (26) = happyShift action_20
action_11 (29) = happyShift action_11
action_11 (31) = happyShift action_12
action_11 (6) = happyGoto action_19
action_11 (7) = happyGoto action_4
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (10) = happyShift action_5
action_12 (19) = happyShift action_6
action_12 (20) = happyShift action_7
action_12 (21) = happyShift action_8
action_12 (24) = happyShift action_9
action_12 (29) = happyShift action_11
action_12 (31) = happyShift action_12
action_12 (6) = happyGoto action_17
action_12 (7) = happyGoto action_4
action_12 (8) = happyGoto action_18
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_5

action_14 (37) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (10) = happyShift action_5
action_15 (19) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (29) = happyShift action_11
action_15 (31) = happyShift action_12
action_15 (35) = happyShift action_13
action_15 (4) = happyGoto action_16
action_15 (5) = happyGoto action_15
action_15 (6) = happyGoto action_3
action_15 (7) = happyGoto action_4
action_15 _ = happyReduce_1

action_16 _ = happyReduce_2

action_17 (11) = happyShift action_24
action_17 (12) = happyShift action_25
action_17 (13) = happyShift action_26
action_17 (14) = happyShift action_27
action_17 (15) = happyShift action_28
action_17 (16) = happyShift action_29
action_17 (18) = happyShift action_30
action_17 (33) = happyShift action_43
action_17 _ = happyReduce_24

action_18 (32) = happyShift action_42
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (11) = happyShift action_24
action_19 (12) = happyShift action_25
action_19 (13) = happyShift action_26
action_19 (14) = happyShift action_27
action_19 (15) = happyShift action_28
action_19 (16) = happyShift action_29
action_19 (18) = happyShift action_30
action_19 (30) = happyShift action_41
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (24) = happyShift action_40
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (17) = happyShift action_39
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_24
action_22 (12) = happyShift action_25
action_22 (13) = happyShift action_26
action_22 (14) = happyShift action_27
action_22 (15) = happyShift action_28
action_22 (16) = happyShift action_29
action_22 (18) = happyShift action_30
action_22 _ = happyReduce_20

action_23 (11) = happyShift action_24
action_23 (12) = happyShift action_25
action_23 (13) = happyShift action_26
action_23 (14) = happyShift action_27
action_23 (15) = happyShift action_28
action_23 (16) = happyShift action_29
action_23 (18) = happyShift action_30
action_23 (22) = happyShift action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_5
action_24 (19) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (29) = happyShift action_11
action_24 (31) = happyShift action_12
action_24 (6) = happyGoto action_37
action_24 (7) = happyGoto action_4
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_5
action_25 (19) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (29) = happyShift action_11
action_25 (31) = happyShift action_12
action_25 (6) = happyGoto action_36
action_25 (7) = happyGoto action_4
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_5
action_26 (19) = happyShift action_6
action_26 (20) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (24) = happyShift action_9
action_26 (29) = happyShift action_11
action_26 (31) = happyShift action_12
action_26 (6) = happyGoto action_35
action_26 (7) = happyGoto action_4
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_5
action_27 (19) = happyShift action_6
action_27 (20) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (24) = happyShift action_9
action_27 (29) = happyShift action_11
action_27 (31) = happyShift action_12
action_27 (6) = happyGoto action_34
action_27 (7) = happyGoto action_4
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_5
action_28 (19) = happyShift action_6
action_28 (20) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (24) = happyShift action_9
action_28 (29) = happyShift action_11
action_28 (31) = happyShift action_12
action_28 (6) = happyGoto action_33
action_28 (7) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_5
action_29 (19) = happyShift action_6
action_29 (20) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (24) = happyShift action_9
action_29 (29) = happyShift action_11
action_29 (31) = happyShift action_12
action_29 (6) = happyGoto action_32
action_29 (7) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (10) = happyShift action_5
action_30 (19) = happyShift action_6
action_30 (20) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (29) = happyShift action_11
action_30 (31) = happyShift action_12
action_30 (6) = happyGoto action_31
action_30 (7) = happyGoto action_4
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_24
action_31 (12) = happyShift action_25
action_31 (13) = happyShift action_26
action_31 (14) = happyShift action_27
action_31 (15) = happyShift action_28
action_31 (16) = happyShift action_29
action_31 _ = happyReduce_18

action_32 (11) = happyShift action_24
action_32 (12) = happyShift action_25
action_32 (13) = happyShift action_26
action_32 (14) = happyShift action_27
action_32 _ = happyReduce_15

action_33 (11) = happyShift action_24
action_33 (12) = happyShift action_25
action_33 (13) = happyShift action_26
action_33 (14) = happyShift action_27
action_33 _ = happyReduce_14

action_34 _ = happyReduce_13

action_35 _ = happyReduce_12

action_36 (13) = happyShift action_26
action_36 (14) = happyShift action_27
action_36 _ = happyReduce_11

action_37 (13) = happyShift action_26
action_37 (14) = happyShift action_27
action_37 _ = happyReduce_10

action_38 (10) = happyShift action_5
action_38 (19) = happyShift action_6
action_38 (20) = happyShift action_7
action_38 (21) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (29) = happyShift action_11
action_38 (31) = happyShift action_12
action_38 (6) = happyGoto action_47
action_38 (7) = happyGoto action_4
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_5
action_39 (19) = happyShift action_6
action_39 (20) = happyShift action_7
action_39 (21) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (29) = happyShift action_11
action_39 (31) = happyShift action_12
action_39 (6) = happyGoto action_46
action_39 (7) = happyGoto action_4
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (27) = happyShift action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_17

action_42 _ = happyReduce_22

action_43 (10) = happyShift action_5
action_43 (19) = happyShift action_6
action_43 (20) = happyShift action_7
action_43 (21) = happyShift action_8
action_43 (24) = happyShift action_9
action_43 (29) = happyShift action_11
action_43 (31) = happyShift action_12
action_43 (6) = happyGoto action_17
action_43 (7) = happyGoto action_4
action_43 (8) = happyGoto action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_25

action_45 (29) = happyShift action_51
action_45 (34) = happyShift action_52
action_45 (36) = happyShift action_53
action_45 (9) = happyGoto action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (11) = happyShift action_24
action_46 (12) = happyShift action_25
action_46 (13) = happyShift action_26
action_46 (14) = happyShift action_27
action_46 (15) = happyShift action_28
action_46 (16) = happyShift action_29
action_46 (18) = happyShift action_30
action_46 (35) = happyShift action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_24
action_47 (12) = happyShift action_25
action_47 (13) = happyShift action_26
action_47 (14) = happyShift action_27
action_47 (15) = happyShift action_28
action_47 (16) = happyShift action_29
action_47 (18) = happyShift action_30
action_47 (23) = happyShift action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (10) = happyShift action_5
action_48 (19) = happyShift action_6
action_48 (20) = happyShift action_7
action_48 (21) = happyShift action_8
action_48 (24) = happyShift action_9
action_48 (29) = happyShift action_11
action_48 (31) = happyShift action_12
action_48 (6) = happyGoto action_56
action_48 (7) = happyGoto action_4
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_4

action_50 (28) = happyShift action_55
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (29) = happyShift action_51
action_51 (34) = happyShift action_52
action_51 (36) = happyShift action_53
action_51 (9) = happyGoto action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_26

action_53 _ = happyReduce_27

action_54 (28) = happyShift action_58
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (10) = happyShift action_5
action_55 (19) = happyShift action_6
action_55 (20) = happyShift action_7
action_55 (21) = happyShift action_8
action_55 (24) = happyShift action_9
action_55 (29) = happyShift action_11
action_55 (31) = happyShift action_12
action_55 (6) = happyGoto action_57
action_55 (7) = happyGoto action_4
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (11) = happyShift action_24
action_56 (12) = happyShift action_25
action_56 (13) = happyShift action_26
action_56 (14) = happyShift action_27
action_56 (15) = happyShift action_28
action_56 (16) = happyShift action_29
action_56 (18) = happyShift action_30
action_56 _ = happyReduce_16

action_57 (11) = happyShift action_24
action_57 (12) = happyShift action_25
action_57 (13) = happyShift action_26
action_57 (14) = happyShift action_27
action_57 (15) = happyShift action_28
action_57 (16) = happyShift action_29
action_57 (18) = happyShift action_30
action_57 (30) = happyShift action_60
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (29) = happyShift action_51
action_58 (34) = happyShift action_52
action_58 (36) = happyShift action_53
action_58 (9) = happyGoto action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (30) = happyShift action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (10) = happyShift action_5
action_60 (19) = happyShift action_6
action_60 (20) = happyShift action_7
action_60 (21) = happyShift action_8
action_60 (24) = happyShift action_9
action_60 (29) = happyShift action_11
action_60 (31) = happyShift action_12
action_60 (6) = happyGoto action_61
action_60 (7) = happyGoto action_4
action_60 _ = happyReduce_23

action_61 (11) = happyShift action_24
action_61 (12) = happyShift action_25
action_61 (13) = happyShift action_26
action_61 (14) = happyShift action_27
action_61 (15) = happyShift action_28
action_61 (16) = happyShift action_29
action_61 (18) = happyShift action_30
action_61 _ = happyReduce_21

action_62 _ = happyReduce_28

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
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ApplyLam happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Array happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 8 7 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Lam happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  9 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn9
		 (TBool
	)

happyReduce_27 = happySpecReduce_1  9 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn9
		 (TNum
	)

happyReduce_28 = happyReduce 5 9 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 10;
	TokenPlus -> cont 11;
	TokenLess -> cont 12;
	TokenTimes -> cont 13;
	TokenDiv -> cont 14;
	TokenAnd -> cont 15;
	TokenOr -> cont 16;
	TokenAssign -> cont 17;
	TokenEq -> cont 18;
	TokenTrue -> cont 19;
	TokenFalse -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenVar happy_dollar_dollar -> cont 24;
	TokenLet -> cont 25;
	TokenLam -> cont 26;
	TokenColon -> cont 27;
	TokenArrow -> cont 28;
	TokenLParen -> cont 29;
	TokenRParen -> cont 30;
	TokenLBracket -> cont 31;
	TokenRBracket -> cont 32;
	Comma -> cont 33;
	TokenBoolean -> cont 34;
	TokenBreakLine -> cont 35;
	TokenNumber -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
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
