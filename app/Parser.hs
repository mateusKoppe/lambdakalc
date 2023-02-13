{-# OPTIONS_GHC -w #-}
module Parser where 

import LangTypes
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,240) ([1024,6594,325,2064,5223,5,0,0,32256,14,0,0,0,0,0,0,8256,20636,16,0,0,0,0,0,2064,5159,4,0,0,0,512,0,49668,1321,4097,9992,1044,0,0,0,0,64,0,0,0,2064,5223,5,0,0,256,0,0,14840,4096,0,0,32,40832,3,1,0,128,0,2048,0,4096,0,0,0,0,32256,142,0,0,0,4096,9992,1044,8256,20636,16,28801,16706,1024,2498,261,2064,5159,16388,39968,4176,33024,17008,65,49668,1289,4097,9992,1044,34688,0,0,542,0,30720,0,0,57824,0,32768,903,0,0,0,0,0,0,32768,1,0,1536,0,0,28801,16706,1024,2498,261,0,256,0,0,0,0,0,0,49668,1289,1,0,0,0,0,1,28801,16706,0,0,0,0,37888,32770,927,1024,32256,270,0,49668,1289,1,0,0,0,2048,0,0,10560,0,0,165,0,0,0,0,0,32256,32782,0,0,0,0,0,32,0,2048,1,0,128,1024,2498,261,59360,0,32768,927,32,0,0,0,0,42240,0,0,660,0,0,0,0,1024,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Statement","StmtExp","Exp","Lambda","List","Type","TypeList","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'!'","'='","\"==\"","'>'","'<'","true","false","if","then","else","var","let","'\\\\'","':'","\"->\"","'('","')'","'['","']'","','","Bool","'\\n'","Number","nth","%eof"]
        bit_start = st Prelude.* 42
        bit_end = (st Prelude.+ 1) Prelude.* 42
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..41]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (23) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (33) = happyShift action_12
action_0 (35) = happyShift action_13
action_0 (39) = happyShift action_14
action_0 (41) = happyShift action_15
action_0 (4) = happyGoto action_16
action_0 (5) = happyGoto action_17
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (23) = happyShift action_7
action_1 (24) = happyShift action_8
action_1 (25) = happyShift action_9
action_1 (28) = happyShift action_10
action_1 (29) = happyShift action_11
action_1 (33) = happyShift action_12
action_1 (35) = happyShift action_13
action_1 (39) = happyShift action_14
action_1 (41) = happyShift action_15
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (12) = happyShift action_29
action_3 (13) = happyShift action_30
action_3 (14) = happyShift action_31
action_3 (15) = happyShift action_32
action_3 (16) = happyShift action_33
action_3 (17) = happyShift action_34
action_3 (20) = happyShift action_35
action_3 (21) = happyShift action_36
action_3 (22) = happyShift action_37
action_3 _ = happyReduce_3

action_4 _ = happyReduce_22

action_5 _ = happyReduce_6

action_6 (11) = happyShift action_5
action_6 (18) = happyShift action_6
action_6 (23) = happyShift action_7
action_6 (24) = happyShift action_8
action_6 (25) = happyShift action_9
action_6 (28) = happyShift action_10
action_6 (33) = happyShift action_12
action_6 (35) = happyShift action_13
action_6 (41) = happyShift action_15
action_6 (6) = happyGoto action_28
action_6 (7) = happyGoto action_4
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_9

action_8 _ = happyReduce_8

action_9 (11) = happyShift action_5
action_9 (18) = happyShift action_6
action_9 (23) = happyShift action_7
action_9 (24) = happyShift action_8
action_9 (25) = happyShift action_9
action_9 (28) = happyShift action_10
action_9 (33) = happyShift action_12
action_9 (35) = happyShift action_13
action_9 (41) = happyShift action_15
action_9 (6) = happyGoto action_27
action_9 (7) = happyGoto action_4
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_5
action_10 (18) = happyShift action_6
action_10 (23) = happyShift action_7
action_10 (24) = happyShift action_8
action_10 (25) = happyShift action_9
action_10 (28) = happyShift action_10
action_10 (33) = happyShift action_12
action_10 (35) = happyShift action_13
action_10 (41) = happyShift action_15
action_10 (6) = happyGoto action_26
action_10 (7) = happyGoto action_4
action_10 _ = happyReduce_7

