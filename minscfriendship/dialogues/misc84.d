BEGIN misc84

CHAIN IF ~True()~ THEN misc84 BOO-0
@0 /* Squeak? */
END
IF~Global("I#BooTalks","GLOBAL",0)~THEN REPLY @1 /* Oh, Boo. I just wanted to say I'm glad you're still with us. I hoped our adventures together wouldn't end at the Sword Coast. */ DO ~SetGlobal("I#BooTalks","GLOBAL",1) RealSetGlobalTimer("I#BooTime","GLOBAL",1600)~ EXTERN misc84 BOO-1
IF~Global("I#BooTalks","GLOBAL",1) RealGlobalTimerExpired("I#BooTime","GLOBAL")~THEN REPLY @2 /* I still haven't told you how sorry I am about Dynaheir, Boo. */ DO ~SetGlobal("I#BooTalks","GLOBAL",2) RealSetGlobalTimer("I#BooTime","GLOBAL",1600)~ EXTERN misc84 BOO-2
IF~Global("I#BooTalks","GLOBAL",2) RealGlobalTimerExpired("I#BooTime","GLOBAL")~THEN REPLY @3 /* You know, Boo... life as a Bhaalspawn isn't easy. Sometimes I wonder if I'll ever have anything resembling a normal life. */ DO ~SetGlobal("I#BooTalks","GLOBAL",3) RealSetGlobalTimer("I#BooTime","GLOBAL",1600)~ EXTERN misc84 BOO-3
IF~Global("I#BooTalks","GLOBAL",3) RealGlobalTimerExpired("I#BooTime","GLOBAL")~THEN REPLY @4 /* Sometimes I wonder, Boo. Do you think there'll be another villain waiting for us after Sarevok and Irenicus? */ DO ~SetGlobal("I#BooTalks","GLOBAL",4) RealSetGlobalTimer("I#BooTime","GLOBAL",1600)~ EXTERN misc84 BOO-4
IF~Global("I#BooTalks","GLOBAL",4) RealGlobalTimerExpired("I#BooTime","GLOBAL")~THEN REPLY @5 /* I must admit, you're more worldly than I expected, Boo. Talking to you is an enlightening experience. */ DO ~SetGlobal("I#BooTalks","GLOBAL",5) RealSetGlobalTimer("I#BooTime","GLOBAL",1600)~ EXTERN misc84 BOO-5
IF~Global("I#BooUnderdark","GLOBAL",0) OR(14) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2200") AreaCheck("AR2201") AreaCheck("AR2202") AreaCheck("AR2203") AreaCheck("AR2204") AreaCheck("AR2205") AreaCheck("AR2206") AreaCheck("AR2207") AreaCheck("AR2208") AreaCheck("AR2209") AreaCheck("AR2210")~THEN REPLY @6 /* What do you think of the Underdark, Boo? Creepy, isn't it? */ DO ~SetGlobal("I#BooUnderdark","GLOBAL",1)~ EXTERN misc84 BOO-6
IF~Global("I#BooUnderwater","GLOBAL",0) AreaCheck("AR2300")~THEN REPLY @7 /* You must find it strange down here, beneath the ocean. */ DO ~SetGlobal("I#BooUnderwater","GLOBAL",1)~ EXTERN misc84 BOO-7
IF~~THEN REPLY @8 /* You're an interesting little creature, you know that, Boo? */ EXTERN misc84 BOO-8
IF~~THEN REPLY @9 /* Would you like a bit of bread crust, Boo? Here you go. */ EXTERN misc84 BOO-9
IF~~THEN REPLY @10 /* Your fur is nice and shiny today, Boo. It's almost glowing. */ EXTERN misc84 BOO-10
IF~~THEN REPLY @11 /* I sure hope Minsc is treating you well. Actually, I don't think I need to ask. */ EXTERN misc84 BOO-11
IF~TimeOfDay(DAY)~THEN REPLY @12 /* Ah, it's a fine day, isn't it Boo? */ EXTERN misc84 BOO-12
IF~TimeOfDay(NIGHT)~THEN REPLY @13 /* Mmm, nights like this are always great. I've always been a night owl, you know. */ EXTERN misc84 BOO-13
IF~HPPercentLT("MINSC",50) Global("I#BooMinscHurt","GLOBAL",0)~THEN REPLY @14 /* Your ranger is hurt, Boo. You need to watch over him carefully. Minsc isn't the best at taking care of himself. */ DO ~SetGlobal("I#BooMinscHurt","GLOBAL",1)~ EXTERN misc84 BOO-14
IF~ReputationGT(Player1,19)~THEN REPLY @15 /* Ah, we're all heroes, you and Minsc and I! Isn't that a great thing? */ EXTERN misc84 BOO-15
IF~PartyHasItem("HGHEART2")~THEN REPLY @16 /* Urgh, Boo. Are you sniffing Yaga-Shura's heart? Stop that. It's gross. */ EXTERN misc84 BOO-16
IF~Gender(Player1,FEMALE)~ THEN REPLY @17 /* I hope you won't object to Minsc making me his new witch, Boo. I wouldn't like to ignore your opinion. */ EXTERN misc84 BOO-17
IF~!Gender(Player1,FEMALE)~ THEN REPLY @18 /* I hope you won't object to Minsc making me his guide, Boo. I'm not trying to break tradition by calling myself his witch, but he seems happier finding a new purpose. */ EXTERN misc84 BOO-18
IF~~THEN REPLY @19 /* Er, nothing. */ EXTERN misc84 BOO-END

