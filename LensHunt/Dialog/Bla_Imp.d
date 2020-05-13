CHAIN
IF~Global("Bla_ImpHunt","AR2600",0)~THEN Bla_Imp Meet1
@0
DO~SetGlobal("Bla_ImpHunt","AR2600",1)~
=@1
END
++@2+ Meet3
++@3 DO~RunAwayFrom([PC],150)~EXIT
++@4+ Meet3

CHAIN
IF~Global("Bla_ImpHunt","AR2600",1)~ THEN Bla_Imp Meet2
@5
END
++@6+ Meet3
++@7+ Meet3

CHAIN
IF~~ THEN Bla_Imp Meet3
@8
=@9
END
++@10+ Meet4
++@11 DO~SetGlobal("Bla_ImpHunt","AR2600",3)~EXIT

CHAIN
IF~~ THEN Bla_Imp Meet4
@12
=@13
END
++@14+ Meet5
++@11 DO~SetGlobal("Bla_ImpHunt","AR2600",3)~EXIT
++@15+ Meet5

CHAIN
IF~~ THEN Bla_Imp Meet5
@16
END
IF~PartyHasItem("bow06")~THEN REPLY @17+ Bow1
IF~OR(4)PartyHasItem("bow06") PartyHasItem("bow14")PartyHasItem("bow15")PartyHasItem("bow18")~THEN REPLY @18 DO~SetGlobal("Bla_ImpHunt","AR2600",2)~+ Meet6
IF~PartyHasItem("bow14")~THEN REPLY @19+ Bow2
IF~PartyHasItem("bow15")~THEN REPLY @20+ Bow3
IF~PartyHasItem("bow18")~THEN REPLY @21+ Bow4
IF~!PartyHasItem("bow14") !PartyHasItem("bow06") !PartyHasItem("bow15") !PartyHasItem("bow18")~THEN REPLY @22 DO~SetGlobal("Bla_ImpHunt","AR2600",2)~+ Meet6

CHAIN
IF~~ THEN Bla_Imp Meet6
@23 EXIT

CHAIN
IF~Global("Bla_ImpHunt","AR2600",2)~ THEN Bla_Imp Bow0
@24
END
IF~PartyHasItem("bow06")~THEN REPLY @17+ Bow1
IF~PartyHasItem("bow14")~THEN REPLY @19+ Bow2
IF~PartyHasItem("bow15")~THEN REPLY @20+ Bow3
IF~PartyHasItem("bow18")~THEN REPLY @21+ Bow4
IF~!PartyHasItem("bow14") !PartyHasItem("bow06") !PartyHasItem("bow15") !PartyHasItem("bow18")~THEN REPLY  @22 DO~SetGlobal("Bla_ImpHunt","AR2600",2)~+ Meet6
++@11 DO~SetGlobal("Bla_ImpHunt","AR2600",3)~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow1
@25
END
IF~NumItemsPartyGT("arow04",9)~THEN REPLY @26 DO~TakePartyItemNum("arow04",10)~ + Bow11
IF~NumItemsPartyLT("arow04",10)~THEN REPLY @27 + Bow12

CHAIN
IF~~ THEN Bla_Imp Bow2
@25
END
IF~NumItemsPartyGT("arow04",9)~THEN REPLY @26 DO~TakePartyItemNum("arow04",10)~ + Bow21
IF~NumItemsPartyLT("arow04",10)~THEN REPLY @27 + Bow22

CHAIN
IF~~ THEN Bla_Imp Bow3
@28 DO~TakePartyItem("bow15")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow4
@25
END
IF~NumItemsPartyGT("arow04",9)~THEN REPLY @26 DO~TakePartyItemNum("arow04",10)~ + Bow41
IF~NumItemsPartyLT("arow04",10)~THEN REPLY @27 + Bow42

CHAIN
IF~~ THEN Bla_Imp Bow11
@29 DO~TakePartyItem("bow06")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow12
@30 DO~TakePartyItem("bow06")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow21
@29 DO~TakePartyItem("bow14")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow22
@30 DO~TakePartyItem("bow14")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow41
@29 DO~TakePartyItem("bow18")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow42
@30 DO~TakePartyItem("bow18")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT