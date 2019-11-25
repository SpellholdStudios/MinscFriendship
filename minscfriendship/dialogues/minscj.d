APPEND MINSCJ

/////////////////////
//CITY TALK (TALK #1)

IF WEIGHT #-1 ~Global("I#MinscTalk","GLOBAL",2)~ I#MinscCityDialogue
SAY @0 /* Eh... I do not like these big cities, <CHARNAME>. Nothing is ever simple! Even a good fight requires words before swords! It is... what is that word, Boo? 'De-plore-able'? Minsc knows not what it means, but he agrees wholeheartedly! */
++ @1 /* I'll agree with that. I've never liked the city myself - too much hustle and bustle and never enough action. */+ I#MCity_1
++ @2 /* Cities aren't so bad, once you get used to them. */+ I#MCity_2
++ @3 /* 'Boo' says a lot of things. */+ I#MCity_3
++ @4 /* Fighting WITH words is often more fun than fighting without them, Minsc. */+ I#MCity_4
END

IF ~~ I#MCity_1
SAY @5 /* Yes, exactly! And everyone here wears such worried looks, as though the world would fall around their heads! Which is very silly. */
++ @6 /* Well... maybe not in the literal sense, but this is a land ruled by money and business, Minsc. Everything could fall apart in an instant should anything go wrong. */+ I#MCity_11
++ @7 /* These are just stupid city folk, Minsc. I doubt they could even picture a real disaster. */+ I#MCity_11
++ @8 /* Does anybody really care about what the city people think? */+ I#MCity_11
END

IF ~~ I#MCity_2
SAY @9 /* Hmm, maybe. Minsc believes however that cities are bad no matter how much time you spend in them, and Boo agrees as well. And everyone here wears such worried looks, as though the world would fall around their heads! Which is very silly. */
++ @6 /* Well... maybe not in the literal sense, but this is a land ruled by money and business, Minsc. Everything could fall apart in an instant should anything go wrong. */+ I#MCity_11
++ @7 /* These are just stupid city folk, Minsc. I doubt they could even picture a real disaster. */+ I#MCity_11
++ @8 /* Does anybody really care about what the city people think? */+ I#MCity_11
END

IF ~~ I#MCity_3
SAY @10 /* Boo is very wise, and wise hamsters always have a lot to say! */
= @11 /* Ah, everyone here wears such worried looks, as though the world would fall around their heads! Which is very silly. */
++ @6 /* Well... maybe not in the literal sense, but this is a land ruled by money and business, Minsc. Everything could fall apart in an instant should anything go wrong. */+ I#MCity_11
++ @7 /* These are just stupid city folk, Minsc. I doubt they could even picture a real disaster. */+ I#MCity_11
++ @8 /* Does anybody really care about what the city people think? */+ I#MCity_11
END

IF ~~ I#MCity_4
SAY @12 /* Minsc disagrees. Fighting should be simple, done with swords and fists and hearts filled with righteous fury! Not with venomous and hateful words. Words just makes things so much more complicated when you could just speak with a sword placed in the black hearts of evildoers! */
= @11 /* Ah, everyone here wears such worried looks, as though the world would fall around their heads! Which is very silly. */
++ @6 /* Well... maybe not in the literal sense, but this is a land ruled by money and business, Minsc. Everything could fall apart in an instant should anything go wrong. */+ I#MCity_11
++ @7 /* These are just stupid city folk, Minsc. I doubt they could even picture a real disaster. */+ I#MCity_11
++ @8 /* Does anybody really care about what the city people think? */+ I#MCity_11
END

IF ~~ I#MCity_11
SAY @13 /* These cities are very complicated. It is much simpler with you, <CHARNAME> - you point, and I punch! None of this business nonsense. */
= @14 /* The people do not look very happy either. I see nothing but troubled faces all the time! At least we are happy, right Boo? *squeak!* */ 
= @15 /* The cities were smaller where Minsc comes from. Everyone knows each other and travellers feel at home as soon as they step through the gates! Our way is better, I think. */
++ @16 /* You come from a vastly different culture, Minsc. It's no surprise the customs in these communities feels so different. */ + I#MCity_21
++ @17 /* Heh, I'd choose Rashemen over Amn or Baldur's Gate if that were truly the case. But I'm afraid cultures like these can't simply change overnight. */ + I#MCity_21
++ @18 /* That's enough, Minsc. You can reflect on your views of foreign cultures some other time. */ + I#MCity_22
END

IF ~~ I#MCity_21
SAY @19 /* Rashemen is a much, much more different place, and Boo knows as well, though he has not seen it. *squeak!* But it matters not where we stand as long as there are evil butts to kick, and none do so as well as Minsc and Boo! */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",3)~ EXIT END

IF ~~ I#MCity_22
SAY @20 /* Yes, there are always evil butts to kick, whether it's here or there! Onwards, Boo and friends! */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",3)~ EXIT END


////////////////////
//DYNAHEIR (TALK #2)

IF WEIGHT #-1 ~Global("I#MinscTalk","GLOBAL",5)~ I#MDynaheir
SAY @21 /* There is something that weighs heavy on Minsc's mind, <CHARNAME>, and Boo says you are very good at treating such things. I do not often talk about the dead. I find it easier to swing a sword than thinking about these things, but I cannot stop thinking that... things weren't right. With Dynaheir. */
++ @22 /* What do you mean, Minsc? */ + I#MD1
++ @23 /* I... well, I understand it's hard to talk about losing someone important to you. */ + I#MD1
++ @24 /* Thinking about the dead is foolish. Dynaheir's gone and you can't change that. Why worry instead of moving on? */ + I#MD1
++ @25 /* I don't have time for this, Minsc. Perhaps another time. */ DO ~SetGlobal("I#MinscShutUp","GLOBAL",1)~ EXIT
END

IF ~~ I#MD1
SAY @26 /* Dynaheir was a great witch, <CHARNAME>, and in Rashemen, all great witches are given the last rites... Dynaheir was not given the same, and so her spirit is doomed to wander - lost between here and wherever 'there' is... */
= @27 /* We are not in Rashemen, so she cannot be led to the glorious afterlife by the spirits of the great ancestors. I am unsure of what should happen, for warriors are not trained in such things... */
= @28 /* We're afraid - both Minsc and Boo are - that our witch may never get the deserved rest. The Slumber. */
++ @29 /* Slumber? */ + I#MD21
++ @30 /* It's completely understandable to be worried, but I'm sure Dynaheir's spirit will find no trouble on the way to Rashemen. She was a great witch after all, as you said. */ + I#MD22
++ @31 /* Keep your lamentations to yourself, Minsc. I don't need to share in your burdens. */ DO ~SetGlobal("I#MinscShutUp","GLOBAL",1)~ EXIT
END

IF ~~ I#MD21
SAY @32 /* Oh, that is the name we heard for such a thing. For... what comes after the end. */
++ @30 /* It's completely understandable to be worried, but I'm sure Dynaheir's spirit will find no trouble on the way to Rashemen. She was a great witch after all, as you said. */ + I#MD22
++ @31 /* Keep your lamentations to yourself, Minsc. I don't need to share in your burdens. */ DO ~SetGlobal("I#MinscShutUp","GLOBAL",1)~ EXIT
END

IF ~~ I#MD22
SAY @33 /* Yes, she was! But... hmm, what do you think, Boo? Do you think she has found her way back home, my furry friend? */
= @34 /* *squeak* */
= @35 /* Boo says that he would like to believe. */
++ @36 /* Then believe. That is what having faith means, after all. */ + I#MD31
++ @37 /* You knew Dynaheir better than anyone, Minsc. Do you think even the tallest mountain would've stopped that worldly and powerful woman? */ + I#MD31
++ @38 /* Nothing will change regardless of what you believe, Minsc. It's a waste of time to bother yourself over something that has already happened. */ + I#MD32
++ @39 /* Ugh, just stow it already, Minsc. We have more serious things to think about right now. */ DO ~SetGlobal("I#MinscShutUp","GLOBAL",1)~ EXIT
END

IF ~~ I#MD31
SAY @40 /* You are right... of course you are! Dynaheir was more than just a woman! She was Minsc's witch! A mighty wychlaran of Rashemen! No matter the distance, she will make it home, Boo. There can be no doubt about it! */
= @41 /* Thank you, <CHARNAME>! You have cleared our minds of any doubts. Say 'thank you', Boo! */
= @42 /* *squeak!* */
++ @43 /* Always at your service, Boo. */ + I#MD41
++ @44 /* We all have moments of weakness, Minsc. */ + I#MD42
++ @45 /* Whatever. If we're done with this nonsense, we should move on. */ DO ~SetGlobal("I#MinscShutUp","GLOBAL",1)~ EXIT
END

IF ~~ I#MD32
SAY @46 /* Do not speak so lightly of Dynaheir's death, <CHARNAME>! She was dear to Boo's heart, and to mine too! She was elegant, and a little frail perhaps, but she was truly strong and kind and could kick butts as well as anyone else! */
= @47 /* You may not think so, but she deserves as much respect as the mighty heroes of old. Don't you agree, Boo? *squeak!* */
++ @48 /* I... I'm sorry, Minsc. I didn't mean it that way. */ + I#MD43
++ @49 /* You're being stupid, Minsc. She's dead, and the sooner you accept that, the better. */ + I#MD44
++ @50 /* Just stow it, Minsc. I don't want to hear any more words out of you. */  DO ~SetGlobal("I#MinscShutUp","GLOBAL",1)~ EXIT
END

