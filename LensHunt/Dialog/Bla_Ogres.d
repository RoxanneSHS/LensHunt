CHAIN
IF~Global("Bla_Lenscrew","ar1700",2)~THEN Bla_ogr2 Warn1
~You, puny <PRO_RACE>, you turn and go back where came from.~
DO~SetGlobal("Bla_Lenscrew","ar1700",3)~
=~Pass is closed. Only Sothillis allows who can go.~
END
++~I have an urgent mission here and no Sythillis or Syphilis will stand in my way.~+ Warn2
++~And who is that Sothillis that he can block the way, I never heard of him?~+ Warn2
++~Here's 20 GP, now step aside. This is free Amn and we need to find an artefact here.~+ Warn2

CHAIN
IF~~THEN Bla_ogr2 Warn2
~You not go away? You look like one who not go away. All other go away...~
=~You come see Sothillis so that big ogre ruler decides how you die. Follow!~DO~MoveToPointNoInterrupt([2230.2460])~EXIT       

CHAIN
IF~Global("Bla_Lenscrew","ar1700",5)~THEN Bla_ogr1 Boss1
~Ha, silly <PRO_RACE> come to pay honour to new ruler of Small Teeth mountains, come to bow to Sothillis.~
DO~SetGlobal("Bla_Lenscrew","ar1700",6)~
==Bla_ogr4~Maybe they come with more shining jewels for Cyrvisnea? Big Sothillis' mate deserves same respect like boss.~
==Bla_ogr1~You have gift for my mate, <PRO_RACE>? Maybe can let you live for transgressing Sothillis Empire.~
END
++~That blue lense you wear on the chain around your neck, Cyrvisnea - nice as it is, but we need it.~+ Boss2
++~Your mate carries an item on her that belongs to the elves of Tethyr. We come to recapture it because it is needed for its true task urgently.~+ Boss2
++~I think you are nothing but a bandit, Sythillis. Your mate carries the stolen lens of the Lanthorn like a trophy.~ + Boss2

CHAIN
IF~~THEN Bla_ogr1 Boss2
~Sothillis not be new ruler of Small Teeth because he and Cyrvisnea be fools. You strong and determined. You want one jewel and you give others for that one. Price for blue lense be two rogue stones and we part in peace.~
==Bla_ogr4~But that jewel is mine, you gave as gift for beautiful mate!~
==Bla_ogr1~Hush, female. We not risk many men's lives for fight over shinies. You get better decoration in return if that <PRO_RACE> not foolish.~
END
IF~NumItemsPartyLT("Misc45",2)~THEN REPLY~I have no two rogue stones with me but I will get them. I will go to Amn and return with the payment.~ EXTERN Bla_ogr4 Boss3
IF~PartyHasItem("Misc42")~THEN REPLY~I make you a better offer. This diamond is beautiful and worth twice as much as rogue stones or blue lenses, see how it sparkles.~ EXTERN Bla_ogr4 Boss5
IF~PartyGoldGT(19999)~THEN REPLY~I make you a better offer. For 20000 GP you can buy your girl anything she can ask for. ~ EXTERN Bla_ogr4 Boss6
IF~NumItemsPartyGT("Misc45",1)~THEN REPLY~What a luck! Look here, I have two rogue stones with me.~EXTERN Bla_ogr4 Boss7
++~Bad for you, Emperor, this <PRO_RACE> is foolish and has no time for your games. Give me the lens and you may survive. Otherwise I take it from her corpse.~ EXTERN Bla_ogr4 Boss4

CHAIN
IF~~THEN Bla_ogr4 Boss3
~You lie, we not fools. You wet panties and flee. We not see you again and have empty promise. We take what shinies you have from your bodies.~DO~SetGlobal("Bla_OgreHostile","ar1700",1) SetGlobal("Bla_Lenscrew","ar1700",7) ActionOverride("Bla_ogr1",Enemy()) Enemy()~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss4
~This not way to talk to Cyrvisnea and Sothillis. You not just fool - you dead fool.~DO~SetGlobal("Bla_OgreHostile","ar1700",1) SetGlobal("Bla_Lenscrew","ar1700",7) ActionOverride("Bla_ogr1",Enemy()) Enemy()~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss5
~Diamonds are a girl's best friends.~
DO~SetGlobal("Bla_Lenscrew","ar1700",9)~
==Bla_ogr1~Cyrvisnea wise like my grandma was, she say same thing to grandpa.~
==Bla_ogr4~We have deal, <PRO_RACE>.~DO~TakePartyItem("Misc42") GiveItem("c6Lens2",Player1)~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss6
~Ha, Sothillis buy diamond for me with gold. Diamonds are a girl's best friends.~
DO~SetGlobal("Bla_Lenscrew","ar1700",9)~
==Bla_ogr1~Cyrvisnea wise like my grandma was, she say same thing to grandpa.~
==Bla_ogr4~We have deal, <PRO_RACE>.~DO~TakePartyGold(20000) GiveItem("c6Lens2",Player1)~EXIT

CHAIN
IF~~THEN Bla_ogr4 Boss7
~Huh? We made this too easy. Should have asked more.~
DO~SetGlobal("Bla_Lenscrew","ar1700",9)~
==Bla_ogr1~We are rulers of Small Teeth and stand to our word.~
==Bla_ogr4~We honorable ogres, you have deal, <PRO_RACE>.~DO~TakePartyItemNum("Misc45",2) GiveItem("c6Lens2",Player1)~EXIT