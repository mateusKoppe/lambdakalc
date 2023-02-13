{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
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
happyExpList = Happy_Data_Array.listArray (0,206) ([1024,41784,40,39938,5201,0,0,0,191,0,0,0,0,0,0,0,0,0,0,0,14340,8353,0,0,0,16384,0,128,5287,16388,4992,522,0,0,0,32768,0,0,0,1024,41784,40,0,0,256,0,0,191,64,0,4096,49152,47,16,0,256,0,512,0,512,0,0,0,0,4478,0,128,5159,16388,4992,522,49184,1289,4097,34016,130,28680,16706,1024,41272,32,39938,4176,32256,0,0,15,0,1920,0,0,0,0,0,0,49152,0,0,96,0,512,20636,16,19969,2088,0,256,0,0,0,0,0,4096,34016,130,0,0,0,0,2,39938,4176,0,0,0,0,660,24448,32768,49152,1071,0,57360,33412,0,0,0,0,16,0,20480,10,0,1320,0,0,0,0,0,12224,512,0,0,0,0,512,0,4096,2,0,32,256,10318,8,191,0,24448,1024,0,0,0,0,21120,0,16384,41,0,0,0,0,1,0,0,0,2048,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Statement","StmtExp","Exp","Lambda","List","Type","TypeList","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'='","\"==\"","true","false","if","then","else","var","let","'\\\\'","':'","\"->\"","'('","')'","'['","']'","','","Bool","'\\n'","Number","nth","%eof"]
        bit_start = st Prelude.* 39
        bit_end = (st Prelude.+ 1) Prelude.* 39
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..38]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (36) = happyShift action_13
action_0 (38) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (5) = happyGoto action_16
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_5
action_1 (20) = happyShift action_6
action_1 (21) = happyShift action_7
action_1 (22) = happyShift action_8
action_1 (25) = happyShift action_9
action_1 (26) = happyShift action_10
action_1 (30) = happyShift action_11
action_1 (32) = happyShift action_12
action_1 (36) = happyShift action_13
action_1 (38) = happyShift action_14
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (12) = happyShift action_27
action_3 (13) = happyShift action_28
action_3 (14) = happyShift action_29
action_3 (15) = happyShift action_30
action_3 (16) = happyShift action_31
action_3 (17) = happyShift action_32
action_3 (19) = happyShift action_33
action_3 _ = happyReduce_3

action_4 _ = happyReduce_19

action_5 _ = happyReduce_6

action_6 _ = happyReduce_9

action_7 _ = happyReduce_8

action_8 (11) = happyShift action_5
action_8 (20) = happyShift action_6
action_8 (21) = happyShift action_7
action_8 (22) = happyShift action_8
action_8 (25) = happyShift action_9
action_8 (30) = happyShift action_11
action_8 (32) = happyShift action_12
action_8 (38) = happyShift action_14
action_8 (6) = happyGoto action_26
action_8 (7) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_5
action_9 (20) = happyShift action_6
action_9 (21) = happyShift action_7
action_9 (22) = happyShift action_8
action_9 (25) = happyShift action_9
action_9 (30) = happyShift action_11
action_9 (32) = happyShift action_12
action_9 (38) = happyShift action_14
action_9 (6) = happyGoto action_25
action_9 (7) = happyGoto action_4
action_9 _ = happyReduce_7

action_10 (25) = happyShift action_24
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (11) = happyShift action_5
action_11 (20) = happyShift action_6
action_11 (21) = happyShift action_7
action_11 (22) = happyShift action_8
action_11 (25) = happyShift action_9
action_11 (27) = happyShift action_23
action_11 (30) = happyShift action_11
action_11 (32) = happyShift action_12
action_11 (38) = happyShift action_14
action_11 (6) = happyGoto action_21
action_11 (7) = happyGoto action_4
action_11 (8) = happyGoto action_22
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_5
action_12 (20) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (22) = happyShift action_8
action_12 (25) = happyShift action_9
action_12 (30) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (38) = happyShift action_14
action_12 (6) = happyGoto action_19
action_12 (7) = happyGoto action_4
action_12 (8) = happyGoto action_20
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_5

action_14 (30) = happyShift action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (39) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_5
action_16 (20) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (22) = happyShift action_8
action_16 (25) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (30) = happyShift action_11
action_16 (32) = happyShift action_12
action_16 (36) = happyShift action_13
action_16 (38) = happyShift action_14
action_16 (4) = happyGoto action_17
action_16 (5) = happyGoto action_16
action_16 (6) = happyGoto action_3
action_16 (7) = happyGoto action_4
action_16 _ = happyReduce_1

action_17 _ = happyReduce_2

action_18 (11) = happyShift action_48
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_27
action_19 (13) = happyShift action_28
action_19 (14) = happyShift action_29
action_19 (15) = happyShift action_30
action_19 (16) = happyShift action_31
action_19 (17) = happyShift action_32
action_19 (19) = happyShift action_33
action_19 (34) = happyShift action_46
action_19 _ = happyReduce_26

action_20 (33) = happyShift action_47
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_27
action_21 (13) = happyShift action_28
action_21 (14) = happyShift action_29
action_21 (15) = happyShift action_30
action_21 (16) = happyShift action_31
action_21 (17) = happyShift action_32
action_21 (19) = happyShift action_33
action_21 (31) = happyShift action_45
action_21 (34) = happyShift action_46
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (31) = happyShift action_44
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (25) = happyShift action_43
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (18) = happyShift action_42
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_27
action_25 (13) = happyShift action_28
action_25 (14) = happyShift action_29
action_25 (15) = happyShift action_30
action_25 (16) = happyShift action_31
action_25 (17) = happyShift action_32
action_25 (19) = happyShift action_33
action_25 _ = happyReduce_20

action_26 (12) = happyShift action_27
action_26 (13) = happyShift action_28
action_26 (14) = happyShift action_29
action_26 (15) = happyShift action_30
action_26 (16) = happyShift action_31
action_26 (17) = happyShift action_32
action_26 (19) = happyShift action_33
action_26 (23) = happyShift action_41
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_5
action_27 (20) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (22) = happyShift action_8
action_27 (25) = happyShift action_9
action_27 (30) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (38) = happyShift action_14
action_27 (6) = happyGoto action_40
action_27 (7) = happyGoto action_4
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_5
action_28 (20) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (22) = happyShift action_8
action_28 (25) = happyShift action_9
action_28 (30) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (38) = happyShift action_14
action_28 (6) = happyGoto action_39
action_28 (7) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_5
action_29 (20) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (22) = happyShift action_8
action_29 (25) = happyShift action_9
action_29 (30) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (38) = happyShift action_14
action_29 (6) = happyGoto action_38
action_29 (7) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_5
action_30 (20) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (22) = happyShift action_8
action_30 (25) = happyShift action_9
action_30 (30) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (38) = happyShift action_14
action_30 (6) = happyGoto action_37
action_30 (7) = happyGoto action_4
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_5
action_31 (20) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (22) = happyShift action_8
action_31 (25) = happyShift action_9
action_31 (30) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (38) = happyShift action_14
action_31 (6) = happyGoto action_36
action_31 (7) = happyGoto action_4
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (22) = happyShift action_8
action_32 (25) = happyShift action_9
action_32 (30) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (38) = happyShift action_14
action_32 (6) = happyGoto action_35
action_32 (7) = happyGoto action_4
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyShift action_5
action_33 (20) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (22) = happyShift action_8
action_33 (25) = happyShift action_9
action_33 (30) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (38) = happyShift action_14
action_33 (6) = happyGoto action_34
action_33 (7) = happyGoto action_4
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_27
action_34 (13) = happyShift action_28
action_34 (14) = happyShift action_29
action_34 (15) = happyShift action_30
action_34 (16) = happyShift action_31
action_34 (17) = happyShift action_32
action_34 _ = happyReduce_18

action_35 (12) = happyShift action_27
action_35 (13) = happyShift action_28
action_35 (14) = happyShift action_29
action_35 (15) = happyShift action_30
action_35 _ = happyReduce_15

action_36 (12) = happyShift action_27
action_36 (13) = happyShift action_28
action_36 (14) = happyShift action_29
action_36 (15) = happyShift action_30
action_36 _ = happyReduce_14

action_37 _ = happyReduce_13

action_38 _ = happyReduce_12

action_39 (14) = happyShift action_29
action_39 (15) = happyShift action_30
action_39 _ = happyReduce_11

action_40 (14) = happyShift action_29
action_40 (15) = happyShift action_30
action_40 _ = happyReduce_10

action_41 (11) = happyShift action_5
action_41 (20) = happyShift action_6
action_41 (21) = happyShift action_7
action_41 (22) = happyShift action_8
action_41 (25) = happyShift action_9
action_41 (30) = happyShift action_11
action_41 (32) = happyShift action_12
action_41 (38) = happyShift action_14
action_41 (6) = happyGoto action_53
action_41 (7) = happyGoto action_4
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_5
action_42 (20) = happyShift action_6
action_42 (21) = happyShift action_7
action_42 (22) = happyShift action_8
action_42 (25) = happyShift action_9
action_42 (30) = happyShift action_11
action_42 (32) = happyShift action_12
action_42 (38) = happyShift action_14
action_42 (6) = happyGoto action_52
action_42 (7) = happyGoto action_4
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (28) = happyShift action_51
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_23

action_45 _ = happyReduce_17

action_46 (11) = happyShift action_5
action_46 (20) = happyShift action_6
action_46 (21) = happyShift action_7
action_46 (22) = happyShift action_8
action_46 (25) = happyShift action_9
action_46 (30) = happyShift action_11
action_46 (32) = happyShift action_12
action_46 (38) = happyShift action_14
action_46 (6) = happyGoto action_19
action_46 (7) = happyGoto action_4
action_46 (8) = happyGoto action_50
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_22

action_48 (34) = happyShift action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_5
action_49 (20) = happyShift action_6
action_49 (21) = happyShift action_7
action_49 (22) = happyShift action_8
action_49 (25) = happyShift action_9
action_49 (30) = happyShift action_11
action_49 (32) = happyShift action_12
action_49 (38) = happyShift action_14
action_49 (6) = happyGoto action_61
action_49 (7) = happyGoto action_4
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_27

action_51 (30) = happyShift action_57
action_51 (32) = happyShift action_58
action_51 (35) = happyShift action_59
action_51 (37) = happyShift action_60
action_51 (9) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_27
action_52 (13) = happyShift action_28
action_52 (14) = happyShift action_29
action_52 (15) = happyShift action_30
action_52 (16) = happyShift action_31
action_52 (17) = happyShift action_32
action_52 (19) = happyShift action_33
action_52 (36) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_27
action_53 (13) = happyShift action_28
action_53 (14) = happyShift action_29
action_53 (15) = happyShift action_30
action_53 (16) = happyShift action_31
action_53 (17) = happyShift action_32
action_53 (19) = happyShift action_33
action_53 (24) = happyShift action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_5
action_54 (20) = happyShift action_6
action_54 (21) = happyShift action_7
action_54 (22) = happyShift action_8
action_54 (25) = happyShift action_9
action_54 (30) = happyShift action_11
action_54 (32) = happyShift action_12
action_54 (38) = happyShift action_14
action_54 (6) = happyGoto action_67
action_54 (7) = happyGoto action_4
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_4

action_56 (29) = happyShift action_66
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (30) = happyShift action_57
action_57 (32) = happyShift action_58
action_57 (35) = happyShift action_59
action_57 (37) = happyShift action_60
action_57 (9) = happyGoto action_64
action_57 (10) = happyGoto action_65
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (30) = happyShift action_57
action_58 (32) = happyShift action_58
action_58 (35) = happyShift action_59
action_58 (37) = happyShift action_60
action_58 (9) = happyGoto action_63
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_28

action_60 _ = happyReduce_29

action_61 (12) = happyShift action_27
action_61 (13) = happyShift action_28
action_61 (14) = happyShift action_29
action_61 (15) = happyShift action_30
action_61 (16) = happyShift action_31
action_61 (17) = happyShift action_32
action_61 (19) = happyShift action_33
action_61 (31) = happyShift action_62
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_24

action_63 (33) = happyShift action_72
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (29) = happyShift action_70
action_64 (34) = happyShift action_71
action_64 _ = happyReduce_33

action_65 (31) = happyShift action_69
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyShift action_5
action_66 (20) = happyShift action_6
action_66 (21) = happyShift action_7
action_66 (22) = happyShift action_8
action_66 (25) = happyShift action_9
action_66 (30) = happyShift action_11
action_66 (32) = happyShift action_12
action_66 (38) = happyShift action_14
action_66 (6) = happyGoto action_68
action_66 (7) = happyGoto action_4
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (12) = happyShift action_27
action_67 (13) = happyShift action_28
action_67 (14) = happyShift action_29
action_67 (15) = happyShift action_30
action_67 (16) = happyShift action_31
action_67 (17) = happyShift action_32
action_67 (19) = happyShift action_33
action_67 _ = happyReduce_16

action_68 (12) = happyShift action_27
action_68 (13) = happyShift action_28
action_68 (14) = happyShift action_29
action_68 (15) = happyShift action_30
action_68 (16) = happyShift action_31
action_68 (17) = happyShift action_32
action_68 (19) = happyShift action_33
action_68 (31) = happyShift action_76
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_32

action_70 (30) = happyShift action_57
action_70 (32) = happyShift action_58
action_70 (35) = happyShift action_59
action_70 (37) = happyShift action_60
action_70 (9) = happyGoto action_75
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (30) = happyShift action_57
action_71 (32) = happyShift action_58
action_71 (35) = happyShift action_59
action_71 (37) = happyShift action_60
action_71 (9) = happyGoto action_73
action_71 (10) = happyGoto action_74
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_31

action_73 (34) = happyShift action_71
action_73 _ = happyReduce_33

action_74 _ = happyReduce_34

action_75 (31) = happyShift action_78
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (11) = happyShift action_5
action_76 (20) = happyShift action_6
action_76 (21) = happyShift action_7
action_76 (22) = happyShift action_8
action_76 (25) = happyShift action_9
action_76 (30) = happyShift action_11
action_76 (32) = happyShift action_12
action_76 (38) = happyShift action_14
action_76 (6) = happyGoto action_77
action_76 (7) = happyGoto action_4
action_76 _ = happyReduce_25

action_77 (12) = happyShift action_27
action_77 (13) = happyShift action_28
action_77 (14) = happyShift action_29
action_77 (15) = happyShift action_30
action_77 (16) = happyShift action_31
action_77 (17) = happyShift action_32
action_77 (19) = happyShift action_33
action_77 _ = happyReduce_21

action_78 _ = happyReduce_30

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

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Tuple happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 6 6 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenNum happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Nth happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 8 7 happyReduction_25
happyReduction_25 (_ `HappyStk`
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

happyReduce_26 = happySpecReduce_1  8 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  9 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn9
		 (TBool
	)

happyReduce_29 = happySpecReduce_1  9 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn9
		 (TNum
	)

happyReduce_30 = happyReduce 5 9 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_3  9 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TArray happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  9 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TTuple happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  10 happyReduction_33
happyReduction_33 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  10 happyReduction_34
happyReduction_34 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

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
	TokenAssign -> cont 18;
	TokenEq -> cont 19;
	TokenTrue -> cont 20;
	TokenFalse -> cont 21;
	TokenIf -> cont 22;
	TokenThen -> cont 23;
	TokenElse -> cont 24;
	TokenVar happy_dollar_dollar -> cont 25;
	TokenLet -> cont 26;
	TokenLam -> cont 27;
	TokenColon -> cont 28;
	TokenArrow -> cont 29;
	TokenLParen -> cont 30;
	TokenRParen -> cont 31;
	TokenLBracket -> cont 32;
	TokenRBracket -> cont 33;
	Comma -> cont 34;
	TokenBoolean -> cont 35;
	TokenBreakLine -> cont 36;
	TokenNumber -> cont 37;
	TokenNth -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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