IF ~~ I#MD41
SAY @51 /* As are Minsc and Boo to you, <CHARNAME>! Just say the word, and we will be at your side! Together we shall help you in whatever you need, whether it be righteous butt-kicking or quiet listening! */
= @52 /* Ha, look at the way Boo's ears twitch! Even now he is ready to be your patient listener. Is he not a true friend? */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",6)~ EXIT END

IF ~~ I#MD42
SAY @53 /* Ahh, Boo is happy to have such an understanding leader. But if it is you that needs support, just call upon Minsc and Boo! Together we shall help you in whatever you need, whether it be righteous butt-kicking or quiet listening! */
= @52 /* Ha, look at the way Boo's ears twitch! Even now he is ready to be your patient listener. Is he not a true friend? */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",6)~ EXIT END

IF ~~ I#MD43
SAY @54 /* Do you hear that, Boo? <CHARNAME> says sorry. That is good. True heroes should not get less than the respect they deserve. */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",6)~ EXIT END

IF ~~ I#MD44
SAY @55 /* RAAAGH! 'Ware your words, <CHARNAME>! They hurt both Minsc and Boo greatly! Come, my furry friend! I think <CHARNAME> is done with our company. */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",6) SetGlobal("I#MinscFriendshipActive","GLOBAL",3) ReputationInc(-1) LeaveParty() EscapeArea()~ EXIT END


/////////////////////////
//DAJEMMA TALK (TALK #3)

IF WEIGHT #-1 ~Global("I#MinscTalk","GLOBAL",8)~ I#Dajemma
SAY @56 /* Candlekeep is very far from here, <CHARNAME>. Boo is worried that you may be missing your home! */
++ @57 /* Not particularly. Certainly not as much as you miss Rashemen, Minsc. I was betrayed, after all. The people I grew up with were about to give me up for execution. */ + I#Daj11
++ @58 /* Sometimes I do. I think of Winthrop's library, and the stone library... back then I would talk to Gorion and play hide and seek with Imoen. She loved hiding around the castle. */ + I#Daj12
++ @59 /* That's none of Boo's business, nor is it yours. */ + I#Daj13
END

IF ~~ I#Daj11
SAY @60 /* There can be no worse thing than to be forsaken by your closest friends. But, <CHARNAME>, take comfort that Minsc and Boo will never do the same as long as we breathe! */
IF ~~ GOTO I#Daj15 END

IF ~~ I#Daj12
SAY @61 /* Boo is very fond of hide and seek. Of course, he is so small that it is impossible to find him at times, when he does not want to be found. Imoen is small too. Do you think she will play when we find her again? */
++ @62 /* I'm sure she would, if circumstances allowed it. Sadly, our lives are occupied with fighting and survival. We're lucky to even have a proper meal and a tankard of ale in our hands. */ + I#Daj14
++ @63 /* Are you really wasting my time by asking such trivial questions? Just shut up. */ + I#Daj13
END

IF ~~ I#Daj14
SAY @64 /* Yes, we have many foes to defeat, but... Boo would like to play with Imoen when she is safe in our company. And Minsc would join them. Wouldn't you, <CHARNAME>? */
IF ~~ GOTO I#Daj15 END

IF ~~ I#Daj15
SAY @65 /* Oh, there is one more thing... Boo says that you, too, are on your dajemma. Like the youths of Rashemen, you are far from home on a journey to find yourself, just as Minsc travelled a long way to the Sword Coast to find himself. */
++ @66 /* And... have you found yourself yet, Minsc? */ + I#Daj21
++ @67 /* Judging from your current position and the fate of Dynaheir, I'd say you've failed. */ + I#Daj22
END

IF ~~ I#Daj21
SAY @68 /* Eh, well... Minsc has found you first. Minsc may not know himself yet, but if anyone can lead him to his purpose, he is certain that person is you, <CHARNAME>. Boo thinks so, at least. */
IF ~~ GOTO I#Daj23 END

IF ~~ I#Daj22
SAY @69 /* Do not say such a thing, <CHARNAME>! Our shame is endless! Boo, do not listen to <PRO_HISHER> words. I am certain that <PRO_HESHE> did not mean them. */
IF ~~ GOTO I#Daj23 END

IF ~~ I#Daj23
SAY @70 /* Boo and I spoke of you during a night, <CHARNAME>. We think you have changed much since we met you. Minsc wonders where you will be at the end of your journey. Will you have travelled as far as Minsc has from Rashemen? */
++ @71 /* We'll see, Minsc. We'll see. */ + I#Daj31
++ @72 /* Hopefully, a better place. Somewhere where I can escape the dark fate bestowed upon me since this journey began. */ + I#Daj32
++ @73 /* Stop talking about Candlekeep, Minsc. That place holds no meaning for me after I left it behind. */ + I#Daj32
++ @74 /* I tire of this conversation. Leave the past alone for now, Minsc. */ + I#Daj13
END

IF ~~ I#Daj31
SAY @75 /* We will see together, hopefully! Look at all the great deeds we have done together, <CHARNAME>. There will surely be more in our futures! */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",9)~ EXIT END

IF ~~ I#Daj32
SAY @76 /* Boo is saddened that your journey has given you such grief, <CHARNAME>. Minsc agrees. But the future will bring brighter gifts to you, which you shall deserve! Minsc knows it. */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",9)~ EXIT END

IF ~~ I#Daj13
SAY @77 /* Ehh... Boo does not care for your meanness at all, <CHARNAME>. */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",9) SetGlobal("I#MinscFriendshipActive","GLOBAL",3)~ EXIT END


/////////////////////
//GODS TALK (TALK #4)

IF WEIGHT #-1 ~Global("I#MinscTalk","GLOBAL",11)~ I#Gods
SAY @78 /* Boo thinks the people of this land only care for the big gods. They forget the smaller ones, even their names! That is not good at all! */
++ @79 /* I'm not quite sure what you mean by that, Minsc. */ + I#GDS11
++ @80 /* Not right now, Minsc. */ + I#GDS12
END

IF ~~ I#GDS11
SAY @81 /* Minsc thinks of Rashemen, and remembers the gods both big and small. Many even walked among us in spirit form, as noble beasts or men. Even the wood and stone was full of life, guardians of ancient spirits dwelling in barrows! Here, Minsc hears and sees nothing of the sort. Perhaps it is because no one ever listens. */
++ @82 /* Clearly Rashemen is more unlike the southern lands than I could possibly imagine. */ + I#GDS21
++ @83 /* Yours is a land of witches and shamans, accustomed to communing with spirits and fey. Such folk are few and far between in these places. */ + I#GDS22
++ @84 /* I'm a little creeped out by the thought of my every move being observed by invisible ghosts. I prefer the way things are here. */ + I#GDS23
++ @85 /* That's enough, Minsc. Spirits are of no use to us right now, so there's no use sparing them any thought. */ + I#GDS12
END

IF ~~ I#GDS21
SAY @86 /* Yes, very different. It is almost like stepping into another world! */
IF ~~ GOTO I#GDS24 END

IF ~~ I#GDS22
SAY @87 /* You speak wisdom as the wychlaran do, <CHARNAME>! Yes, Minsc has seen hardly any wise men capable of speaking the tongue of spirits! But Minsc thinks that it would be a good idea to listen, if you knew how. Spirits know much, whether it is of magic or butt-kicking. */
IF ~~ GOTO I#GDS24 END

IF ~~ I#GDS23
SAY @88 /* No, my friend, it is a wonderful feeling having the presence of spirits surrounding you. Their words and wisdom can guide you, and their eyes watch for dangers that could threaten you. Every Rashemi learns to respect the land, and those that are born from it. */
IF ~~ GOTO I#GDS24 END

IF ~~ I#GDS24
SAY @89 /* Hmm? Oh yes, Boo, I agree. We think you should come to Rashemen once this journey is over. It would be easier for you to see our land, our spirits and wychlaran, than listen to us speak. */
= @90 /* Your ideas are always perfect, my little friend! Yes, <CHARNAME> would surely be welcome in our homeland, even if we no longer are. */
++ @91 /* I wouldn't mind that, assuming our all ends well. */ + I#GDS31
++ @92 /* You would go back to Rashemen after what happened to Dynaheir? */ + I#GDS32
++ @93 /* That's unlikely. Look at what my life amounts to, Minsc. I will never have any peace, nor time to see new lands. */ + I#GDS33
++ @94 /* Then I will do that one day, so you may stop talking right now. */ + I#GDS12
END

IF ~~ I#GDS31
SAY @95 /* <CHARNAME> agrees! Isn't that wonderful, Boo? Well, Minsc cannot possibly return home with his honor stained with failure, but I will tell you of the places to see! You will know our beautiful land once you see it with your own eyes, and return to tell Boo all about it! */
IF ~~ DO ~SetGlobal("I#MinscTalk","GLOBAL",12)~ EXIT END

