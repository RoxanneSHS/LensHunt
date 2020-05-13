BEGIN Bla_Imp
BEGIN Bla_Ogr1
BEGIN Bla_Ogr2
BEGIN Bla_Ogr3
BEGIN Bla_Ogr4

CHAIN
IF WEIGHT #-13 ~Global("ElvenCityTree","GLOBAL",0)Global("Bla_Lenshunt","Global",1)~ THEN C6Elhan2 FalseLense
@0
END
IF ~PartyHasItem("Bla_Lat1")~ THEN GOTO 66
IF ~!PartyHasItem("c6lantho") !PartyHasItem("Bla_Lat1") ~ THEN GOTO 65

INTERJECT C6Elhan2 78 BLA_LensElhan
==C6Warsa1 IF~Global("Bla_Lenshunt","Global",1)~THEN @1
==C6Warsa2 IF~Global("Bla_Lenshunt","Global",1)~THEN @1
==C6Elhan2 IF~Global("Bla_Lenshunt","Global",1)~THEN @2
==C6Warsa1 IF~Global("Bla_Lenshunt","Global",1)~THEN @3
==C6Warsa2 IF~Global("Bla_Lenshunt","Global",1)~THEN @4
==C6Elhan2 IF~Global("Bla_Lenshunt","Global",1)~THEN @5
END
++@6 EXTERN C6Warsa1 Misslens1
++@7 EXTERN C6Warsa1 Misslens1
++@8 EXTERN C6Warsa1 Misslens1

CHAIN
IF~~THEN C6Warsa1 Misslens1
@9
DO~SetGlobal("Bla_Lenshunt","Global",2)~
==C6Warsa2 @10
==C6Warsa1 @11
==C6Warsa2 @12
END
++@13 EXTERN C6Elhan2 Misslens2
++@11 EXTERN C6Elhan2 Misslens2
++@14 EXTERN C6Elhan2 Misslens2

CHAIN
IF~~THEN C6Elhan2 Misslens2
@15
=@16
==C6Warsa2 @17
==C6Warsa1 @18
END
++@19 + Misslens3
++@20 + Misslens3

CHAIN
IF~~THEN C6Elhan2 Misslens3
@21
=@22
==C6Warsa1 @23 DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==C6Warsa2 @24 DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==C6Elhan2 @25 EXIT

CHAIN
IF WEIGHT #-14 ~ Global("Bla_Lenshunt","Global",4)~ THEN C6Elhan2 RightLense
@26
DO ~SetGlobal("Bla_Lenshunt","Global",5)~
=@27
END
IF ~~ THEN GOTO 78
