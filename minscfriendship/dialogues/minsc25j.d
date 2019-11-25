APPEND MINSC25J

/////////////////////////////////
//HEAD TOB TALK (TOB TALK #1)

IF WEIGHT #-1 ~Global("I#MinscHeadsTOB","GLOBAL",2)~ I#SHeads
SAY @0 /* Do you hear that, Boo? This place is full of whispers, just like the forests of Rashemen! */
= @1 /* This place must be full of powerful spirits, <CHARNAME>! Do you see Boo's fur stand on end? He senses them. */
++ @2 /* We're here to speak with those spirits. Hopefully they'll have some wisdom for us regarding whatever is coming. */ + I#SHead11
++ @3 /* That's something I can easily figure out on my own, Minsc. You don't have to point out the obvious. */ + I#SHead11
++ @4 /* Be quiet, Minsc. We can talk after we've communed with the spirits. */ + I#SHead12
END

IF ~~ I#SHead11
SAY @5 /* Boo says that spirits have much worth listening to. But you might not understand them. They often speak in funny ways. */
= @6 /* The witches of Rashemen know well how to speak to them. But we do not have one with us. */
+ ~Global("I#MinscWitchActive","GLOBAL",2)~ + @7 /* Perhaps, but don't I have a mind as keen as that of a Rashemi witch? */ + I#SHead21
++ @8 /* I can't imagine a few ancient spirits being that hard to talk to. */ + I#SHead22
++ @9 /* Regardless, I'll try my best to comprehend whatever they have to say. */ + I#SHead22
++ @10 /* I'll have to try and commune with them regardless. It's the only clue we have regarding the future. */ + I#SHead22
++ @11 /* We're never going to reach that point if you keep talking and talking. */ + I#SHead12
END

IF ~~ I#SHead21
SAY @12 /* Oh, yes. Surely you do! After all, that is why Minsc and Boo have devoted our sword-arms to your safety! Isn't that right, Boo? */
IF ~~ THEN GOTO I#SHead23 END

IF ~~ I#SHead22
SAY @13 /* Boo will keep his ears raised and listen carefully to every words the spirits say, <CHARNAME>! And Minsc will make sure no evil will interrupt you! Do you hear me, evil-doers? MINSC'S SWORD IS READY FOR YOU! */
IF ~~ THEN GOTO I#SHead23 END

IF ~~ I#SHead23
SAY @14 /* Minsc and Boo are at your back, <CHARNAME>! Let us know if you need us, any time! */
++ @15 /* Thanks, Minsc. It's good to see you haven't lost any of your zeal even after everything we've been through. */ + I#SHead31
++ @16 /* Yes, yes, now please quiet down. I won't be able to hear anything with your shouting. */ + I#SHead12
END

IF ~~ I#SHead31
SAY @17 /* Minsc and Boo stand ready as always, right Boo? *squeak* */
IF ~~ THEN DO ~SetGlobal("I#MinscHeadsTOB","GLOBAL",3)~ EXIT END  

IF ~~ I#SHead12
SAY @18 /* Yes! We shall see what wisdom these spirits have for us heroes! */
IF ~~ THEN DO ~SetGlobal("I#MinscHeadsTOB","GLOBAL",3)~ EXIT END  


///////////////////////////////
//SARADUSH TAVERN (TOB TALK #2)

IF WEIGHT #-1 ~Global("I#MinscTavernTOB","GLOBAL",1)~ I#STavern
SAY @19 /* What is this? These people drink and make merry while the city is under attack? This is not right! They should take up arms and fight back! */
++ @20 /* None of these people are warriors, Minsc. You can't expect them to go out and fight. */ + I#STav11
++ @21 /* I suppose they've resigned themselves to their fates, and are just trying to find what enjoyment they can in their final days. */ + I#STav12
++ @22 /* You may be right, but these people are too cowardly to even fight for their lives. They would rather hide in whatever comforts they can find. */ + I#STav13
++ @23 /* Calm down, Minsc. We don't need to hear your shouting right now. */ + I#STav14
END

IF ~~ I#STav11
SAY @24 /* Minsc, too, was once unskilled in the ways of battle. But he learned, and so can these people! Wouldn't you agree, Boo? */
IF ~~ THEN GOTO I#STav15 END

IF ~~ I#STav12
SAY @25 /* No, no no, it is not right to simply give up! What is there to enjoy in life if it is soon to end? Minsc thinks these people are being very silly. */
IF ~~ THEN GOTO I#STav15 END