IF ~~ I#GDS33
SAY @96 /* Boo thinks that you should be optimistic. Look forward, <CHARNAME>, and your future will be bright as the sun! One day you will see Rashemen, Minsc promises! */
IF ~~ DO ~SetGlobal("I#MinscTalk","GLOBAL",12)~ EXIT END

IF ~~ I#GDS32
SAY @97 /* We... we cannot. Our honor is stained with the blood of Dynaheir, and our failure. The sworn brothers of the Ice Dragon Berserker Lodge would never accept Minsc as one of them again! */
++ @98 /* Is there nothing that could redeem you in the eyes of your brothers? */ + I#GDS41
++ @99 /* I suppose that means your dajemma amounted to nothing, then. */ + I#GDS41
++ @100 /* Well, that's none of my concern regardless. */ + I#GDS12
END

IF ~~ I#GDS41
SAY @101 /* No, Minsc will never be welcomed with open arms again. Unless... */
= @102 /* What do you think, Boo? Will there be a chance? Minsc would like nothing more than to run free in the fields of home once more, but... */
= @103 /* Yes... yes, Boo! It may be enough! <CHARNAME>! We shall continue to fight at your side, and as our foes grow in size and number, surely there will be a battle worthy of song that will reach as far as my home! */
= @104 /* When the tales of Minsc's heroism reaches my brothers, maybe... maybe then we shall be forgiven! Until then, though, Minsc can only dream. */
IF ~~ DO ~SetGlobal("I#MinscTalk","GLOBAL",12)~ EXIT END

IF ~~ I#GDS12
SAY @105 /* Hmm, Boo thinks that you do not appreciate us enough, <CHARNAME>. But Minsc has thick skin that can endure steel, and so will endure your words as well. Onward! */
IF ~~ DO ~SetGlobal("I#MinscTalk","GLOBAL",12)~ EXIT END



//////////////////////////
//DIRTY BOO TALK (TALK #5)

IF WEIGHT #-1 ~Global("I#MinscTalk","GLOBAL",14)~ THEN I#DirtyBoo
SAY @106 /* Look at your fur, Boo! Dirty, dirty... *sniffs* and smelly! Normally you shine as brightly as gold! It is time for Minsc to battle against the nasty stench that covers you! */
++ @107 /* Erm, would the two of you like some privacy? */ + I#DrBoo11
++ @108 /* Well, at least you know how to take proper care of your little friend. Make sure you scrub him thoroughly. */ + I#DrBoo12
++ @109 /* Leave him, Minsc! Those are the aromas of a real man! */ + I#DrBoo13
++ @110 /* Stop screaming, Minsc. You won't be able to scare the smell off him. And I didn't ask to listen to your plans for a bath. */ + I#DrBoo14
END

IF ~~ I#DrBoo11
SAY @111 /* Eh? No, no! Back in Rashemen, it is common for our sworn brothers to bathe together! */
IF ~Gender(Player1,MALE)~ THEN GOTO I#DrBoo15
IF ~!Gender(Player1,MALE)~ THEN GOTO I#DrBoo16
END

IF ~~ I#DrBoo12
SAY @112 /* Ha! See, Boo? Even <CHARNAME> agrees with the need for proper hamster hygiene. Yes, Minsc will make sure to cleanse every little part of you from head to toe! */
= @113 /* *squeak!* */
= @114 /* (Yes, Boo, even there. Yes, I know you're ticklish, but you must endure it! We cannot have the problems with the evil lice again, right?) */
IF ~~ THEN GOTO I#DrBoo17
END

IF ~~ I#DrBoo13
SAY @115 /* No, that is what evil smells like! A man of goodness must not smell of old sweat and matted fur! Only nasty rats could ever smell so foul! */
IF ~~ THEN GOTO I#DrBoo17
END

IF ~~ I#DrBoo15
SAY @116 /* Boo is not embarrassed, are you, Boo? *squeak!* <CHARNAME> is a man just like Minsc. There is no shame in showing off your body to your fellow man! */
IF ~~ THEN GOTO I#DrBoo17
END

IF ~~ I#DrBoo16
SAY @117 /* Except... eh, well, if <CHARNAME> is not fond of fur on her men, then perhaps she should indeed look away. Boo is not concerned, though. Are you, Boo? */
IF ~~ THEN GOTO I#DrBoo17
END

IF ~~ I#DrBoo17
SAY @118 /* Minsc is a good friend to Boo! If he says he needs help, then Minsc helps. Friends should never ignore each other, or else they are not friends, eh? After all, camaraderie is what separates the closeness of good to the selfishness of evil! */
= @119 /* Eh, also... Boo does not like to hear this, but he is *really* starting to smell. Minsc is worried that our next foe will smell us coming before they see us. */
++ @120 /* Aha. Good point. A miniature giant space hamster can hide his small body, but not a large stench. */ + I#DrBoo21
++ @121 /* I really don't care. Give him a wash and be done with it. */ + I#DrBoo14
END

IF ~~ I#DrBoo21
SAY @122 /* Exactly! Boo is a valuable part of this group, but he cannot allow himself to drag the team down, can he? We must support each other in all things, whether it be fighting at each other's side or cleaning each other of the sweat of our fighting! */
++ @123 /* Uh, sure. Not that I've witnessed Boo's ferocity in battle with my own eyes, but I'll take your word for it. */ + I#DrBoo31
++ @124 /* You're a true protector, Minsc. I'm glad I have someone as stalwart as you by my side in battle. */ + I#DrBoo31
++ @125 /* Yes, well, whatever. I think we're done talking now. */ + I#DrBoo14
END

IF ~~ I#DrBoo31
SAY @126 /* Boo and I stand together in the battlefield! In defense of goodness, and the friends we stand besides. And we would rather our heads be at risk than that of the group. After all, few are made for battle as well as Minsc! That is what I have been trained for. */
= @127 /* Few know the ways of battle and butt-kicking as well as Minsc and Boo. Isn't that right? Yes. Now, Boo, it is time for you to face your own challenge: the mighty bath! */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",15) SetGlobal("I#MinscFriendshipActive","GLOBAL",2)~ EXIT END

IF ~~ I#DrBoo14
SAY @128 /* Fine! Now, Boo, it is time for you to face your own challenge: the mighty bath! */
IF ~~ THEN DO ~SetGlobal("I#MinscTalk","GLOBAL",15) SetGlobal("I#MinscFriendshipActive","GLOBAL",3)~ EXIT END


/////////////////////////////////
//WITCH / MAGE TALK - 1 (TALK #6)
//GENERAL NOTE: These series of talks should only happen if charname is non-evil and one of those classes: sorcerer, mage, bard; gender is handled via the talk itself 
//AERIE NOTE: Witch talks should only appear if Aerie isn't Minsc's new witch; if CHARNAME becomes the new witch, banters with Aerie should be locked

IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",2)~ THEN I#WM1-0
SAY @129 /* You know, <CHARNAME>... Boo and I have been watching your skills together. You know so very much of magic, just like the wychlaran, the witches of Rashemen! */
++ @130 /* Do I remind you of Dynaheir, Minsc? I feel as though you've been incomplete ever since losing her. Am I wrong? */ + I#WM1-11
++ @131 /* Ugh, must you bring up nonsense about Rashemen again, Minsc? I've grown tired of listening. */ + I#WM1-12
END

IF ~~ I#WM1-11
SAY @132 /* Well, Minsc still has Boo, so... I do not like to say things that might upset him, <CHARNAME>, but Boo also misses Dynaheir and her wisdom. Minsc knows that even without asking. We had a purpose as our witch's guardian. Although! We are your guardians now, but... it does not quite feel the same. */
++ @133 /* I'm sorry. I hope you'll find new purpose some day. */ + I#WM1-13
++ @134 /* You know, Minsc... if I remind you of her so much, then why don't I take her place? Would you accept me as your witch, Minsc? */ + I#WM1-21
++ @135 /* Oh, shut up already. I'm sick of hearing you whine over your loss. */ + I#WM1-12
END

IF ~~ I#WM1-21
SAY @136 /* Eh? <CHARNAME> says... <PRO_HESHE> wishes to be Minsc's new witch? */
IF ~Gender(Player1,FEMALE)~ THEN GOTO I#WM1-22
IF ~!Gender(Player1,FEMALE)~ THEN GOTO I#WM1-23
END

IF ~~ I#WM1-22
SAY @137 /* Oh, why did Minsc not think of this sooner? Yes, <CHARNAME> is wise and powerful, just as Dynaheir was! Minsc would gladly become your guardian, if you will be our witch! */
++ @138 /* Then I will be your witch, and you my guardian. */ + I#WM1-31
++ @139 /* Uh, actually, I'm not sure if that's such a good idea. I don't even know how to be your witch. I'm don't think I'm ready for the responsibility. */ + I#WM1-32
++ @140 /* Actually, never mind. I don't want a big brute like you to stick by me all the time. Forget I said anything. */ + I#WM1-12
END