action_11 (28) = happyShift action_25
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_5
action_12 (18) = happyShift action_6
action_12 (23) = happyShift action_7
action_12 (24) = happyShift action_8
action_12 (25) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (30) = happyShift action_24
action_12 (33) = happyShift action_12
action_12 (35) = happyShift action_13
action_12 (41) = happyShift action_15
action_12 (6) = happyGoto action_22
action_12 (7) = happyGoto action_4
action_12 (8) = happyGoto action_23
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_5
action_13 (18) = happyShift action_6
action_13 (23) = happyShift action_7
action_13 (24) = happyShift action_8
action_13 (25) = happyShift action_9
action_13 (28) = happyShift action_10
action_13 (33) = happyShift action_12
action_13 (35) = happyShift action_13
action_13 (41) = happyShift action_15
action_13 (6) = happyGoto action_20
action_13 (7) = happyGoto action_4
action_13 (8) = happyGoto action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_5

action_15 (33) = happyShift action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (42) = happyAccept
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_5
action_17 (18) = happyShift action_6
action_17 (23) = happyShift action_7
action_17 (24) = happyShift action_8
action_17 (25) = happyShift action_9
action_17 (28) = happyShift action_10
action_17 (29) = happyShift action_11
action_17 (33) = happyShift action_12
action_17 (35) = happyShift action_13
action_17 (39) = happyShift action_14
action_17 (41) = happyShift action_15
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_17
action_17 (6) = happyGoto action_3
action_17 (7) = happyGoto action_4
action_17 _ = happyReduce_1

action_18 _ = happyReduce_2

action_19 (11) = happyShift action_54
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_29
action_20 (13) = happyShift action_30
action_20 (14) = happyShift action_31
action_20 (15) = happyShift action_32
action_20 (16) = happyShift action_33
action_20 (17) = happyShift action_34
action_20 (20) = happyShift action_35
action_20 (21) = happyShift action_36
action_20 (22) = happyShift action_37
action_20 (37) = happyShift action_52
action_20 _ = happyReduce_29

action_21 (36) = happyShift action_53
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_29
action_22 (13) = happyShift action_30
action_22 (14) = happyShift action_31
action_22 (15) = happyShift action_32
action_22 (16) = happyShift action_33
action_22 (17) = happyShift action_34
action_22 (20) = happyShift action_35
action_22 (21) = happyShift action_36
action_22 (22) = happyShift action_37
action_22 (34) = happyShift action_51
action_22 (37) = happyShift action_52
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (34) = happyShift action_50
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (28) = happyShift action_49
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (19) = happyShift action_48
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_29
action_26 (13) = happyShift action_30
action_26 (14) = happyShift action_31
action_26 (15) = happyShift action_32
action_26 (16) = happyShift action_33
action_26 (17) = happyShift action_34
action_26 (20) = happyShift action_35
action_26 (21) = happyShift action_36
action_26 (22) = happyShift action_37
action_26 _ = happyReduce_23

action_27 (12) = happyShift action_29
action_27 (13) = happyShift action_30
action_27 (14) = happyShift action_31
action_27 (15) = happyShift action_32
action_27 (16) = happyShift action_33
action_27 (17) = happyShift action_34
action_27 (20) = happyShift action_35
action_27 (21) = happyShift action_36
action_27 (22) = happyShift action_37
action_27 (26) = happyShift action_47
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_29
action_28 (13) = happyShift action_30
action_28 (14) = happyShift action_31
action_28 (15) = happyShift action_32
action_28 (16) = happyShift action_33
action_28 (17) = happyShift action_34
action_28 (20) = happyShift action_35
action_28 (21) = happyShift action_36
action_28 (22) = happyShift action_37
action_28 _ = happyReduce_18

