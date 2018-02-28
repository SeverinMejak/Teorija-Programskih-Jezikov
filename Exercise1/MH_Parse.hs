{-# OPTIONS_GHC -w #-}
module MH_Parse where
import MH_Lex
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19

action_0 (43) = happyShift action_25
action_0 (5) = happyGoto action_22
action_0 (6) = happyGoto action_23
action_0 (7) = happyGoto action_24
action_0 _ = happyReduce_2

action_1 (20) = happyShift action_12
action_1 (36) = happyShift action_13
action_1 (37) = happyShift action_14
action_1 (38) = happyShift action_15
action_1 (41) = happyShift action_16
action_1 (42) = happyShift action_17
action_1 (43) = happyShift action_18
action_1 (44) = happyShift action_19
action_1 (45) = happyShift action_20
action_1 (46) = happyShift action_21
action_1 (11) = happyGoto action_3
action_1 (12) = happyGoto action_4
action_1 (13) = happyGoto action_5
action_1 (14) = happyGoto action_6
action_1 (15) = happyGoto action_7
action_1 (16) = happyGoto action_8
action_1 (17) = happyGoto action_9
action_1 (18) = happyGoto action_10
action_1 (19) = happyGoto action_11
action_1 _ = happyFail

action_2 _ = happyFail

action_3 (47) = happyAccept
action_3 _ = happyFail

action_4 (32) = happyShift action_40
action_4 _ = happyReduce_16

action_5 (33) = happyShift action_39
action_5 _ = happyReduce_18

action_6 _ = happyReduce_20

action_7 _ = happyReduce_22

action_8 (27) = happyShift action_35
action_8 (28) = happyShift action_36
action_8 (29) = happyShift action_37
action_8 (30) = happyShift action_38
action_8 _ = happyReduce_25

action_9 _ = happyReduce_28

action_10 (38) = happyShift action_15
action_10 (41) = happyShift action_16
action_10 (42) = happyShift action_17
action_10 (43) = happyShift action_18
action_10 (44) = happyShift action_19
action_10 (45) = happyShift action_20
action_10 (46) = happyShift action_21
action_10 (19) = happyGoto action_34
action_10 _ = happyReduce_30

action_11 _ = happyReduce_32

action_12 (20) = happyShift action_12
action_12 (36) = happyShift action_13
action_12 (37) = happyShift action_14
action_12 (38) = happyShift action_15
action_12 (41) = happyShift action_16
action_12 (42) = happyShift action_17
action_12 (43) = happyShift action_18
action_12 (44) = happyShift action_19
action_12 (45) = happyShift action_20
action_12 (46) = happyShift action_21
action_12 (11) = happyGoto action_33
action_12 (12) = happyGoto action_4
action_12 (13) = happyGoto action_5
action_12 (14) = happyGoto action_6
action_12 (15) = happyGoto action_7
action_12 (16) = happyGoto action_8
action_12 (17) = happyGoto action_9
action_12 (18) = happyGoto action_10
action_12 (19) = happyGoto action_11
action_12 _ = happyFail

action_13 (36) = happyShift action_13
action_13 (37) = happyShift action_14
action_13 (38) = happyShift action_15
action_13 (41) = happyShift action_16
action_13 (42) = happyShift action_17
action_13 (43) = happyShift action_18
action_13 (44) = happyShift action_19
action_13 (45) = happyShift action_20
action_13 (46) = happyShift action_21
action_13 (14) = happyGoto action_32
action_13 (15) = happyGoto action_7
action_13 (16) = happyGoto action_8
action_13 (17) = happyGoto action_9
action_13 (18) = happyGoto action_10
action_13 (19) = happyGoto action_11
action_13 _ = happyFail

action_14 (37) = happyShift action_14
action_14 (38) = happyShift action_15
action_14 (41) = happyShift action_16
action_14 (42) = happyShift action_17
action_14 (43) = happyShift action_18
action_14 (44) = happyShift action_19
action_14 (45) = happyShift action_20
action_14 (46) = happyShift action_21
action_14 (17) = happyGoto action_31
action_14 (18) = happyGoto action_10
action_14 (19) = happyGoto action_11
action_14 _ = happyFail

action_15 (20) = happyShift action_12
action_15 (36) = happyShift action_13
action_15 (37) = happyShift action_14
action_15 (38) = happyShift action_15
action_15 (41) = happyShift action_16
action_15 (42) = happyShift action_17
action_15 (43) = happyShift action_18
action_15 (44) = happyShift action_19
action_15 (45) = happyShift action_20
action_15 (46) = happyShift action_21
action_15 (11) = happyGoto action_30
action_15 (12) = happyGoto action_4
action_15 (13) = happyGoto action_5
action_15 (14) = happyGoto action_6
action_15 (15) = happyGoto action_7
action_15 (16) = happyGoto action_8
action_15 (17) = happyGoto action_9
action_15 (18) = happyGoto action_10
action_15 (19) = happyGoto action_11
action_15 _ = happyFail

action_16 _ = happyReduce_33

action_17 _ = happyReduce_34

action_18 _ = happyReduce_35

action_19 _ = happyReduce_36

action_20 _ = happyReduce_37

action_21 _ = happyReduce_38

action_22 (47) = happyAccept
action_22 _ = happyFail

action_23 (43) = happyShift action_25
action_23 (5) = happyGoto action_29
action_23 (6) = happyGoto action_23
action_23 (7) = happyGoto action_24
action_23 _ = happyReduce_2

action_24 (43) = happyShift action_28
action_24 (9) = happyGoto action_27
action_24 _ = happyFail

action_25 (34) = happyShift action_26
action_25 _ = happyFail

action_26 (23) = happyShift action_52
action_26 (24) = happyShift action_53
action_26 (25) = happyShift action_54
action_26 (26) = happyShift action_55
action_26 (38) = happyShift action_56
action_26 (8) = happyGoto action_51
action_26 _ = happyFail

action_27 _ = happyReduce_4

action_28 (43) = happyShift action_50
action_28 (10) = happyGoto action_49
action_28 _ = happyReduce_13

action_29 _ = happyReduce_3

action_30 (39) = happyShift action_48
action_30 _ = happyFail

action_31 _ = happyReduce_29

action_32 _ = happyReduce_21

action_33 (21) = happyShift action_47
action_33 _ = happyFail

action_34 _ = happyReduce_31

action_35 (37) = happyShift action_14
action_35 (38) = happyShift action_15
action_35 (41) = happyShift action_16
action_35 (42) = happyShift action_17
action_35 (43) = happyShift action_18
action_35 (44) = happyShift action_19
action_35 (45) = happyShift action_20
action_35 (46) = happyShift action_21
action_35 (16) = happyGoto action_46
action_35 (17) = happyGoto action_9
action_35 (18) = happyGoto action_10
action_35 (19) = happyGoto action_11
action_35 _ = happyFail

action_36 (37) = happyShift action_14
action_36 (38) = happyShift action_15
action_36 (41) = happyShift action_16
action_36 (42) = happyShift action_17
action_36 (43) = happyShift action_18
action_36 (44) = happyShift action_19
action_36 (45) = happyShift action_20
action_36 (46) = happyShift action_21
action_36 (16) = happyGoto action_45
action_36 (17) = happyGoto action_9
action_36 (18) = happyGoto action_10
action_36 (19) = happyGoto action_11
action_36 _ = happyFail

action_37 (37) = happyShift action_14
action_37 (38) = happyShift action_15
action_37 (41) = happyShift action_16
action_37 (42) = happyShift action_17
action_37 (43) = happyShift action_18
action_37 (44) = happyShift action_19
action_37 (45) = happyShift action_20
action_37 (46) = happyShift action_21
action_37 (17) = happyGoto action_44
action_37 (18) = happyGoto action_10
action_37 (19) = happyGoto action_11
action_37 _ = happyFail

action_38 (37) = happyShift action_14
action_38 (38) = happyShift action_15
action_38 (41) = happyShift action_16
action_38 (42) = happyShift action_17
action_38 (43) = happyShift action_18
action_38 (44) = happyShift action_19
action_38 (45) = happyShift action_20
action_38 (46) = happyShift action_21
action_38 (17) = happyGoto action_43
action_38 (18) = happyGoto action_10
action_38 (19) = happyGoto action_11
action_38 _ = happyFail

action_39 (36) = happyShift action_13
action_39 (37) = happyShift action_14
action_39 (38) = happyShift action_15
action_39 (41) = happyShift action_16
action_39 (42) = happyShift action_17
action_39 (43) = happyShift action_18
action_39 (44) = happyShift action_19
action_39 (45) = happyShift action_20
action_39 (46) = happyShift action_21
action_39 (14) = happyGoto action_42
action_39 (15) = happyGoto action_7
action_39 (16) = happyGoto action_8
action_39 (17) = happyGoto action_9
action_39 (18) = happyGoto action_10
action_39 (19) = happyGoto action_11
action_39 _ = happyFail

action_40 (36) = happyShift action_13
action_40 (37) = happyShift action_14
action_40 (38) = happyShift action_15
action_40 (41) = happyShift action_16
action_40 (42) = happyShift action_17
action_40 (43) = happyShift action_18
action_40 (44) = happyShift action_19
action_40 (45) = happyShift action_20
action_40 (46) = happyShift action_21
action_40 (13) = happyGoto action_41
action_40 (14) = happyGoto action_6
action_40 (15) = happyGoto action_7
action_40 (16) = happyGoto action_8
action_40 (17) = happyGoto action_9
action_40 (18) = happyGoto action_10
action_40 (19) = happyGoto action_11
action_40 _ = happyFail

action_41 (33) = happyShift action_39
action_41 _ = happyReduce_17

action_42 _ = happyReduce_19

action_43 _ = happyReduce_27

action_44 _ = happyReduce_26

action_45 (29) = happyShift action_37
action_45 (30) = happyShift action_38
action_45 _ = happyReduce_24

action_46 (29) = happyShift action_37
action_46 (30) = happyShift action_38
action_46 _ = happyReduce_23

action_47 (20) = happyShift action_12
action_47 (36) = happyShift action_13
action_47 (37) = happyShift action_14
action_47 (38) = happyShift action_15
action_47 (41) = happyShift action_16
action_47 (42) = happyShift action_17
action_47 (43) = happyShift action_18
action_47 (44) = happyShift action_19
action_47 (45) = happyShift action_20
action_47 (46) = happyShift action_21
action_47 (11) = happyGoto action_62
action_47 (12) = happyGoto action_4
action_47 (13) = happyGoto action_5
action_47 (14) = happyGoto action_6
action_47 (15) = happyGoto action_7
action_47 (16) = happyGoto action_8
action_47 (17) = happyGoto action_9
action_47 (18) = happyGoto action_10
action_47 (19) = happyGoto action_11
action_47 _ = happyFail

action_48 _ = happyReduce_39

action_49 (31) = happyShift action_61
action_49 _ = happyFail

action_50 (43) = happyShift action_50
action_50 (10) = happyGoto action_60
action_50 _ = happyReduce_13

action_51 (35) = happyShift action_58
action_51 (40) = happyShift action_59
action_51 _ = happyFail

action_52 _ = happyReduce_6

action_53 _ = happyReduce_7

action_54 _ = happyReduce_8

action_55 _ = happyReduce_9

action_56 (23) = happyShift action_52
action_56 (24) = happyShift action_53
action_56 (25) = happyShift action_54
action_56 (26) = happyShift action_55
action_56 (38) = happyShift action_56
action_56 (8) = happyGoto action_57
action_56 _ = happyFail

action_57 (35) = happyShift action_58
action_57 (39) = happyShift action_66
action_57 _ = happyFail

action_58 (23) = happyShift action_52
action_58 (24) = happyShift action_53
action_58 (25) = happyShift action_54
action_58 (26) = happyShift action_55
action_58 (38) = happyShift action_56
action_58 (8) = happyGoto action_65
action_58 _ = happyFail

action_59 _ = happyReduce_5

action_60 _ = happyReduce_14

action_61 (20) = happyShift action_12
action_61 (36) = happyShift action_13
action_61 (37) = happyShift action_14
action_61 (38) = happyShift action_15
action_61 (41) = happyShift action_16
action_61 (42) = happyShift action_17
action_61 (43) = happyShift action_18
action_61 (44) = happyShift action_19
action_61 (45) = happyShift action_20
action_61 (46) = happyShift action_21
action_61 (11) = happyGoto action_64
action_61 (12) = happyGoto action_4
action_61 (13) = happyGoto action_5
action_61 (14) = happyGoto action_6
action_61 (15) = happyGoto action_7
action_61 (16) = happyGoto action_8
action_61 (17) = happyGoto action_9
action_61 (18) = happyGoto action_10
action_61 (19) = happyGoto action_11
action_61 _ = happyFail

action_62 (22) = happyShift action_63
action_62 _ = happyFail

action_63 (20) = happyShift action_12
action_63 (36) = happyShift action_13
action_63 (37) = happyShift action_14
action_63 (38) = happyShift action_15
action_63 (41) = happyShift action_16
action_63 (42) = happyShift action_17
action_63 (43) = happyShift action_18
action_63 (44) = happyShift action_19
action_63 (45) = happyShift action_20
action_63 (46) = happyShift action_21
action_63 (11) = happyGoto action_68
action_63 (12) = happyGoto action_4
action_63 (13) = happyGoto action_5
action_63 (14) = happyGoto action_6
action_63 (15) = happyGoto action_7
action_63 (16) = happyGoto action_8
action_63 (17) = happyGoto action_9
action_63 (18) = happyGoto action_10
action_63 (19) = happyGoto action_11
action_63 _ = happyFail

action_64 (40) = happyShift action_67
action_64 _ = happyFail

action_65 (35) = happyShift action_58
action_65 _ = happyReduce_10

action_66 _ = happyReduce_11

action_67 _ = happyReduce_12

action_68 _ = happyReduce_15

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 ([]
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1:happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ((happy_var_1,happy_var_2)
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 7 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_1,happy_var_3)
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  8 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn8
		 (TypeConst "Integer"
	)

happyReduce_7 = happySpecReduce_1  8 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn8
		 (TypeConst "Bool"
	)

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn8
		 (TypeConst "Char"
	)

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn8
		 (TypeConst "String"
	)

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (TypeOp ("->", happy_var_1, happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 5 9 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	(HappyTerminal (VAR happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((happy_var_1, lamabstract happy_var_2 happy_var_4)
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_0  10 happyReduction_13
happyReduction_13  =  HappyAbsSyn10
		 ([]
	)

happyReduce_14 = happySpecReduce_2  10 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 11 happyReduction_15
happyReduction_15 ((HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Cond (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  11 happyReduction_16
happyReduction_16 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  12 happyReduction_17
happyReduction_17 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("&&", happy_var_1, happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  13 happyReduction_19
happyReduction_19 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Op ("||", happy_var_1, happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  13 happyReduction_20
happyReduction_20 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  14 happyReduction_21
happyReduction_21 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (Uop ("not", happy_var_2)
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  14 happyReduction_22
happyReduction_22 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  15 happyReduction_23
happyReduction_23 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (Op ("==", happy_var_1, happy_var_3)
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  15 happyReduction_24
happyReduction_24 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (Op ("<", happy_var_1, happy_var_3)
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  15 happyReduction_25
happyReduction_25 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  16 happyReduction_26
happyReduction_26 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Op ("+", happy_var_1, happy_var_3)
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  16 happyReduction_27
happyReduction_27 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Op ("-", happy_var_1, happy_var_3)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  16 happyReduction_28
happyReduction_28 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  17 happyReduction_29
happyReduction_29 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Uop ("um", happy_var_2)
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  17 happyReduction_30
happyReduction_30 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  18 happyReduction_31
happyReduction_31 (HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Op ("appl", happy_var_1, happy_var_2)
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  18 happyReduction_32
happyReduction_32 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  19 happyReduction_33
happyReduction_33 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn19
		 (Num happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  19 happyReduction_34
happyReduction_34 (HappyTerminal (BOOLEAN happy_var_1))
	 =  HappyAbsSyn19
		 (Boolean happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  19 happyReduction_35
happyReduction_35 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn19
		 (Var happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  19 happyReduction_36
happyReduction_36 (HappyTerminal (CHAR happy_var_1))
	 =  HappyAbsSyn19
		 (Char happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  19 happyReduction_37
happyReduction_37 (HappyTerminal (STRN happy_var_1))
	 =  HappyAbsSyn19
		 (Strn happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  19 happyReduction_38
happyReduction_38 (HappyTerminal (LIST happy_var_1))
	 =  HappyAbsSyn19
		 (List happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  19 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	KEY "if" -> cont 20;
	KEY "then" -> cont 21;
	KEY "else" -> cont 22;
	KEY "Integer" -> cont 23;
	KEY "Bool" -> cont 24;
	KEY "Char" -> cont 25;
	KEY "String" -> cont 26;
	OP "==" -> cont 27;
	OP "<" -> cont 28;
	OP "+" -> cont 29;
	OP "-" -> cont 30;
	OP "=" -> cont 31;
	OP "&&" -> cont 32;
	OP "||" -> cont 33;
	OP "::" -> cont 34;
	OP "->" -> cont 35;
	UOP "not" -> cont 36;
	UOP "um" -> cont 37;
	PUNC "(" -> cont 38;
	PUNC ")" -> cont 39;
	PUNC ";" -> cont 40;
	NUM happy_dollar_dollar -> cont 41;
	BOOLEAN happy_dollar_dollar -> cont 42;
	VAR happy_dollar_dollar -> cont 43;
	CHAR happy_dollar_dollar -> cont 44;
	STRN happy_dollar_dollar -> cont 45;
	LIST happy_dollar_dollar -> cont 46;
	_ -> happyError' (tk:tks)
	}

happyError_ 47 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

mh_parseProg tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn5 z -> happyReturn z; _other -> notHappyAtAll })

mh_parseExp tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn11 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "MH parse error"

-- Haskell datatypes representing abstract syntax of MH types and expressions
  
data Type =
        TypeConst String |
        TypeOp (String, Type, Type)
        deriving Show
  
data Exp =
        Num Integer |
        Boolean Bool |
        Char Char |
        Strn String |
        List List |
        Var String |
        Op (String, Exp, Exp) |
        Uop (String, Exp) |
        Cond (Exp, Exp, Exp) |
        Lam (String, Exp)
        deriving Show

lamabstract [] exp = exp
lamabstract (v:vs) exp = Lam(v, lamabstract vs exp)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
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
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates/GenericTemplate.hs" #-}
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
