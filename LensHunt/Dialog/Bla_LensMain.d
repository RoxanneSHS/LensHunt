BEGIN Bla_Imp
BEGIN Bla_Ogr1
BEGIN Bla_Ogr2
BEGIN Bla_Ogr3
BEGIN Bla_Ogr4

CHAIN
IF WEIGHT #-13 ~ Global("ElvenCityTree","GLOBAL",0)Global("Bla_Lenshunt","Global",1)~ THEN C6Elhan2 FalseLense
~You return. All has been relatively quiet here. I believe the drow were mostly satisfied with the destruction of our temple. They have made no further serious advancement. Yet.~ [ELHAN110]
END
IF ~PartyHasItem("Bla_Lat1")~ THEN GOTO 66
IF ~!PartyHasItem("c6lantho") !PartyHasItem("Bla_Lat1") ~ THEN GOTO 65

INTERJECT C6Elhan2 78 BLA_LensElhan
==C6Warsa1 IF~Global("Bla_Lenshunt","Global",1)~THEN~Wait!~
==C6Warsa2 IF~Global("Bla_Lenshunt","Global",1)~THEN~Wait!~
==C6Elhan2 IF~Global("Bla_Lenshunt","Global",1)~THEN~What is wrong, my sages, we cannot delay our journey to Suldanessalar much longer?~
==C6Warsa1 IF~Global("Bla_Lenshunt","Global",1)~THEN~The Lanthorn is not in focus, the picture is unclear.~
==C6Warsa2 IF~Global("Bla_Lenshunt","Global",1)~THEN~The lenses, it's the lenses. Three of them are missing.~
==C6Elhan2 IF~Global("Bla_Lenshunt","Global",1)~THEN~<CHARNAME>? You owe me some explanation. Now.~
END
++~This is how we found the Lanthorn in Bodhi's lair. We have not done any damage to the thing.~EXTERN C6Warsa1 Misslens1
++~I already noticed the missing lenses but I had no way of knowing on such an old artefact that this was a recent demage.~EXTERN C6Warsa1 Misslens1
++~Be careful, Elhan, I have nothing to do with the state your lamp is in.~EXTERN C6Warsa1 Misslens1

CHAIN
IF~~THEN C6Warsa1 Misslens1
~True!~
DO~SetGlobal("Bla_Lenshunt","Global",2)~
==C6Warsa2 ~True, <PRO_HESHE> had no way of knowing that those pieces are essential for the Lanthorn.~
==C6Warsa1 ~The hunt?~
==C6Warsa2 ~It must have happened during the hunt.~
END
++~True, yes, true!~EXTERN C6Elhan2 Misslens2
++~The hunt?~EXTERN C6Elhan2 Misslens2
++~Do these stooges ever say something meaningful?~EXTERN C6Elhan2 Misslens2

CHAIN
IF~~THEN C6Elhan2 Misslens2
~The hunt for the neck-biter. Bodhi. My soldiers noticed her on what must have been the night when she emerged from the Underdark. They didn't know which creature they were hunting but now in hindsight it becomes clear.~
=~They chased what they swore was a vampire and they chased her through the Tethir Forest first to the north and then west to the Small Teeth Pass where she left our territory so they couldn't follow.~
==C6Warsa2 ~The lenses must have fallen from the Lanthorn during the chase.~
==C6Warsa1 ~Nothing can break the magical lenses of the Lanthorn. They must be intact and can be put back into their places.~
END
++~Just to put that straight, you ask me to find three lenses lost in an area as large as the Tethir Forest, is it that?~ + Misslens3
++~You have a whole army to search every tree in that damned forest, good luck.~  + Misslens3

CHAIN
IF~~THEN C6Elhan2 Misslens3
~(Sigh) I cannot spare any of my elves that hold off the drow, <CHARNAME>. Just remember that you need that repaired Lanthorn just as badly as I need it. Like it or not, our only option to success is that you find those three lenses.~
=~We can only hope that they were really lost in that hunt and are still somewhere in the surrounding areas and were not removed by Bodhi and hidden who knows where...~
==C6Warsa1 ~Try the North Forest or the Small Teeth Pass.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==C6Warsa2 ~Search the Tehir Forest itself. Be quick.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==C6Elhan2~All speed to you, <CHARNAME>.~EXIT

CHAIN
IF WEIGHT #-14 ~ Global("Bla_Lenshunt","Global",4)~ THEN C6Elhan2 RightLense
~My sages already informed me that the Lanthorn is restored. Good work, <CHARNAME>.~
DO~SetGlobal("Bla_Lenshunt","Global",5)~
=~We must leave immediadely, but most of my elves must remain to hold the drow. We must not be struggling on two fronts when we face what is in the city.~
END
IF ~~ THEN GOTO 78