CHAIN misc84 BOO-1
@20 /* Squeak! */
END
IF~~THEN REPLY @21 /* Oh, you feel the same do you? How kind of you! */ EXTERN misc84 BOO-1-1
IF~~THEN REPLY @22 /* It's always better to work with people you know and trust, wouldn't you agree? */ EXTERN misc84 BOO-1-1
IF~~THEN REPLY @23 /* Although... between the two of us, I'm not so sure about the one you travel with, Boo. */ EXTERN misc84 BOO-1-1

CHAIN misc84 BOO-1-1
@24 /* Squeak. Squeak squeak! */ 
END
IF~~THEN REPLY @25 /* I know, I know. Still, everything will be fine as long as we're able to keep kicking evil butts together. */ EXTERN misc84 BOO-1-2
IF~~THEN REPLY @26 /* I've never been one to worry about the future. Then again, I suppose we all have our own fears. */ EXTERN misc84 BOO-1-2

CHAIN misc84 BOO-1-2
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-2
@20 /* Squeak! */
END
IF~~THEN REPLY @27 /* I know... I didn't expect things to change in so short a time. I wish I could've prevented it. */ EXTERN misc84 BOO-2-1
IF~~THEN REPLY @28 /* Maybe it'd be easier if I wasn't the one with all the responsibility to protect everyone else, Boo. */ EXTERN misc84 BOO-2-2
IF~~THEN REPLY @29 /* I don't want to talk about it, Boo. I just wanted to say sorry, that's all. */ EXTERN misc84 BOO-2-3

CHAIN misc84 BOO-2-1
@30 /* Squeak... */
END
IF~~THEN REPLY @31 /* I wish she were still with us. */ EXIT
IF~~THEN REPLY @32 /* Yes, well... let's not linger on painful memories. It's not what she would've wanted either. */ EXIT

CHAIN misc84 BOO-2-2
@33 /* Squeak! Squee squeak! */
END
IF~~THEN REPLY @34 /* Yes, you're right. Maybe that was a bit harsh. Sorry. */ EXTERN misc84 BOO-2-3
IF~~THEN REPLY @35 /* I think I have a bloody right to be angry, actually... bah, forget it. I'm done talking. */ EXTERN misc84 BOO-2-3

CHAIN misc84 BOO-2-3
@36 /* Squeak. */ EXIT

CHAIN misc84 BOO-3
@0 /* Squeak? */
END
IF~~THEN REPLY @37 /* Yes, I'm alright. I'm worse off than usual, but I suppose I'm not the only one who feels that way. You don't have to worry about me. */ EXTERN misc84 BOO-3-1
IF~~THEN REPLY @38 /* I'm not asking to be consoled, I'm just... angry. I wish all my troubles would just go away and leave me alone. */ EXTERN misc84 BOO-3-1
IF~~THEN REPLY @39 /* I don't want your pity, Boo. I wasn't asking for that. */ EXTERN misc84 BOO-3-1