IF ~~ I#WM1-23
SAY @141 /* Minsc does not think it fits tradition. All wychlaran are women, as far as Minsc knows. That is why they are called witches, after all. There are men who use magic - vremyonni, the Old Ones, but... they do not have guardians. */
+ ~OR(3) CheckStatGT(Player1,18,INT) CheckStatGT(Player1,18,WIS) CheckStatGT(Player1,65,LORE)~ + @142 /* Tradition is important, of course, but isn't the purpose of the wychlaran to guide and advise warriors like yourself? And have I not done so well enough thus far? */ + I#WM1-33
+ ~CheckStatGT(Player1,18,CHR)~ + @143 /* Do you not consider me a close companions? If so, would you say I'm any less worthy of guiding you as Dynaheir did? */ + I#WM1-33
++ @144 /* Fair enough. I don't mean to discredit tradition. I just hoped it would give you a new purpose. */ + I#WM1-32
++ @145 /* Maybe it's not such a good idea. We don't need that kind of bond to maintain our friendship anyway. */ + I#WM1-32
+ ~CheckStatLT(Player1,19,INT) CheckStatLT(Player1,19,WIS) CheckStatLT(Player1,19,CHR) CheckStatLT(Player1,66,LORE)~ + @146 /* Still, it's worth considering, Minsc, don't you think so? */ + I#WM1-34
END

IF ~~ I#WM1-31
SAY @147 /* My sword, my soul, my hamster... all of these I pledge to... to <CHARNAME>, my witch... HEAR THAT, EVIL?! MINSC HAS A NEW WITCH! WOE IS YOU! */
IF ~~ THEN GOTO I#WM1-41 END

IF ~~ I#WM1-32
SAY @148 /* Yes! Even if Minsc is without a witch, he will continue to strive for butt-kicking for goodness! Our boot print shall be embedded upon the backsides of all evil-doers! You and Boo and I shall do this together, witches or no! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3) SetGlobal("I#MinscWitchActive","GLOBAL",3)~ EXIT END

IF ~~ I#WM1-33
SAY @149 /* Eh, Minsc is still unsure... what do you think, Boo? */
= @150 /* You think so, Boo? Well, <CHARNAME> may not be a witch, but we have trusted in your wisdom, so you are no different to one. Then... I will accept you as my guide in this land! My sword, my soul, my hamster... all of these I pledge to... to <CHARNAME>, my guide... HEAR THAT, EVIL?! MINSC HAS A NEW GUIDE! WOE IS YOU! */
IF ~~ THEN GOTO I#WM1-41 END

IF ~~ I#WM1-34
SAY @151 /* Hmm, Minsc thinks such a decision should not be made lightly. Especially since we can still fight evil, though Dynaheir is no longer with us! Minsc is fine as he is, <CHARNAME>, but we are still grateful for the idea! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3) SetGlobal("I#MinscWitchActive","GLOBAL",3)~ EXIT END

IF ~~ I#WM1-41
SAY @152 /* We thank you, <CHARNAME>! Now we can fight together as true Rashemi companions, and our strength shall be even greater! Ware, evil! <CHARNAME> and Minsc shall defeat you all! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3) SetGlobal("I#MinscWitchActive","GLOBAL",2)~ EXIT END

IF ~~ I#WM1-12
SAY @153 /* Minsc thinks he has just been insulted. But... surely a great hero like <CHARNAME> would not stoop to insults. Maybe... ah, I get it now, Boo. <CHARNAME> wants Minsc to be quiet. */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3) SetGlobal("I#MinscWitchActive","GLOBAL",3)~ EXIT END

IF ~~ I#WM1-13
SAY @154 /* One day we shall, I am sure of it! But for now, Minsc is content to fight alongside <CHARNAME>. You may not be a witch, but you are a hero worth fighting for! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3) SetGlobal("I#MinscWitchActive","GLOBAL",3)~ EXIT END


/////////////////////////////////
//WITCH / MAGE TALK - 2 (TALK #7)

IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",5)~ THEN I#WM2-0
SAY @155 /* <CHARNAME>, Boo has been wondering... have we been doing a good job at protecting you so far? */
++ @156 /* Of course, Minsc. I had no doubt you would fulfill your duties as guardian most effectively. */ + I#WM2-11
++ @157 /* Absolutely not! Look at that bruise on my elbow! And that scrape there! If you were doing your job properly that would never have happened! */ + I#WM2-12
++ @158 /* Hmm? Oh, sure, whatever. I don't really care too much whether you're protecting me or not, to be honest. */ + I#WM2-13
END

IF ~~ I#WM2-11
SAY @159 /* Do you hear that, Boo? <CHARNAME> has praised our good work. Huzzah for Minsc and Boo! */
IF ~~ GOTO I#WM2-14 END

IF ~~ I#WM2-12
SAY @160 /* Oh, you are right! We are so sorry, <CHARNAME>! From now on Minsc and Boo shall watch your every move to make sure not the tiniest scratch ever scars your flesh again! */
IF ~~ GOTO I#WM2-14 END

IF ~~ I#WM2-14
SAY @161 /* Ah, adventuring feels so much differently now that Minsc has found new purpose! I feel stronger than ever and as full of energy as if I were still a young boy. We have not felt so alive for a long time, isn't that right Boo? */
++ @162 /* I didn't know having a purpose meant so much for you, Minsc. */ + I#WM2-21
++ @163 /* Yes, yes, whatever you say. That's enough for now. */ + I#WM2-13
++ @164 /* Good for you, Minsc. It's nice to see you smiling broadly and full of vigor. */ + I#WM2-21
END

IF ~~ I#WM2-21
SAY @165 /* Yes! Minsc feels so mighty, even bars of the strongest steel could not hold him, even if they were ten times as strong as those cages of Irenicus! If that evil wizard were to try to capture us again, Minsc will shatter his prisons and drive the bars into his black heart! */
++ @166 /* That's a sight I'd pay good gold to see, for certain. */ + I#WM2-31
++ @167 /* Alright, that's enough. Save your enthusiasm for the enemies we're bound to face. */ + I#WM2-13
END

IF ~~ I#WM2-31
SAY @168 /* We shall be ready for the day we bring our righteous bootheels to the evil wizard who has hurt us and taken our friends, <CHARNAME>! Beware, Irenicus! No chains shall hold Minsc down ever again! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",6)~ EXIT END

IF ~~ I#WM2-13
SAY @169 /* You heard that, Boo? Yes, I agree <CHARNAME> is giving us the icy cold shoulder again. What? We should leave <PRO_HIMHER> alone? Well... if you think that is right... */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",6)~ EXIT END


//////////////////////////////////////////
//WITCH / MAGE TALK - 3: PC HURT (TALK #8)
//NOTE: HP LESS THAN 50% AND AT LEAST 30 MINUTES AFTER PREVIOUS TALK

IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",8)~ THEN I#WM3-0
SAY @170 /* <CHARNAME>! You are not hurt, yes? Boo's sharp eyes saw those evil things hurt you. Oh, we have failed to keep you from danger! Never again! Stand away, evil, if you know what is best for you! */
++ @171 /* I'm fine-- I'm fine, Minsc! Just get me a bandage or a potion. */ + I#WM3-11
++ @172 /* Ugh, so much for acting as my protector... ouch! */ + I#WM3-12
END

IF ~~ I#WM3-11
SAY @173 /* Here, <CHARNAME>! A cloth for your wound. Minsc has failed to keep you safe, but will still help in any way possible! */
= @174 /* What's that, Boo? Oh, he wonders if licking the wound might help. */
++ @175 /* Thank you, Boo, but a clean cloth and some ointment will do. The wound's not life-threatening. */ + I#WM3-21
++ @176 /* Ugh, that doesn't sound hygenic. I'll pass. */ + I#WM3-21
++ @177 /* Are you mad? I don't want that rodent's tongue anywhere near my injuries. */ + I#WM3-12
END

IF ~~ THEN I#WM3-21
SAY @178 /* I told you, Boo, <PRO_HESHE> would not like it. Yes, I know you mean well. I know you have a big heart in your little body. */
IF ~Gender(Player1,FEMALE)~ THEN GOTO I#WM3-22
IF ~!Gender(Player1,FEMALE)~ THEN GOTO I#WM3-23
END

IF ~~ THEN I#WM3-22
SAY @179 /* Especially when it comes to helping our new witch! */
++ @180 /* Much appreciated, Boo. And to you as well, Minsc. */ + I#WM3-31
++ @181 /* I think you're being a little overprotective, Minsc. I know you hold yourself responsible for my well-being, but I can take care of myself. */ DO ~SetGlobal("I#MinscGlass","GLOBAL",1)~ + I#WM3-32
++ @182 /* Yes, whatever. I'm fine now, so can we just get going? */ + I#WM3-12
END

IF ~~ THEN I#WM3-23
SAY @183 /* Especially when it comes to helping our new man-witch! */
++ @184 /* Man-witch, huh... is that even a word? Well, in any case, I appreciate the concern from the both of you. */ + I#WM3-31
++ @181 /* I think you're being a little overprotective, Minsc. I know you hold yourself responsible for my well-being, but I can take care of myself. */ DO ~SetGlobal("I#MinscGlass","GLOBAL",1)~ + I#WM3-32
++ @182 /* Yes, whatever. I'm fine now, so can we just get going? */ + I#WM3-12
END

