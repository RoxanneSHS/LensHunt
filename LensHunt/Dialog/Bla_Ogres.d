CHAIN
IF~Global("Bla_Lenscrew","ar1700",2)~THEN Bla_ogr2 Warn1
@0
DO~SetGlobal("Bla_Lenscrew","ar1700",3)~
=@1
END
++@2+ Warn2
++@3+ Warn2
++@4+ Warn2

CHAIN
IF~~THEN Bla_ogr2 Warn2
@5
=@6 DO~MoveToPointNoInterrupt([2230.2460])~EXIT       

CHAIN
IF~Global("Bla_Lenscrew","ar1700",5)~THEN Bla_ogr1 Boss1
@7
DO~SetGlobal("Bla_Lenscrew","ar1700",6)~
==Bla_ogr4 @8
==Bla_ogr1 @9
END
++@10+ Boss2
++@11+ Boss2
++@12+ Boss2

CHAIN
IF~~THEN Bla_ogr1 Boss2
@13
==Bla_ogr4 @14
==Bla_ogr1 @15
END
IF~NumItemsPartyLT("Misc45",2) CheckStatLT(LastTalkedToBy,12,CHR)~THEN REPLY @16 EXTERN Bla_ogr4 Boss3
IF~NumItemsPartyLT("Misc45",2) CheckStatGT(LastTalkedToBy,11,CHR)~THEN REPLY @16 DO~SetGlobal("Bla_WaitRog","ar1700",1)~ EXTERN Bla_ogr4 Boss8
IF~PartyHasItem("Misc42")~THEN REPLY @17 EXTERN Bla_ogr4 Boss5
IF~PartyGoldGT(19999)~THEN REPLY @18 EXTERN Bla_ogr4 Boss6
IF~NumItemsPartyGT("Misc45",1)~THEN REPLY @19 EXTERN Bla_ogr4 Boss7
++@20 EXTERN Bla_ogr4 Boss4

CHAIN
IF~~THEN Bla_ogr4 Boss3
@21 DO~SetGlobal("Bla_OgreHostile","ar1700",1) SetGlobal("Bla_Lenscrew","ar1700",7) ActionOverride("Bla_ogr1",Enemy()) Enemy()~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss4
@22 DO~SetGlobal("Bla_OgreHostile","ar1700",1) SetGlobal("Bla_Lenscrew","ar1700",7) ActionOverride("Bla_ogr1",Enemy()) Enemy()~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss5
@23
DO~SetGlobal("Bla_Lenscrew","ar1700",9)~
==Bla_ogr1 @24
==Bla_ogr4 @25 DO~TakePartyItem("Misc42") GiveItem("c6Lens2",Player1)~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss6
@26
DO~SetGlobal("Bla_Lenscrew","ar1700",9)~
==Bla_ogr1 @24
==Bla_ogr4 @25 DO~TakePartyGold(20000) GiveItem("c6Lens2",Player1)~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss7
@27
DO~SetGlobal("Bla_Lenscrew","ar1700",9)~
==Bla_ogr1 @28
==Bla_ogr4 @29 DO~TakePartyItemNum("Misc45",2) GiveItem("c6Lens2",Player1)~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss8
@30 EXIT

CHAIN
IF~Global("Bla_WaitRog","ar1700",1)~THEN Bla_ogr4 Boss11
@31
END
IF~NumItemsPartyLT("Misc45",2)~THEN REPLY @32 EXTERN Bla_ogr4 Boss3
++@33 EXTERN Bla_ogr4 Boss4
IF~NumItemsPartyGT("Misc45",1)~THEN REPLY @34 EXTERN Bla_ogr4 Boss7