IF ~~ I#STav13
SAY @26 /* In times such as these, brave men and women must lead by example, <CHARNAME>! Those like us! If they are inspired by our valor, then surely they too will raise their weapons and fight against evil as well! */
IF ~~ THEN GOTO I#STav15 END

IF ~~ I#STav15
SAY @27 /* There is still much they can do! Remember the day we met, in that little town of Nashkel? You and Minsc, we only knew the simplest methods of butt-kicking, but we grew strong with battle after battle! How will these people become strong warriors through drink? It makes no sense! */
++ @28 /* There are many different forms of strength, Minsc. We are adventurers, and for us, might is what matters. These people's talents lie elsewhere. They may have the desire to help, but I doubt they know enough to even hold a weapon. */ + I#STav21
++ @29 /* People choose to remain weak, Minsc. You could give them every opportunity for them to control their fates, but they'll choose to hide from the inevitable, regardless of how futile it is. */ + I#STav22
++ @30 /* Maybe you're right. I personally don't see the point in trying to influence others for their sake. Just leave them to the consequences of their inaction. */ + I#STav23
++ @31 /* Do you really think I care? Just be quiet. */ + I#STav14
END

IF ~~ I#STav21
SAY @32 /* Really? Hmm... Minsc finds it all very difficult to understand, but... */
= @33 /* Well, Boo agrees that talents are useful no matter what they may be. Maybe when evil has been given its share of righteous butt-kicking, there will be a time for the talents of these men to be useful. */
IF~~THEN GOTO I#STav24 END 

IF ~~ I#STav22
SAY @34 /* But... that is not right! Do you think, Boo... no, such a thing cannot be true! */
= @35 /* <CHARNAME>, we must do something! We must show these people that heroes will not allow doom to take the innocent! Then, when evil has been given its rightful spanking, these people will find hope! */
IF~~THEN GOTO I#STav24 END 

IF ~~ I#STav23
SAY @36 /* Do you think we should? Eh? What do you think, Boo? */
= @37 /* Well... maybe it is right to give them the freedom to decide. But we can still serve as examples of heroism! If they can become inspired, then surely they can do great things as well! */
IF~~THEN GOTO I#STav24 END 

IF ~~ I#STav24
SAY @38 /* Boo says he would be happy to see this place be safe and well again. I agree with him. */
++ @39 /* I understand. You always think about other people's needs first. After what we've seen happen, I can't blame you for being concerned. We can save this city, I know it. */ + I#STav31
++ @40 /* We do our best, Minsc. But we're mortals with our limits, and sometimes things are truly beyond our ability to control them. */ + I#STav32
++ @41 /* It's not our responsibility to take care of every damn person in the Realms, Minsc. */ + I#STav32
++ @42 /* Yes, yes, you've made your point. Can we finally move on now? */ + I#STav14
END

IF ~~ I#STav31
SAY @43 /* That is what heroes do! Isn't that right, Boo? Yes, we will save this city of Saradush like we have saved so many before! */
= @44 /* Ah, it is easy being a hero with a leader like you, <CHARNAME>! That is what Minsc and Boo both believe! */
IF ~~ THEN DO ~~ EXIT END

IF ~~ I#STav32
SAY @45 /* Minsc thinks that heroes should press on no matter what. Even if we have doubts, we must save this city of Saradush and its merry people! */
= @46 /* Despair not, <CHARNAME>! Minsc and Boo will use every bit of strength we have to defeat the evil Bhaalspawn that would threaten the innocent! TREMBLE, EVIL! MINSC AND BOO COME FOR YOU! */
++ @47 /* Minsc, you're scaring the people... */ + I#STav41
++ @48 /* Alright, alright. Now be quiet. */ + I#STav14
END

IF ~~ I#STav41
SAY @49 /* There is nothing to be scared of! After all, they should know that we'll fight in their names! */
IF ~~ THEN DO ~SetGlobal("I#MinscTavernTOB","GLOBAL",2)~ EXIT END

IF ~~ I#STav14
SAY @50 /* Yes, let us continue, and proceed with the saving of innocents from the clutches of evil! */
IF ~~ THEN DO ~SetGlobal("I#MinscTavernTOB","GLOBAL",2)~ EXIT END


///////////////////////////////
//MIR FOREST TALK (TOB TALK #3)

