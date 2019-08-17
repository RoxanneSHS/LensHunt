CHAIN
IF~Global("Bla_ImpHunt","AR2600",0)~THEN Bla_Imp Meet1
~No, no, no...this is not good.~
DO~SetGlobal("Bla_ImpHunt","AR2600",1)~
=~Nobody comes here for aaages and then come adventurers with noses seeking the ground.~
END
++~We seek for something that you may have found, little imp.~+ Meet3
++~That's none of your business, crazy imp.~DO~RunAwayFrom([PC],150)~EXIT
++~You know we are seekers because you found something extraordinary just recently.~+ Meet3

CHAIN
IF~Global("Bla_ImpHunt","AR2600",1)~ THEN Bla_Imp Meet2
~You again. What do you want...this is not good?~
END
++~We need to talk about the thing you found here. Because I need it.~+ Meet3
++~Don't try to fool us, imp, we want the lens you have found.~+ Meet3

CHAIN
IF~~ THEN Bla_Imp Meet3
~It's not yours, I know it's not. I know who lost it and it wasnt't you.~
=~But now it's mine and mine alone.~
END
++~There is surely something you may want even more than some blue lens that is useless to you.~+ Meet4
++~I have no time to waste with an imp. They can't be reasoned with. Give me the lens you found or I take it by force.~DO~SetGlobal("Bla_ImpHunt","AR2600",3)~EXIT

CHAIN
IF~~ THEN Bla_Imp Meet4
~No, no, no...I want my shiny. Is all I want...~
=~Maybe all except for a bow, yes, I want a bow...with arrows. That's what I want.~
END
++~You can't even handle a bow and arrow, imp, that is nonsense.~+ Meet5
++~I have no time to waste with an imp. They can't be reasoned with. Give me the lens you found or I take it by force.~DO~SetGlobal("Bla_ImpHunt","AR2600",3)~EXIT
++~If you want a bow you get one, no problem. As long as I get the lens in return.~+ Meet5

CHAIN
IF~~ THEN Bla_Imp Meet5
~Must be a short bow, that's what it's called, but a gooood one, no trash. And ten arrows with acid that hurt the nasties around here.~
END
IF~PartyHasItem("bow06")~THEN REPLY~This is a magical shortbow and I can give it to you.~+ Bow1
IF~PartyHasItem("bow14")~THEN REPLY~Here is a bow of Tuigan origin that can be fired faster than a normal one.~+ Bow2
IF~PartyHasItem("bow15")~THEN REPLY~Tansheron's bow is fitting and it doesn't even need arrows as it spawns phantom arrows when you fire it.~+ Bow3
IF~PartyHasItem("bow18")~THEN REPLY~This shortbow is the rival of any of the larger bows by the magic embedded in its wood.~+ Bow4
IF~!PartyHasItem("bow14") !PartyHasItem("bow06") !PartyHasItem("bow15") !PartyHasItem("bow18")~THEN REPLY~I have not one of those right now but I know where to get it.~DO~SetGlobal("Bla_ImpHunt","AR2600",2)~+ Meet6

CHAIN
IF~~ THEN Bla_Imp Meet6
~Excellent...and not forget those arrows!~EXIT

CHAIN
IF~Global("Bla_ImpHunt","AR2600",2)~ THEN Bla_Imp Bow0
~Sooo...you done shopping a bit?~
END
IF~PartyHasItem("bow06")~THEN REPLY~This is a magical shortbow and I can give it to you.~+ Bow1
IF~PartyHasItem("bow14")~THEN REPLY~Here is a bow of Tuigan origin that can be fired faster than a normal one.~+ Bow2
IF~PartyHasItem("bow15")~THEN REPLY~Tansheron's bow is fitting and it doesn't even need arrows as it spawns phantom arrows when you fire it.~+ Bow3
IF~PartyHasItem("bow18")~THEN REPLY~This shortbow is the rival of any of the larger bows by the magic embedded in its wood.~+ Bow4
IF~!PartyHasItem("bow14") !PartyHasItem("bow06") !PartyHasItem("bow15") !PartyHasItem("bow18")~THEN REPLY~I have not one of those right now but I know where to get it.~DO~SetGlobal("Bla_ImpHunt","AR2600",2)~+ Meet6

CHAIN
IF~~ THEN Bla_Imp Bow1
~Excellent...and what with arrows?~
END
IF~NumItemsPartyGT("arow04",9)~THEN REPLY~Here they are.~DO~TakePartyItemNum("arow04",10)~ + Bow11
IF~NumItemsPartyLT("arow04",10)~THEN REPLY~I'm afraid I have none.~ + Bow12

CHAIN
IF~~ THEN Bla_Imp Bow2
~Excellent...and what with arrows?~
END
IF~NumItemsPartyGT("arow04",9)~THEN REPLY~Here they are.~DO~TakePartyItemNum("arow04",10)~ + Bow21
IF~NumItemsPartyLT("arow04",10)~THEN REPLY~I'm afraid I have none.~ + Bow22

CHAIN
IF~~ THEN Bla_Imp Bow3
~Excellent...Nooo need to carry arrows. I take it.~DO~TakePartyItem("bow15")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow4
~Excellent...and what with arrows?~
END
IF~NumItemsPartyGT("arow04",9)~THEN REPLY~Here they are.~DO~TakePartyItemNum("arow04",10)~ + Bow41
IF~NumItemsPartyLT("arow04",10)~THEN REPLY~I'm afraid I have none.~ + Bow42

CHAIN
IF~~ THEN Bla_Imp Bow11
~Excellent...I take it.~DO~TakePartyItem("bow06")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow12
~Nevermind, enough wood and acid around to make my own. I take the bow.~DO~TakePartyItem("bow06")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow21
~Excellent...I take it.~DO~TakePartyItem("bow14")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow22
~Nevermind, enough wood and acid around to make my own. I take the bow.~DO~TakePartyItem("bow14")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow41
~Excellent...I take it.~DO~TakePartyItem("bow18")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT

CHAIN
IF~~ THEN Bla_Imp Bow42
~Nevermind, enough wood and acid around to make my own. I take the bow.~DO~TakePartyItem("bow18")GiveItem("c6Lens3",Player1) EscapeAreaDestroy(20) ~EXIT