IF ~~ THEN I#WM3-31
SAY @185 /* Minsc and Boo stand ready! In service of <CHARNAME>, as long as we both breathe! */
++ @186 /* Thank you. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",9)~ EXIT
++ @187 /* Whatever. Let's get moving. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",9)~ EXIT
END

IF ~~ THEN I#WM3-32
SAY @188 /* Oh, we know! <CHARNAME> is a mighty hero just like us, after all! */
++ @189 /* I'm glad you understand. That's all I have to say. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",9)~ EXIT
++ @190 /* Good. Now then, we've wasted enough time here. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",9)~ EXIT
END

IF ~~ THEN I#WM3-12
SAY @191 /* We are so very sorry, <CHARNAME>. We will do better from now on! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",9)~ EXIT END  


//////////////////////////////////////////
//WITCH / MAGE TALK - 4: PC TIRED (TALK #9)
//NOTE: THIS TALK SHOULDN'T APPEAR IF 'I'm not made from glass' WAS USED IN PREVIOUS TALK
//NOTE: AT LEAST 30 MINUTES AFTER 'HURT' TALK

IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",11)~ THEN I#WM4-0
SAY @192 /* You look exhausted, <CHARNAME>! Shall Minsc carry you for a while? */
++ @193 /* No, thank you. I can keep going for a while yet. */ + I#WM4-11
++ @194 /* Well, my feet do hurt... sure, why not? Just for a while, mind you. */ + I#WM4-12
++ @195 /* Oh, a piggyback ride, is it? I love those! */ + I#WM4-12
++ @196 /* Absolutely not! */ + I#WM4-13
END

IF ~~ I#WM4-11
SAY @197 /* Oh, I see... Minsc thought you could use a bit of help. It is my responsibility as guardian, after all! Also, it is good for exercise. */
IF ~~ THEN GOTO I#WM4-14 END

IF ~~ I#WM4-12
SAY @198 /* This is a good change from our daily workout! One, two, three... ha! <CHARNAME> is lighter than <PRO_HESHE> looks. */
IF ~~ THEN GOTO I#WM4-14 END

IF ~~ I#WM4-14
SAY @199 /* Erm... there was one thing Minsc wanted to say, and he thinks it is best to say it now when we have a chance. */
IF ~Gender(Player1,FEMALE)~ THEN GOTO I#WM4-15
IF ~!Gender(Player1,FEMALE)~ THEN GOTO I#WM4-16
END

IF ~~ I#WM4-15
SAY @200 /* Minsc and Boo are happy that you are our witch. Ever since we became your protectors, we have trained even harder to make sure we can lift any burden you would ask of us! Well, Minsc does not mean to call you a burden, even though he offered to carry you... but that is not the point! We are your strong arms acting in the name of goodness! */
++ @201 /* And I would rather have no one else act as such. Others may think of you as... well, 'troubled', to put it, but I consider you brave and responsible. I would trust you with my life. */ +  I#WM4-21
++ @202 /* Oh, stow it. I don't want you getting all emotional on me. You're barely tolerable as it is. */ + I#WM4-13
END

IF ~~ I#WM4-16
SAY @203 /* Minsc and Boo are happy that you are our guide. Ever since we became your protectors, we have trained even harder to make sure we can lift any burden you would ask of us! Well, Minsc does not mean to call you a burden, even though he offered to carry you... but that is not the point! We are your strong arms acting in the name of goodness! */	
++ @201 /* And I would rather have no one else act as such. Others may think of you as... well, 'troubled', to put it, but I consider you brave and responsible. I would trust you with my life. */ +  I#WM4-21
++ @202 /* Oh, stow it. I don't want you getting all emotional on me. You're barely tolerable as it is. */ + I#WM4-13
END

IF ~~ I#WM4-21
SAY @204 /* No, no, no. <CHARNAME> honors us too much! Is Minsc blushing, Boo? Minsc's face is not suited for blushing. */
= @205 /* <CHARNAME> has made us stronger warriors and better men, and we are happier for it. */
= @206 /* Guide us onward, wise <CHARNAME>! We shall follow your every direction! */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",12)~ EXIT END

IF ~~ I#WM4-13
SAY @207 /* There is no need to say such hurtful words. Boo is sensitive to such. Look at his poor little face. */
= @208 /* Minsc does not understand why <CHARNAME> would respond so. It is very unbecoming of <PRO_HESHE> who we have sworn ourselves to. */
= @209 /* Minsc thinks we should keep moving, before <CHARNAME> says more words that will hurt little Boo even more greatly. */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",12)~ EXIT END


//////////////////////////////////////////
//WITCH / MAGE TALK - 5: PC TIRED (TALK #10)
//NOTE: SOMEWHERE AFTER MOST WITCH TALKS, UPON REST IN THE WILDERNESS

IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",14)~ THEN I#WM5-0
SAY @210 /* <CHARNAME>! Minsc and Boo in need of your wisdom. Do you have time for your faithful guardians? */
++ @211 /* Of course. */ + I#WM5-11
++ @80 /* Not right now, Minsc. */ + I#WM5-12
END

IF ~~ I#WM5-11
SAY @212 /* There is a favor we would ask of you. Well... especially Minsc, but from Boo as well. */
IF ~Gender(Player1,FEMALE)~ THEN GOTO I#WM5-13
IF ~!Gender(Player1,FEMALE)~ THEN GOTO I#WM5-14
END

IF ~~ I#WM5-12
SAY @213 /* But... but this is important, <CHARNAME>! This is a very important favor for Minsc! And Boo as well... */
IF ~Gender(Player1,FEMALE)~ THEN GOTO I#WM5-13
IF ~!Gender(Player1,FEMALE)~ THEN GOTO I#WM5-14
END

IF ~~ I#WM5-13
SAY @214 /* You are our new witch, so there is one thing I think we should do togther. Minsc thinks that we should say our final farewells to Dynaheir... to pay our last respects. */
++ @215 /* Yes... yes, I suppose we should. How do you propose we do so? */ + I#WM5-21
++ @216 /* I can't be bothered with such a trivial thing, Minsc. */ + I#WM5-22
END

IF ~~ I#WM5-14
SAY @217 /* You are our guide now, so there is one thing I think we should do together. Minsc thinks that we should our say our final farewells to Dynaheir... to pay our last respects. */
++ @215 /* Yes... yes, I suppose we should. How do you propose we do so? */ + I#WM5-21
++ @216 /* I can't be bothered with such a trivial thing, Minsc. */ + I#WM5-22
END

IF ~~ I#WM5-21
SAY @218 /* Well, Minsc is not so sure himself. Boo thinks it would be easiest to just sit down and... well, we should say anything we have on our mind. Dynaheir will surely hear us, if we speak loudly enough. */
++ @219 /* Alright, then. Let's sit by the fire together. */ + I#WM5-23
++ @220 /* No, Minsc. Truth be told, I really don't care for this at all. */ + I#WM5-22
END

IF ~~ I#WM5-22
SAY @221 /* But... but! You must see how important this is! Minsc is begging you! */
++ @222 /* Oh, fine. Let's make it a quick farewell, then. */ + I#WM5-23
++ @223 /* No. Leave me alone, Minsc. */ + I#WM5-24
END

IF ~~ I#WM5-23
SAY @224 /* Yes! Thank you, <CHARNAME>! Sit here, Boo. We shall give Dynaheir our final words. */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",15)~ EXIT END // CUTSCENE WHEN THERE IS A FADE TO BLACK FOR A SHORT MOMENT

IF ~~ I#WM5-24
SAY @225 /* You are refusing us? Then... we see you are not as understanding as Dynaheir, and we were mistaken about you. Boo, I think... we must do this alone, then. */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",15) SetGlobal("I#MinscWitchActive","GLOBAL",3) SetGlobal("I#MinscBlock","GLOBAL",1) RestParty()~ EXIT END // BLOCKS ALL OTHER TALKS IN THE MOD

//AFTER THE FADE TO BLACK
IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",16)~ THEN I#WM5-30
SAY @226 /* <CHARNAME>, Minsc... and Boo as well... we thank you. We feel at peace now. */
++ @227 /* You do seem calmer than you've ever been. Are you sure you're feeling alright? */ + I#WM5-31
++ @228 /* I wish I could say the same. I feel ridiculous, talking to the flames like that. */ + I#WM5-31
END

IF ~~ I#WM5-31
SAY @229 /* This was an important thing for the both of us. You may not know it, but... Rashemi wycharan are very wise with their words and rituals. Even though you were not trained in them, you did just as well, if not better. You are truly worthy of taking Dynaheir's place! */
= @230 /* Minsc... Minsc is tired now. I think we should rest. Even the greatest heroes still need sleep, so that we can fight at our best for the next day. */
= @231 /* And... again, we thank you. */
IF ~~ THEN DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",17) RestParty()~ EXIT END //SLEEP


/////////////////////////////////
//IMOEN TALK - BRYNNLAW (TALK #11)