IF WEIGHT #-1 ~Global("I#MinscMirTOB","GLOBAL",1)~ I#MMir
SAY @51 /* Blech! This place stinks of the putrid stench of evil, <CHARNAME>! We are looking at the rotting teeth of the foul mouth of corruption! */
++ @52 /* There is definitely something ominous about these woods. */ + I#MMir11
++ @53 /* Is the great berserker Minsc afraid of some nasty trees? */ + I#MMir12
++ @54 /* Less talking, more walking, Minsc. */ + I#MMir13
END

IF ~~ I#MMir11
SAY @55 /* This is a stench of badness that Boo smells. Bad to the bone... oh! Boo thinks that means there must be skeletons around! */
++ @56 /* There's bound to be something bad lurking in the darkness. */ + I#MMir21
++ @57 /* "Bad to the bone"? That's just a phrase. */ + I#MMir22
++ @58 /* As if it's anything new for us to encounter creatures of evil wherever we go. Let's just get this over with. */ + I#MMir13
END

IF ~~ I#MMir12
SAY @59 /* Minsc fears nothing! Neither does Boo. We are prepared for evil no matter what nasty form it may take! Isn't that right, Boo? */
++ @60 /* Good to know. We'll need to be prepared for whatever is waiting for us. */ + I#MMir21
++ @61 /* In that case, you should keep your eyes and ears alert, and your mouth shut. */ + I#MMir13
END

IF ~~ I#MMir21
SAY @62 /* Many evil things hide in the dark. If only Minsc knew which blade would be best to carve the black heart of what is waiting for us next! */
++ @63 /* Well, I'm sure whichever you choose will be enough for it, Minsc. */ + I#MMir31
++ @64 /* That's how life is, Minsc. We can't ever be sure what's hiding behind the next corner. */ + I#MMir32
++ @65 /* We shouldn't waste our time on talking. Come on. */ + I#MMir13
++ @66 /* How about you figure that out on your own... in silence? */ + I#MMir13
END

IF ~~ I#MMir22
SAY @67 /* No, it is Boo's keen scent! Boo can smell bones from a mile away! Also trout... wait, Boo... no, he means, this place is fishy, <CHARNAME>, and it is not a tasty fish. Minsc is wondering which sword he should prepare... */
++ @68 /* I'm sure whatever stinking fish this place has to hide are no match for us, Minsc. */ + I#MMir31
++ @69 /* You can't ever be sure what's waiting for us behind the next corner. We should always try to expect the unexpected. */ + I#MMir32
++ @65 /* We shouldn't waste our time on talking. Come on. */ + I#MMir13
++ @66 /* How about you figure that out on your own... in silence? */ + I#MMir13
END

IF ~~ I#MMir31
SAY @70 /* If <CHARNAME> says so, then we shall believe in <PRO_HIMHER>! Boo thinks the same. */
= @71 /* Come, friend! Let us sniff out the stinking butts of evil that would hide in these just-as-stinking moors! */
IF ~~ THEN DO ~SetGlobal("I#MinscMirTOB","GLOBAL",2)~ EXIT END

IF ~~ I#MMir32
SAY @72 /* Yes, you are right, my friend! Evil is sneaky and cunning, and will prepare many nasty surprises. But we will defeat them, no matter their tricks! */
= @71 /* Come, friend! Let us sniff out the stinking butts of evil that would hide in these just-as-stinking moors! */
IF ~~ THEN DO ~SetGlobal("I#MinscMirTOB","GLOBAL",2)~ EXIT END

IF ~~ I#MMir13
SAY @73 /* Boo always says that you should look before you leap. No? Well, then let us get to the leaping! */
IF ~~ THEN DO ~SetGlobal("I#MinscMirTOB","GLOBAL",2)~ EXIT END


//////////////////////////////////////////////////////////////////
//SARADUSH DOWN - IF TAVERN TALK HAPPENED; upon rest (TOB TALK #4)

IF WEIGHT #-1 ~Global("I#MinscSaraSackedTOB","GLOBAL",2)~ I#MSaradush
SAY @74 /* ...Yes, Boo. I know it is hard. */
++ @75 /* What's wrong, Minsc? */ + I#MSara11
++ @76 /* Shh! I'm trying to get some sleep. */ + I#MSara12
END