CHAIN misc84 BOO-3-1
@40 /* Squeak! Squeak squeak! */
END
IF~~THEN REPLY @41 /* I really hope you're right, Boo. I'll be relieved if it ever does get better. */ EXTERN misc84 BOO-3-2
IF~~THEN REPLY @42 /* It's hard to believe in a change that shows no sign that it'll ever happen. */ EXTERN misc84 BOO-3-2

CHAIN misc84 BOO-3-2
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-4
@43 /* ... */
= @20 /* Squeak! */
END
IF~~THEN REPLY @44 /* A deity? I certainly hope not! You'd better not have jinxed it. */ EXTERN misc84 BOO-4-1
IF~~THEN REPLY @45 /* Well... I suppose it could happen. Anything seems possible these days. */ EXTERN misc84 BOO-4-1
IF~~THEN REPLY @46 /* You know what? That actually might be fun. Come at me, gods! */ EXTERN misc84 BOO-4-1
IF~~THEN REPLY @47 /* Why, oh why, can't we be threatened by something that isn't involved with divine blood and wretched fate? Just once I'd like to take on a cocoa monster for a change, or something equally ridiculous. */ EXTERN misc84 BOO-4-1

CHAIN misc84 BOO-4-1
@20 /* Squeak! */
END
IF~~THEN REPLY @48 /* You're right. Whatever lies ahead, we'll work together to overcome it. */ EXTERN misc84 BOO-4-2
IF~~THEN REPLY @49 /* If only optimism was enough to win us battles. */ EXTERN misc84 BOO-4-2

CHAIN misc84 BOO-4-2
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-5
@20 /* Squeak! */
END
IF~~THEN REPLY @50 /* Why, thank you. I'm honored to have a wise friend like yourself. */ EXTERN misc84 BOO-5-1
IF~~THEN REPLY @51 /* Erm, that's a bit much. Just forget I ever said anything, alright? */ EXTERN  misc84 BOO-5-2

CHAIN  misc84 BOO-5-1
@52 /* Squeak. Squeak! */
END
IF~~THEN REPLY @53 /* Thanks. I appreciate your support, Boo. Really. */ EXTERN  misc84 BOO-5-2
IF~~THEN REPLY @54 /* Okay, okay, that's enough. We've got more important things to worry about. */ EXTERN  misc84 BOO-5-2

CHAIN  misc84 BOO-5-2
@20 /* Squeak! */ EXIT

CHAIN  misc84 BOO-6
@55 /* Squeak. Squee! */
END
IF~~THEN REPLY @56 /* Me neither. It's too dark. Not to mention that... well, I'm not as sensitive to scents as you are, my little friend, but the air here is certainly different. */ EXTERN misc84 BOO-6-1
IF~~THEN REPLY @57 /* Oh, it's not that bad. But it is different. Very different. */ EXTERN misc84 BOO-6-1
IF~~THEN REPLY @58 /* I think I like it here. I'm not sure why, but... maybe it's the lack of sun? I'm not a huge fan of high temperatures, light and all of that. */ EXTERN misc84 BOO-6-1

CHAIN misc84 BOO-6-1
@30 /* Squeak... */ 
END
IF~~THEN REPLY @59 /* Wait, what? You're allergic to spores? As in, from myconids and the like? I didn't know that! */ EXTERN misc84 BOO-6-2
IF~~THEN REPLY @60 /* Sorry, but you'll just have to deal with it, Boo. */ EXTERN misc84 BOO-6-2

CHAIN misc84 BOO-6-2
@20 /* Squeak! */
END
IF~~THEN REPLY @61 /* No wonder you don't like it here. I'll get us all out as soon as I see a chance, I promise. */ EXTERN misc84 BOO-6-3
IF~~THEN REPLY @62 /* Yes, yes, I know, but we're here by necessity. Just... endure it for the moment, alright? */ EXTERN misc84 BOO-6-3

CHAIN misc84 BOO-6-3
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-7
@63 /* Squeak. Squeeeeak... */
END
IF~~THEN REPLY @64 /* Yes, I too am worried that the ocean might fall upon our heads. */ EXTERN misc84 BOO-7-1
IF~~THEN REPLY @65 /* You're afraid of a little water? Don't be such a wimp! */ EXTERN misc84 BOO-7-1