IF WEIGHT #-1 ~Global("I#MinscWitchTalk","GLOBAL",2)~ I#MinscImoenDialogue
SAY @232 /* <CHARNAME>, Minsc is concerned about Imoen. Boo repeatedly tells him he is worrying too much, but he cannot help but think of poor little Imoen, trapped in a cage by those men in cowls somewhere, together with that evil wizard Irenicus. */
++ @233 /* Rest assured, Minsc. If the Cowled Wizards... or Irenicus, dare to lay a finger on her, they'll wish they were dead once I find them. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3)~ + I#MImoen_1
++ @234 /* I worry as well, Minsc... each night I send a prayer to the Gods to watch over her, hoping she's okay. I miss her too. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3)~ + I#MImoen_2
++ @235 /* Honestly, I don't really care. She's always been the one I have to care for, and I'm sick of it. After we've saved her, she's going packing. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3)~ + I#MImoen_3
++ @236 /* Imoen'll be fine. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3)~ + I#MImoen_4
++ @237 /* I don't care about Imoen - only Irenicus. As long as I have him by the end of this, I'll be happy. */ DO ~SetGlobal("I#MinscWitchTalk","GLOBAL",3)~ + I#MImoen_5
END

IF ~~ I#MImoen_1
SAY @238 /* Did you hear that, Boo? */
= @239 /* Boo says that he thinks as long as we hurry to save her, she'll be all right. I hope he is right - if only to prevent the mages from losing their eyes to Boo's claws and their lives to Minsc's sword! */
= @240 /* Not that that would be a bad thing, though. Those that do evil things deserve some hard kicking! */
++ @241 /* Heh... no, it wouldn't. */ + I#MImoen_41
++ @242 /* We'll get them. We'll get her. We're really close now, I'm sure of it. */ + I#MImoen_42
++ @243 /* Damn right. */ + I#MImoen_43
END

IF ~~ I#MImoen_2
SAY @239 /* Boo says that he thinks as long as we hurry to save her, she'll be all right. I hope he is right - if only to prevent the mages from losing their eyes to Boo's claws and their lives to Minsc's sword! */
= @240 /* Not that that would be a bad thing, though. Those that do evil things deserve some hard kicking! */
++ @241 /* Heh... no, it wouldn't. */ + I#MImoen_41
++ @242 /* We'll get them. We'll get her. We're really close now, I'm sure of it. */ + I#MImoen_42
++ @243 /* Damn right. */ + I#MImoen_43
END

IF ~~ I#MImoen_3
SAY @244 /* How could you say such a thing, <CHARNAME>! Imoen is our friend, and we must look after her! */
++ @245 /* Eh. I suppose you're right. */+ I#MImoen_31
++ @246 /* No, she's not. She's an annoyance. */+ I#MImoen_32
++ @247 /* Bah, if I had my way we would be leaving her there to rot! But Irenicus is there... and I *must* have him. */+ I#MImoen_32
END

IF ~~ I#MImoen_4
SAY @248 /* I hope so, if only to prevent the mages from losing their eyes to Boo's claws and their lives to Minsc's sword! */
= @240 /* Not that that would be a bad thing, though. Those that do evil things deserve some hard kicking! */
++ @241 /* Heh... no, it wouldn't. */ + I#MImoen_41
++ @242 /* We'll get them. We'll get her. We're really close now, I'm sure of it. */ + I#MImoen_42
++ @243 /* Damn right. */ + I#MImoen_41
END

IF ~~ I#MImoen_5
SAY @249 /* There will be much righteous butt-kicking to be done before this is over, you are right! But we must save little Imoen soon; she is our friend, and so we must look after her! */
= @250 /* Isn't that right, Boo? *Squeak!* */
++ @245 /* Eh. I suppose you're right. */+ I#MImoen_31
++ @246 /* No, she's not. She's an annoyance. */+ I#MImoen_32
++ @247 /* Bah, if I had my way we would be leaving her there to rot! But Irenicus is there... and I *must* have him. */+ I#MImoen_32
END

IF ~~ I#MImoen_41
SAY @251 /* So we agree! There will be lots and lots of rescuing now! And some good fighting, too! In the name of good things and friendship, of course! That's what Minsc and Boo fight for! */ 
IF ~~ THEN EXIT END

IF ~~ I#MImoen_42
SAY @252 /* Sure we are! There will be lots and lots of rescuing now! And some good fighting, too! In the name of good things and friendship, of course! That's what Minsc and Boo fight for! */ 
IF ~~ THEN EXIT
END

IF ~~ I#MImoen_43
SAY @253 /* Good! Evil will not escape our righteous kicks of goodness! In the name of good things and friendship, of course! That's what Minsc and Boo fight for! */
IF ~~ THEN EXIT
END

IF ~~ I#MImoen_31
SAY @254 /* Good! Minsc, <CHARNAME> and Boo will prevail, and we will save little Imoen from the clutches of evil, and liberally spank the butts of evil in the process! */ IF ~~ THEN EXIT
END

IF ~~ I#MImoen_32
SAY @255 /* Boo says you are being silly. Imoen is not an annoyance! Though she does make jokes about Boo's fur, and Minsc's tattoos... but that does not make her annoying. */
= @256 /* Ah, well, it looks like it is up to you and I, Boo, to save little Imoen, if <CHARNAME> will not! *squeak!* */
= @257 /* And I'm sure you'll remember that you like Imoen when we find her, <CHARNAME>, but until then, Minsc and Boo will lead the hunt! Boo says that Minsc is a good tracker, so he will do it well. He hopes so, anyway. */
= @258 /* Onward, to Imoen wherever she may be! */ IF ~~ THEN EXIT
END


/////////////////////////////
//IMOEN IS BACK TALK (TALK #12)

IF WEIGHT #-1 ~Global("I#MinscImoen","GLOBAL",2)~ I#MinscImoenReturned
SAY @259 /* <CHARNAME>, Imoen is returned to us! Why do you not smile, when there is so much to be happy for? */
++ @260 /* She's not well, Minsc. They did something terrible to her. */ DO ~SetGlobal("I#MinscImoen","GLOBAL",3)~ + I#MIRet_1
++ @261 /* I am smiling! It's so wonderful to see her again! */ DO ~SetGlobal("I#MinscImoen","GLOBAL",3)~ + I#MIRet_2
++ @262 /* Minsc, Irenicus took her soul, like he took mine. Remember how we talked about buttkicking? Well, Irenicus should start running *now*. And even then, he will not evade us. */ DO ~SetGlobal("I#MinscImoen","GLOBAL",3)~ + I#MIRet_3
++ @263 /* We can celebrate once we're out of this damned asylum. */ DO ~SetGlobal("I#MinscImoen","GLOBAL",3)~ + I#MIRet_4
++ @264 /* We still have to get through Irenicus, Minsc. There is a long way to go yet. */ DO ~SetGlobal("I#MinscImoen","GLOBAL",3)~ + I#MIRet_5
END

IF ~~ I#MIRet_1
SAY @265 /* Little Imoen is sick? Quickly, <CHARNAME>, we must heal her! */
++ @266 /* It isn't something you can heal, Minsc. Irenicus took her soul. */+ I#MIRet_11
++ @267 /* Imoen's sickness is a special sort of sickness, one you can't heal. There's nothing we can do but hope that she gets better soon. */+ I#MIRet_12
++ @268 /* Minsc, don't be stupid. She's lost her soul. */+ I#MIRet_11
++ @269 /* Just - just leave me alone. I need to think. */+ I#MIRet_13
END

IF ~~ I#MIRet_2
SAY @270 /* Boo's whiskers are acquiver with delight! See how he runs in circles so? */
++ @271 /* Heh, yeah. It is great to have her back. I just hope she's alright. */+ I#MIRet_1
++ @272 /* Isn't that what he usually does anyway? */+ I#MIRet_21
++ @273 /* He's just a hamster. Minsc... it's not all hugs and puppies. Irenicus took Imoen's soul. */+ I#MIRet_11
END

IF ~~ I#MIRet_3
SAY @274 /* Raaargh! Ready your claws and teeth, Boo, for we have a mage in need of killing! */
= @275 /* He will not escape us this time, <CHARNAME>! */
++ @276 /* That's the spirit! Now we've just got to get out of this hellhole... */ EXIT
++ @277 /* We're going to need a bit more guile than that. */+ I#MIRet_31
++ @278 /* Boo puts dibs on his eyes, right? */+ I#MIRet_32
++ @279 /* We'll *skewer* him. Slowly. Don't you worry. */ EXIT
END

IF ~~ I#MIRet_4
SAY @280 /* We will get out soon, and then, as you say, we will celebrate! There will be wine, and women, and tattoos- */
= @281 /* Eh, or perhaps not. But we will celebrate then, you are right. */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_5
SAY @282 /* We will kill Irenicus, escape, and celebrate!  There will be wine, and women, and tattoos- */
= @283 /* Eh, or perhaps not. But we will celebrate, and we will change that frown into a smile! */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_11
SAY @284 /* He took her soul? Raargh! Foolish wizard, he might break it! Where is the jar where he keeps it, so we can give it back to little Imoen? */
++ @285 /* Irenicus gave it to Bodhi, I think. So we'll have to go and stab the vampire first, then get her soul back. And let's hope she's just keeping it in a jar... (sigh) */+ I#MIRet_111
++ @286 /* I'm not sure. But we'll get it back, and Irenicus will pay. */+ I#MIRet_111
++ @287 /* If he breaks it, I'll break him. But I'm breaking him anyway, so, either way - he's in for it. */+ I#MIRet_111
END