action_29 (11) = happyShift action_5
action_29 (18) = happyShift action_6
action_29 (23) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (25) = happyShift action_9
action_29 (28) = happyShift action_10
action_29 (33) = happyShift action_12
action_29 (35) = happyShift action_13
action_29 (41) = happyShift action_15
action_29 (6) = happyGoto action_46
action_29 (7) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_5
action_30 (18) = happyShift action_6
action_30 (23) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (25) = happyShift action_9
action_30 (28) = happyShift action_10
action_30 (33) = happyShift action_12
action_30 (35) = happyShift action_13
action_30 (41) = happyShift action_15
action_30 (6) = happyGoto action_45
action_30 (7) = happyGoto action_4
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_5
action_31 (18) = happyShift action_6
action_31 (23) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (25) = happyShift action_9
action_31 (28) = happyShift action_10
action_31 (33) = happyShift action_12
action_31 (35) = happyShift action_13
action_31 (41) = happyShift action_15
action_31 (6) = happyGoto action_44
action_31 (7) = happyGoto action_4
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_5
action_32 (18) = happyShift action_6
action_32 (23) = happyShift action_7
action_32 (24) = happyShift action_8
action_32 (25) = happyShift action_9
action_32 (28) = happyShift action_10
action_32 (33) = happyShift action_12
action_32 (35) = happyShift action_13
action_32 (41) = happyShift action_15
action_32 (6) = happyGoto action_43
action_32 (7) = happyGoto action_4
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyShift action_5
action_33 (18) = happyShift action_6
action_33 (23) = happyShift action_7
action_33 (24) = happyShift action_8
action_33 (25) = happyShift action_9
action_33 (28) = happyShift action_10
action_33 (33) = happyShift action_12
action_33 (35) = happyShift action_13
action_33 (41) = happyShift action_15
action_33 (6) = happyGoto action_42
action_33 (7) = happyGoto action_4
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (11) = happyShift action_5
action_34 (18) = happyShift action_6
action_34 (23) = happyShift action_7
action_34 (24) = happyShift action_8
action_34 (25) = happyShift action_9
action_34 (28) = happyShift action_10
action_34 (33) = happyShift action_12
action_34 (35) = happyShift action_13
action_34 (41) = happyShift action_15
action_34 (6) = happyGoto action_41
action_34 (7) = happyGoto action_4
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_5
action_35 (18) = happyShift action_6
action_35 (23) = happyShift action_7
action_35 (24) = happyShift action_8
action_35 (25) = happyShift action_9
action_35 (28) = happyShift action_10
action_35 (33) = happyShift action_12
action_35 (35) = happyShift action_13
action_35 (41) = happyShift action_15
action_35 (6) = happyGoto action_40
action_35 (7) = happyGoto action_4
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (11) = happyShift action_5
action_36 (18) = happyShift action_6
action_36 (23) = happyShift action_7
action_36 (24) = happyShift action_8
action_36 (25) = happyShift action_9
action_36 (28) = happyShift action_10
action_36 (33) = happyShift action_12
action_36 (35) = happyShift action_13
action_36 (41) = happyShift action_15
action_36 (6) = happyGoto action_39
action_36 (7) = happyGoto action_4
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_5
action_37 (18) = happyShift action_6
action_37 (23) = happyShift action_7
action_37 (24) = happyShift action_8
action_37 (25) = happyShift action_9
action_37 (28) = happyShift action_10
action_37 (33) = happyShift action_12
action_37 (35) = happyShift action_13
action_37 (41) = happyShift action_15
action_37 (6) = happyGoto action_38
action_37 (7) = happyGoto action_4
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_29
action_38 (13) = happyShift action_30
action_38 (14) = happyShift action_31
action_38 (15) = happyShift action_32
action_38 (20) = happyShift action_35
action_38 _ = happyReduce_17

action_39 (12) = happyShift action_29
action_39 (13) = happyShift action_30
action_39 (14) = happyShift action_31
action_39 (15) = happyShift action_32
action_39 (20) = happyShift action_35
action_39 _ = happyReduce_16

action_40 (12) = happyShift action_29
action_40 (13) = happyShift action_30
action_40 (14) = happyShift action_31
action_40 (15) = happyShift action_32
action_40 _ = happyReduce_21

action_41 (12) = happyShift action_29
action_41 (13) = happyShift action_30
action_41 (14) = happyShift action_31
action_41 (15) = happyShift action_32
action_41 (20) = happyShift action_35
action_41 (21) = happyShift action_36
action_41 (22) = happyShift action_37
action_41 _ = happyReduce_15

action_42 (12) = happyShift action_29
action_42 (13) = happyShift action_30
action_42 (14) = happyShift action_31
action_42 (15) = happyShift action_32
action_42 (20) = happyShift action_35
action_42 (21) = happyShift action_36
action_42 (22) = happyShift action_37
action_42 _ = happyReduce_14

action_43 _ = happyReduce_13

action_44 _ = happyReduce_12

action_45 (14) = happyShift action_31
action_45 (15) = happyShift action_32
action_45 _ = happyReduce_11

action_46 (14) = happyShift action_31
action_46 (15) = happyShift action_32
action_46 _ = happyReduce_10