CHAIN misc84 BOO-7-1
@0 /* Squeak? */
END
IF~~THEN REPLY @66 /* Ha! Unfortunately, I don't foresee a likely chance of tackling demonic jellyfishes. Not that I'm opposed to the idea. */ EXTERN misc84 BOO-7-2
IF~~THEN REPLY @67 /* What nonsense. Please don't waste our time when we're in such a troublesome place, Boo. */ EXTERN misc84 BOO-7-2

CHAIN misc84 BOO-7-2
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-8
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-9
@68 /* Squeak! *munch munch* */ EXIT

CHAIN misc84 BOO-10
@69 /* Squeak! Squee? */
END
IF~~THEN REPLY @70 /* Yes, it's very manly. */ EXTERN misc84 BOO-10-1
IF~~THEN REPLY @71 /* Uh... sure. Whatever you say. */ EXTERN misc84 BOO-10-1
IF~~THEN REPLY @72 /* Hey, there's more to being a man than luscious fur, you know! You've got to think about responsibility too! */ EXTERN misc84 BOO-10-1

CHAIN misc84 BOO-10-1
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-11
@20 /* Squeak! */ EXIT

CHAIN misc84 BOO-12
@20 /* Squeak! */
END
IF~~THEN REPLY @73 /* Yes, I agree. Another day, another adventure, just how I prefer it. Otherwise there's not much point to living, right? */ EXTERN misc84 BOO-12-1
IF~~THEN REPLY @74 /* Well... I'm not *that* excited about it. I get what you mean, but I would rather have some peace and quiet from time to time. */ EXTERN misc84 BOO-12-1

CHAIN misc84 BOO-12-1
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-13
@75 /* Squeak! Squeak squeak? */
END
IF~~THEN REPLY @76 /* Ha! No, I'm not actually related to any owls. As far as I'm aware, anyway. */ EXTERN misc84 BOO-13-1
IF~~THEN REPLY @77 /* Well, who knows. Maybe there really is a demigod-owl-hybrid Bhaalspawn somewhere out there. */ EXTERN misc84 BOO-13-1
IF~~THEN REPLY @78 /* You must be joking. I've never even heard of a half-owl before. */ EXTERN misc84 BOO-13-1

CHAIN misc84 BOO-13-1
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-14
@20 /* Squeak! */
END
IF~~THEN REPLY @79 /* Well, yes. He is somewhat of a raging bear out there. *sigh* That Minsc... */ EXTERN misc84 BOO-14-1
IF~InParty("WILSON")~THEN REPLY @80 /* He and Wilson are a perfect match in the battlefield. */ EXTERN misc84 BOO-14-1
IF~~THEN REPLY @81 /* I wonder if there's secretly a calm soul under that man's layers of muscle and flesh, just waiting to be set free. Eh? */ EXTERN misc84 BOO-14-1

CHAIN misc84 BOO-14-1
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-15
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-16
@82 /* Squeak! *barf* */
END
IF~~THEN REPLY @83 /* It smells like evil, does it? I'm not surprised. */ EXTERN misc84 BOO-16-1
IF~~THEN REPLY @84 /* Yes, 'barf' indeed. Very disgusting. */ EXTERN misc84 BOO-16-1

CHAIN misc84 BOO-16-1
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-17
@85 /* Squeak! Squeak squeak. */
END
IF~~THEN REPLY @86 /* Good. If you have no issues, then I'm satisfied. */ EXTERN misc84 BOO-17-1
IF~~THEN REPLY @87 /* That's all I needed to hear. */ EXTERN misc84 BOO-17-1

CHAIN misc84 BOO-17-1
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-18
@20 /* Squeak! */
END
IF~~THEN REPLY @86 /* Good. If you have no issues, then I'm satisfied. */ EXTERN misc84 BOO-18-1
IF~~THEN REPLY @88 /* I know you care about Minsc's feelings. I'm not trying to insult you by breaking Rashemi tradition, Boo. If you're alright with it, then that's all I need to hear. */ EXTERN misc84 BOO-18-1

CHAIN misc84 BOO-18-1
@20 /* Squeak! */
EXIT

CHAIN misc84 BOO-END
@20 /* Squeak! */ EXIT
 