IF ~~ I#MIRet_12
SAY @288 /* Minsc will give Imoen a special tea he once saw Dynaheir make for herself! It always made her better after fighting, as I remember. */
= @289 /* Boo says he remembers the recipe, just to find the little green leaves... have you seen any little green leaves, <CHARNAME>? About so big? */
++ @290 /* 'Fraid not, Minsc. But keep trying, I'm sure she'll appreciate it. */+ I#MIRet_121
++ @291 /* No! I mean, no thanks. A cup of tea isn't going to help. */+ I#MIRet_122
++ @292 /* You'll poison her! */+ I#MIRet_123
++ @293 /* I did, actually - they're just over there, growing beside that rock. */+ I#MIRet_124
END

IF ~~ I#MIRet_13
SAY @294 /* Minsc and Boo will help however they can, <CHARNAME>, you need but to ask! */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_21
SAY @295 /* Eh, you have a point. But he is truly excited, don't you worry! */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_31
SAY @296 /* Minsc and Boo can be sneaky! See how Boo sneaks into your pack to gather crumbs and biscuits to nibble on? He is very sneaky! */
= @297 /* Boo says he will give Minsc lessons on sneakiness so we can capture Irenicus! Then we can smash down the door with the heels of righteousness and give him his last words! */
= @298 /* Though apparently that is not very sneaky. Hmm. Minsc will think of another plan, then. But don't you worry! We will get Irenicus, even if it takes Minsc and Boo hours of planning! */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_32
SAY @299 /* Of course! */
= @282 /* We will kill Irenicus, escape, and celebrate!  There will be wine, and women, and tattoos- */
= @283 /* Eh, or perhaps not. But we will celebrate, and we will change that frown into a smile! */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_111
SAY @274 /* Raaargh! Ready your claws and teeth, Boo, for we have a mage in need of killing! */
= @275 /* He will not escape us this time, <CHARNAME>! */
++ @276 /* That's the spirit! Now we've just got to get out of this hellhole... */ EXIT
++ @277 /* We're going to need a bit more guile than that. */+ I#MIRet_31
++ @278 /* Boo puts dibs on his eyes, right? */+ I#MIRet_32
++ @279 /* We'll *skewer* him. Slowly. Don't you worry. */ EXIT
END

IF ~~ I#MIRet_121
SAY @300 /* Minsc and Boo will help however they can. */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_122
SAY @301 /* Sure it will! It always helped Dynaheir, anywho. But if you are set on your course of not-giving-Imoen-tea action, then we will not make it. */
= @302 /* Don't worry, Boo, we will just ask Imoen if she would like some tea later! Yes. Now... to find those leaves... */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_123
SAY @303 /* Minsc and Boo would do no such thing! Imoen is our friend, we would not poison her! */
= @304 /* But if you are set on your course of not-giving-Imoen-tea action, then we will not make it. */
= @302 /* Don't worry, Boo, we will just ask Imoen if she would like some tea later! Yes. Now... to find those leaves... */ IF ~~ THEN EXIT
END

IF ~~ I#MIRet_124
SAY @305 /* Thank you, <CHARNAME>! We will have the tea ready as soon as we can. Dynaheir would be proud! */ IF ~~ THEN EXIT
END

///////////////////////////////////////////
//AFTER SLAYER CHANGE: 3 minutes (TALK #13)

IF WEIGHT #-1 ~Global("I#MinscSlayer","GLOBAL",2)~ I#MSlayer
SAY @306 /* Boo is very worried about you, my friend. That thing you changed into... it was full of rage! Not the good sort of rage that Minsc uses, either. It was an evil, evil rage, like nothing Minsc has ever seen before! */
++ @307 /* I... I have never felt anything resembling that thing in all my life. It worries me greatly. */ + I#MSlay11
++ @308 /* That's not far from how I'd describe it. It was like a desperate swirl of urges inside of me, trying to cut its way out of my flesh. */ + I#MSlay11
++ @309 /* I don't have time to assuage your hamster on his feelings, Minsc. Leave me alone. */ + I#MSlay12
END

IF ~~ I#MSlay11
SAY @310 /* Ohh, Minsc does not think that sounds healthy or right at all. That is not good. */
IF ~Global("I#MinscWitchActive","GLOBAL",2)~ THEN GOTO I#MSlay13
IF ~!Global("I#MinscWitchActive","GLOBAL",2)~ THEN GOTO I#MSlay14
END

IF ~~ I#MSlay13
SAY @311 /* Minsc is your sworn guardian, and so is responsible for your safety, but... how do I protect you from yourself, <CHARNAME>? This sword is meant to keep you safe, so using it against you would be wrong! Minsc is... very confused as to what to do. */
++ @312 /* I wish I could tell you what to do, Minsc, but I can't. I'm at a loss as to how to deal with it myself. */ + I#MSlay21
++ @313 /* Well, I suppose we'll just have to deal with that issue whenever it comes up again. It won't be the first time we've had to deal with the unexpected. */ + I#MSlay21
++ @314 /* Just give me a break. I don't need you to waste time asking such pointless questions when I'm trying to figure out what our best course of action is. */ + I#MSlay12
END

IF ~~ I#MSlay14
SAY @315 /* You are our trusted friend! We cannot allow our friend to be taken in place of an evil monster! That is what is happening, isn't it Boo? But... you are still <CHARNAME>, even in that form. So how could Minsc turn his sword on you? That would be wrong? Minsc is... very confused as to what to do. */
++ @312 /* I wish I could tell you what to do, Minsc, but I can't. I'm at a loss as to how to deal with it myself. */ + I#MSlay21
++ @313 /* Well, I suppose we'll just have to deal with that issue whenever it comes up again. It won't be the first time we've had to deal with the unexpected. */ + I#MSlay21
++ @314 /* Just give me a break. I don't need you to waste time asking such pointless questions when I'm trying to figure out what our best course of action is. */ + I#MSlay12
END

IF ~~ I#MSlay21
SAY @316 /* Well, <CHARNAME> will know what to do as <PRO_HESHE> always does - so Minsc will just do what he does best, and that is protecting <CHARNAME> with sword and fist. That will be enough, we hope. */
IF ~~ THEN DO ~SetGlobal("I#MinscSlayer","GLOBAL",3)~ EXIT END

IF ~~ I#MSlay12
SAY @317 /* Boo thinks <CHARNAME> is even scarier than usual when <PRO_HESHE> is angry. Maybe we should guard you in silence for now. */
IF ~~ THEN DO ~SetGlobal("I#MinscSlayer","GLOBAL",3)~ EXIT END


///////////////////////////////////////////
//UPON FINDING SOUL REAVER SWORD (TALK #14)

IF WEIGHT #-1 ~Global("I#MinscSR","GLOBAL",1)~ I#MSRvr
SAY @318 /* Oh, what an evil blade this is, <CHARNAME>! Boo's little nose wrinkles at its vile corrupted scent! We should treat it with caution. */
++ @319 /* My sense of smell isn't as keen as Boo's, but I can tell it's evil just from looking at it. The Underdark truly is full of evil objects. */ + I#MSRvr11
++ @320 /* Anything coming from the hands of a demon knight of Demogorgon is bound to be made of evil. */ + I#MSRvr12
END

IF ~~ I#MSRvr11
SAY @321 /* Boo thinks such an evil artifact should be locked up in some secure place, away from the clutches of anyone as evil as it! Nothing good could come of a cursed blade as this! */
++ @322 /* We'll safeguard it from now. Better we carry it than its previous owner. */ + I#MSRvr21
++ @323 /* A weapon has no will, Minsc. Only the person who wields it. */ + I#MSRvr22
++ @324 /* Oh, don't overreact. It's a fine and effective weapon. I don't mind it. */ + I#MSRvr23
++ @325 /* Whatever. It's not important enough to worry about. */ + I#MSRvr24
END

IF ~~ I#MSRvr12
SAY @326 /* Yes, exactly! Its evil is so, so strong it pulses like... like a... something evil and pulsing! Nothing good could come of a cursed blade as this! */
++ @322 /* We'll safeguard it from now. Better we carry it than its previous owner. */ + I#MSRvr21
++ @323 /* A weapon has no will, Minsc. Only the person who wields it. */ + I#MSRvr22
++ @324 /* Oh, don't overreact. It's a fine and effective weapon. I don't mind it. */ + I#MSRvr23
++ @325 /* Whatever. It's not important enough to worry about. */ + I#MSRvr24
END

IF ~~ I#MSRvr21
SAY @327 /* Yes, we shall make sure no one ever uses this blade to harm others again! Until it can be put somewhere safe, or better, if we could find someone who could destroy it! Sadly, Minsc is not strong enough to do it. */
IF~~THEN GOTO I#MSRvr25 END