action_47 (11) = happyShift action_5
action_47 (18) = happyShift action_6
action_47 (23) = happyShift action_7
action_47 (24) = happyShift action_8
action_47 (25) = happyShift action_9
action_47 (28) = happyShift action_10
action_47 (33) = happyShift action_12
action_47 (35) = happyShift action_13
action_47 (41) = happyShift action_15
action_47 (6) = happyGoto action_59
action_47 (7) = happyGoto action_4
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_5
action_48 (18) = happyShift action_6
action_48 (23) = happyShift action_7
action_48 (24) = happyShift action_8
action_48 (25) = happyShift action_9
action_48 (28) = happyShift action_10
action_48 (33) = happyShift action_12
action_48 (35) = happyShift action_13
action_48 (41) = happyShift action_15
action_48 (6) = happyGoto action_58
action_48 (7) = happyGoto action_4
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (31) = happyShift action_57
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_26

action_51 _ = happyReduce_20

action_52 (11) = happyShift action_5
action_52 (18) = happyShift action_6
action_52 (23) = happyShift action_7
action_52 (24) = happyShift action_8
action_52 (25) = happyShift action_9
action_52 (28) = happyShift action_10
action_52 (33) = happyShift action_12
action_52 (35) = happyShift action_13
action_52 (41) = happyShift action_15
action_52 (6) = happyGoto action_20
action_52 (7) = happyGoto action_4
action_52 (8) = happyGoto action_56
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_25

action_54 (37) = happyShift action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_5
action_55 (18) = happyShift action_6
action_55 (23) = happyShift action_7
action_55 (24) = happyShift action_8
action_55 (25) = happyShift action_9
action_55 (28) = happyShift action_10
action_55 (33) = happyShift action_12
action_55 (35) = happyShift action_13
action_55 (41) = happyShift action_15
action_55 (6) = happyGoto action_67
action_55 (7) = happyGoto action_4
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_30

action_57 (33) = happyShift action_63
action_57 (35) = happyShift action_64
action_57 (38) = happyShift action_65
action_57 (40) = happyShift action_66
action_57 (9) = happyGoto action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_29
action_58 (13) = happyShift action_30
action_58 (14) = happyShift action_31
action_58 (15) = happyShift action_32
action_58 (16) = happyShift action_33
action_58 (17) = happyShift action_34
action_58 (20) = happyShift action_35
action_58 (21) = happyShift action_36
action_58 (22) = happyShift action_37
action_58 (39) = happyShift action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_29
action_59 (13) = happyShift action_30
action_59 (14) = happyShift action_31
action_59 (15) = happyShift action_32
action_59 (16) = happyShift action_33
action_59 (17) = happyShift action_34
action_59 (20) = happyShift action_35
action_59 (21) = happyShift action_36
action_59 (22) = happyShift action_37
action_59 (27) = happyShift action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_5
action_60 (18) = happyShift action_6
action_60 (23) = happyShift action_7
action_60 (24) = happyShift action_8
action_60 (25) = happyShift action_9
action_60 (28) = happyShift action_10
action_60 (33) = happyShift action_12
action_60 (35) = happyShift action_13
action_60 (41) = happyShift action_15
action_60 (6) = happyGoto action_73
action_60 (7) = happyGoto action_4
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_4

action_62 (32) = happyShift action_72
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (33) = happyShift action_63
action_63 (35) = happyShift action_64
action_63 (38) = happyShift action_65
action_63 (40) = happyShift action_66
action_63 (9) = happyGoto action_70
action_63 (10) = happyGoto action_71
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (33) = happyShift action_63
action_64 (35) = happyShift action_64
action_64 (38) = happyShift action_65
action_64 (40) = happyShift action_66
action_64 (9) = happyGoto action_69
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_31

action_66 _ = happyReduce_32

action_67 (12) = happyShift action_29
action_67 (13) = happyShift action_30
action_67 (14) = happyShift action_31
action_67 (15) = happyShift action_32
action_67 (16) = happyShift action_33
action_67 (17) = happyShift action_34
action_67 (20) = happyShift action_35
action_67 (21) = happyShift action_36
action_67 (22) = happyShift action_37
action_67 (34) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_27

action_69 (36) = happyShift action_78
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (32) = happyShift action_76
action_70 (37) = happyShift action_77
action_70 _ = happyReduce_36