IF ~~ I#MSara11
SAY @77 /* Boo blames himself for what happened to all those poor people in Saradush. He has been like this for some time now. I am growing worried for him! */
++ @78 /* Don't despair, Boo. You and Minsc are still great heroes. We can't stop every bad thing from happening, but we try. That's all any of us can do. */ + I#MSara21
++ @79 /* I can tell you're also feeling guilty, Minsc. I'm not blind. You and I both know none of us can save every living being in the world. */ + I#MSara21
++ @80 /* I understand. I feel as if I've failed them, too. It's the worst feeling I've felt since Irenicus tore out my soul back in that madhouse. But the past is what it is... none of us can change it, much as we wish to. */ + I#MSara22
++ @81 /* The strong survive, and the weak fall. Those fools only had themselves to blame for their worthlessness. */ + I#MSara23
++ @82 /* Not my concern. I'm going back to sleep. */ + I#MSara12
END

IF ~~ I#MSara21
SAY @83 /* Do you hear that, Boo? Our wise leader <CHARNAME> is trying to console us! No, we cannot save everyone in this world, though we can try! */
IF ~~ THEN GOTO I#MSara27 END

IF ~~ I#MSara22
SAY @84 /* No, you should not blame yourself, my friend! Minsc knows you did everything you could! You... */
= @85 /* Wait... Minsc thinks he knows what <CHARNAME> is doing. You are playing with Minsc's thoughts again, aren't you? Just like when your biting words infuriated Minsc into breaking the bars of his prison through righteous fury! */
++ @86 /* Perhaps. I have the best intentions, though. I don't want you to blame yourself for something you had no chance of affecting. */ + I#MSara24
++ @87 /* Not this time, sadly. I truly feel as if I've failed. */ + I#MSara25
END

IF ~~ I#MSara23
SAY @88 /* That is not right, <CHARNAME>! They were little men against giants bigger than several Minscs stacked on top of each other! They never stood a chance! */
++ @89 /* That's no excuse for lacking the strength to control your own life. */ + I#MSara26
++ @90 /* You have a point... I suppose I'm just trying to justify our inability to do anything. */ + I#MSara25
END

IF ~~ I#MSara24
SAY @91 /* Oh, you are so very kind, <CHARNAME>! Minsc is grateful, as is Boo. And... very sorry for seeing through your trick. */
IF ~~ THEN GOTO I#MSara27 END

IF ~~ I#MSara25
SAY @92 /* Oh no, <CHARNAME> is despairing alongside us, Boo! Is it truly so? Could we have done nothing more? */
IF ~~ THEN GOTO I#MSara27 END

IF ~~ I#MSara26
SAY @93 /* Minsc sees some logic in your words... but we, we... cannot accept such thoughts! */
IF ~~ THEN GOTO I#MSara27 END

IF ~~ I#MSara27
SAY @94 /* This is all very hard to fit into Boo's little head, <CHARNAME>. Minsc things it is just as hard for him. But... */
++ @95 /* But... what? */ + I#MSara31
++ @96 /* That's enough. If we don't get enough sleep we'll be the next ones to die tomorrow. */ + I#MSara12
END

IF ~~ I#MSara31
SAY @97 /* Minsc just had a thought. The souls of the dead before will surely guide these people! Wise spirits, like Dynaheir! Do you think it could happen, <CHARNAME>? Should I tell Boo? */
++ @98 /* After everything we've seen? It's not impossble. Dynaheir could very well be guiding Saradush's fallen to the next realm, just as she guided you in life. */ + I#MSara41
++ @99 /* You're talking more nonsense than usual, Minsc. The dead will go where they deserve to, including Dynaheir. Living in denial won't help anyone. Just accept reality. */ + I#MSara42
END

IF ~~ I#MSara41
SAY @100 /* You really think so, <CHARNAME>? Then is must be true! I will tell Boo at once! */
= @101 /* Thank you, <CHARNAME>! */
IF ~~ THEN DO ~SetGlobal("I#MinscSaraSackedTOB","GLOBAL",3) RestParty()~ EXIT END

IF ~~ I#MSara42
SAY @102 /* Minsc never speaks nonsense! I speak my mind, always! */
= @103 /* Don't listen to <CHARNAME>, Boo. <PRO_HESHE> has never seen Rashemen. We must trust that Dynaheir will guide the fallen. */
IF ~~ THEN DO ~SetGlobal("I#MinscSaraSackedTOB","GLOBAL",3) RestParty()~ EXIT END

IF ~~ I#MSara12
SAY @104 /* Sometimes, <CHARNAME>, Minsc thinks you could take a few more steps towards being a leader worthy of inspiration. */
= @105 /* Come, Boo! <CHARNAME> is turning prickly like the hedgehog in spring. We will talk where <PRO_HESHE> cannot listen. */
IF ~~ THEN DO ~SetGlobal("I#MinscSaraSackedTOB","GLOBAL",3) RestParty()~ EXIT END 

END