IF ~~ I#MSRvr22
SAY @328 /* Ehh... do you really think so, <CHARNAME>? What do you think, Boo? */
= @329 /* Boo does not approve. He thinks that the weapon is more alive than it seems, although it does not move or speak. */
IF~~THEN GOTO I#MSRvr25 END

IF ~~ I#MSRvr23
SAY @330 /* No, <CHARNAME>! Boo says you should keep a watchful eye on it! It could be dangerous! */
IF~~THEN GOTO I#MSRvr25 END

IF ~~ I#MSRvr25
SAY @331 /* Take good care of it, <CHARNAME>! We trust that you will know best what to do with such an evil artifact. You can make sure it never falls it into the wrong hands again. */
++ @332 /* I'll do what I can. */ + I#MSRvr31
++ @333 /* Perhaps it might be of some use to us instead. */ + I#MSRvr31
++ @334 /* I'd rather sell it. It'll fetch a nice price at the market. */ + I#MSRvr31
++ @335 /* Whatever. We should move on now. */ + I#MSRvr24
END

IF ~~ I#MSRvr31
SAY @336 /* Boo says, an evil blade cannot be trusted to do anything but evil, <CHARNAME>! Be careful with it! */
IF ~~ THEN DO ~SetGlobal("I#MinscSR","GLOBAL",2)~ EXIT END

IF ~~ I#MSRvr24
SAY @337 /* Keep an eye on that evil thing, Boo! <CHARNAME> as well! */
IF ~~ THEN DO ~SetGlobal("I#MinscSR","GLOBAL",2)~ EXIT END

END

///////////////////////////////////////////////////
//AFTER KILLING BODHI AND IMOEN IN PARTY (TALK #15)

CHAIN IF WEIGHT #-1 ~Global("I#MinscImoenBodhi","GLOBAL",1)~ THEN MINSCJ I#MSIB
@338 /* Our friend Imoen has her soul back! You see, Boo? We are heroes who keep our friends safe and well! Boo is happy for you, Imoen. */
==IMOEN2J @339 /* Aww, thanks Boo. And you too, Minsc. I still feel a little tender, but hearing your encouragement helps out. */
==MINSCJ @340 /* Worry not, little Imoen! Boo and I will make sure you never fall into the clutches of evil again! HEAR THAT, EVIL? KEEP AWAY FROM IMOEN, OR SUFFER THE WRATH OF MINSC AND HIS BOOTHEEL! */
END
IF~~THEN REPLY @341 /* Thank you for your help with getting Imoen's soul back. It means a lot to me as well. */ EXTERN MINSCJ I#MSIB11
IF~~THEN REPLY @342 /* We did this together, Minsc. */ EXTERN MINSCJ I#MSIB12
IF~~THEN REPLY @343 /* Shut up, Minsc! Your shouting is giving me a headache. */ EXTERN MINSCJ I#MSIB13

CHAIN MINSCJ I#MSIB11
@344 /* Of course we helped! That is what heroes do, isn't that right Boo? */
EXTERN MINSCJ I#MSIB14

CHAIN MINSCJ I#MSIB12
@345 /* Yes, <CHARNAME> is a good leader as well! We have not forgotten about you, my friend! */
EXTERN MINSCJ I#MSIB14

CHAIN MINSCJ I#MSIB14
@346 /* Now we must find Irenicus, so that we can get your soul back for you too, <CHARNAME>! Irenicus will be in for a righteous buttkicking, for you and the memory of dear Dynaheir! */
=@347 /* Quake in fear, you evil mage! Minsc and Boo and <CHARNAME> and Imoen, heroes all, are coming for you! */
END
++ @348 /* Irenicus should be afraid of what's coming, for certain. */ EXTERN IMOEN2J I#MSIB21
++ @349 /* He will pay for everything he's done to us soon enough. */ EXTERN IMOEN2J I#MSIB22
++ @350 /* That's enough. We're bringing the battle to him now. */ EXIT

CHAIN IMOEN2J I#MSIB21
@351 /* Heh, well... I don't have Minsc's loud voice, but I'm in for giving Irenicus a piece of what he deserves. */
DO ~SetGlobal("I#MinscImoenBodhi","GLOBAL",2)~ EXIT

CHAIN IMOEN2J I#MSIB22
@352 /* That's right, little <PRO_BROTHERSISTER>. We'll pay him back for the torture, the killings... all of it. And we'll do it together. */
DO ~SetGlobal("I#MinscImoenBodhi","GLOBAL",2)~ EXIT

CHAIN MINSCJ I#MSIB13
@353 /* Oh... Minsc did not mean to hurt <CHARNAME>'s ears. Let us keep our voices low for now, Boo, so that we may let them loose once we find that vile mage and give him a taste of righteous buttkicking! */
DO ~SetGlobal("I#MinscImoenBodhi","GLOBAL",2)~ EXIT

APPEND MINSCJ

////////////////////////
//ACORNS TALK (TALK #16)

IF WEIGHT #-1 ~Global("I#MinscAcorns","GLOBAL",1)~ I#Acorns00
SAY @354 /* Oh, Boo tells me that the scent of these acorns is sweeter than honey! But they are not for you Boo. They were entrusted to us for a noble mission! Is that not so, <CHARNAME>? */
IF~~THEN REPLY @355 /* Yes. Boo wouldn't really try and eat them, would he? */ GOTO I#Acorns01
IF~~THEN REPLY @356 /* I don't care if it's noble, but hopefully we'll get something of value for our trouble. */ GOTO I#Acorns02
IF~~THEN REPLY @357 /* Not now, Minsc. Put those back where you found them and get a move on. */ GOTO I#Acorns03
END

IF~~THEN BEGIN I#Acorns01
SAY @358 /* Of course not! Boo may be attracted to their delectable scent, but you were trusted with them, and we will help to protect them! */
IF~~THEN REPLY @359 /* Of course you will. */ GOTO I#Acorns04
IF~~THEN REPLY @360 /* That's a good Boo. */ GOTO I#Acorns04
IF~~THEN REPLY @361 /* Forgive me if the prospect of being protected by a hamster doesn't reassure me. */ GOTO I#Acorns03
END

IF~~THEN BEGIN I#Acorns02
SAY @362 /* Minsc thinks it is not right to demand a reward for doing the right thing. Good deeds are their own reward, don't you agree Boo? */
IF~~THEN REPLY @363 /* Right. Yes, of course. We're helping the dryads out of the goodness of our hearts. */ GOTO I#Acorns04
IF~~THEN REPLY @364 /* A good deed alone doesn't pay for food or a roof over our heads, Minsc. */ GOTO I#Acorns03
END

IF~~THEN BEGIN I#Acorns04
SAY @365 /* Do you hear that, Boo? Our friend <CHARNAME> has said the words of wisdom! We will raise our blades and strike for those in need of strong hearts and stronger arms! */
= @366 /* Yes, <CHARNAME> is a fine leader, Boo. <PRO_HISHER> leadership shall make us stronger and wiser, and evil shall quake in whatever path our heels tread! */
= @367 /* With <CHARNAME>, we will always have a purpose! No day shall be a boring day while we have <PRO_HIMHER> in the lead! Ha HA! */
IF~~THEN REPLY @368 /* It would be even greater if I could control that... */ GOTO I#Acorns05
IF~~THEN REPLY @369 /* Well, I wouldn't mind indulging in some boredom and be free of conflict for a while, but I don't see that happening any time soon. */ GOTO I#Acorns06
IF~~THEN REPLY @370 /* Right you are, Minsc! As long as we breathe, there will be no safety for the rears of evil-doers and no time to waste in punishing them! */ GOTO I#Acorns07
IF~~THEN REPLY @371 /* Whatever. We should get moving. */ GOTO I#Acorns03
END

IF~~THEN BEGIN I#Acorns05
SAY @372 /* The might of righteous fury should not be controlled, <CHARNAME>! It should be let loose upon the undeserving, that they may cower and regret their evilness! Isn't that right, Boo? */
= @373 /* *squeak* */
= @374 /* Boo says: 'Right!' */
IF~~THEN DO ~SetGlobal("I#MinscAcorns","GLOBAL",2)~ EXIT END

IF~~THEN BEGIN I#Acorns06
SAY @375 /* Worry not, <CHARNAME>! We will have our rest once we have rid this land of the stench of unpurified evil! Isn't that right, Boo? */
= @373 /* *squeak* */
= @374 /* Boo says: 'Right!' */
IF~~THEN DO ~SetGlobal("I#MinscAcorns","GLOBAL",2)~ EXIT END

IF~~THEN BEGIN I#Acorns07
SAY @376 /* Now you speak the language of Minsc! Yes, let evil cower as we come for their stinking rears, without pause or rest! */
= @373 /* *squeak* */
IF~~THEN DO ~SetGlobal("I#MinscAcorns","GLOBAL",2)~ EXIT END

IF~~THEN BEGIN I#Acorns03
SAY @377 /* Eh? Well, in any case... onward, Boo and friends! */
IF~~THEN DO ~SetGlobal("I#MinscAcorns","GLOBAL",2)~ EXIT END
END