action_71 (34) = happyShift action_75
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (11) = happyShift action_5
action_72 (18) = happyShift action_6
action_72 (23) = happyShift action_7
action_72 (24) = happyShift action_8
action_72 (25) = happyShift action_9
action_72 (28) = happyShift action_10
action_72 (33) = happyShift action_12
action_72 (35) = happyShift action_13
action_72 (41) = happyShift action_15
action_72 (6) = happyGoto action_74
action_72 (7) = happyGoto action_4
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (12) = happyShift action_29
action_73 (13) = happyShift action_30
action_73 (14) = happyShift action_31
action_73 (15) = happyShift action_32
action_73 (16) = happyShift action_33
action_73 (17) = happyShift action_34
action_73 (20) = happyShift action_35
action_73 (21) = happyShift action_36
action_73 (22) = happyShift action_37
action_73 _ = happyReduce_19

action_74 (12) = happyShift action_29
action_74 (13) = happyShift action_30
action_74 (14) = happyShift action_31
action_74 (15) = happyShift action_32
action_74 (16) = happyShift action_33
action_74 (17) = happyShift action_34
action_74 (20) = happyShift action_35
action_74 (21) = happyShift action_36
action_74 (22) = happyShift action_37
action_74 (34) = happyShift action_82
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_35

action_76 (33) = happyShift action_63
action_76 (35) = happyShift action_64
action_76 (38) = happyShift action_65
action_76 (40) = happyShift action_66
action_76 (9) = happyGoto action_81
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (33) = happyShift action_63
action_77 (35) = happyShift action_64
action_77 (38) = happyShift action_65
action_77 (40) = happyShift action_66
action_77 (9) = happyGoto action_79
action_77 (10) = happyGoto action_80
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_34

action_79 (37) = happyShift action_77
action_79 _ = happyReduce_36

action_80 _ = happyReduce_37

action_81 (34) = happyShift action_84
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (11) = happyShift action_5
action_82 (18) = happyShift action_6
action_82 (23) = happyShift action_7
action_82 (24) = happyShift action_8
action_82 (25) = happyShift action_9
action_82 (28) = happyShift action_10
action_82 (33) = happyShift action_12
action_82 (35) = happyShift action_13
action_82 (41) = happyShift action_15
action_82 (6) = happyGoto action_83
action_82 (7) = happyGoto action_4
action_82 _ = happyReduce_28

action_83 (12) = happyShift action_29
action_83 (13) = happyShift action_30
action_83 (14) = happyShift action_31
action_83 (15) = happyShift action_32
action_83 (16) = happyShift action_33
action_83 (17) = happyShift action_34
action_83 (20) = happyShift action_35
action_83 (21) = happyShift action_36
action_83 (22) = happyShift action_37
action_83 _ = happyReduce_24

action_84 _ = happyReduce_33

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

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BgT happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LsT happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 6 happyReduction_19
happyReduction_19 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Paren happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_2)
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn6
		 (ApplyVar happy_var_1 happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 9 6 happyReduction_24
happyReduction_24 ((HappyAbsSyn6  happy_var_9) `HappyStk`
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

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Array happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Tuple happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 6 6 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenNum happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Nth happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 8 7 happyReduction_28
happyReduction_28 (_ `HappyStk`
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

happyReduce_29 = happySpecReduce_1  8 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  8 happyReduction_30
happyReduction_30 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  9 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn9
		 (TBool
	)

happyReduce_32 = happySpecReduce_1  9 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn9
		 (TNum
	)

happyReduce_33 = happyReduce 5 9 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  9 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TArray happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TTuple happy_var_2
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  10 happyReduction_36
happyReduction_36 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  10 happyReduction_37
happyReduction_37 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 11;
	TokenPlus -> cont 12;
	TokenLess -> cont 13;
	TokenTimes -> cont 14;
	TokenDiv -> cont 15;
	TokenAnd -> cont 16;
	TokenOr -> cont 17;
	TokenNot -> cont 18;
	TokenAssign -> cont 19;
	TokenEq -> cont 20;
	TokenBT -> cont 21;
	TokenLT -> cont 22;
	TokenTrue -> cont 23;
	TokenFalse -> cont 24;
	TokenIf -> cont 25;
	TokenThen -> cont 26;
	TokenElse -> cont 27;
	TokenVar happy_dollar_dollar -> cont 28;
	TokenLet -> cont 29;
	TokenLam -> cont 30;
	TokenColon -> cont 31;
	TokenArrow -> cont 32;
	TokenLParen -> cont 33;
	TokenRParen -> cont 34;
	TokenLBracket -> cont 35;
	TokenRBracket -> cont 36;
	TokenComma -> cont 37;
	TokenBoolean -> cont 38;
	TokenBreakLine -> cont 39;
	TokenNumber -> cont 40;
	TokenNth -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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
