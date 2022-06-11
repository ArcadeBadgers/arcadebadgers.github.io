---
layout: post
author: "Steven"
title:  "The Badgers and the GDPR"
date:   2018-05-19 12:30:00
categories: news gdpr
---

So, everyone has likely heard of the GDPR in one way by now.<br />
It's EU legislation to ensure privacy for end users, and give them the rights to enact it ( such as the right to delete. )<br />
As far as we're concerned... nothing really changes as we don't directly manage personal information at all - we rely on itch and steam et al to do that and request payouts.<br />
However, I did do a pass over all data that was being collected and decided on tearing out all analytics and things from the games and the site.<br />
As truth be told, it never gets looked at, and there may be issues amongst it anyway as ip addresses likely weren't anonymised at the time.<br />
So it's gone.

Arcade Badgers Limited ( to use the Sunday name ) is a husband and wife side project.<br />
It's not our main focus, as it doesn't pay the bills.<br />
And most of the time it's very difficult to do any Badger-related work due to day job commitments, kids, health, and just life in general.<br />
Case in point; Snake-A-Roid has past it's two year anniversary - and it's still not finished - and I've been politely reminded that Tiny Critters is about a decade of unfinished code as well.<br />
So for a two person team, working here and there, being able to deal with the GDPR just isn't feasible.. so the safest option is just to rip all the cookies and analytics out for the time being.<br />

This has meant going back through some projects I haven't touched in a while.<br />
[Germies][Germies] hasn't been looked at since 2013, and had a bunch of analytics in it. This has now been ripped out.<br />
The GameMaker Studio 1 projects; [Grim][Grim] and [Sploosh!][Sploosh] had no analytics either. Grim was going to, but we never actually got round to it.<br />
However, the GameMaker Studio 2 projects; [Blast Zone][BlastZone], [Froak][Froak], [Mini Dungeon Adventures][MiniDungeonAdventures] and [Pocket Planets][PocketPlanets] do send basic hardware stats to YoYo Games, as a way for tracking what hardware is playing what, so focus can be spent in the right areas. Until I can get some time to add something in-game to state this, I'll be releasing new builds of them to remove the stat sending as it's just a checkbox option in Main Options. As YoYo is the day job, I know how important these stats are to find issues, so I'll be turning them back on once I have everything in place.<br />
This leaves [Snake-A-Roid][SnakeARoid]... the original versions were done in GMS1. The current one and the 4TG Demo were done in GMS2, so the demo will be updated as well.

Finally... there are a few embedded widgets for itch and YouTube. The YouTube videos now use the no-cookie variant, and I don't believe the itch widgets do any cookie stuff outside their site.<br />
And with that, we should be GDPR compliant.<br />
It will complicate things should we ever want to do a multiplayer game... but we've enough to do with Snake-A-Roid at the moment!

On the positive side, I was able to do some minor bug fixing to a few of them along the way.<br />
[Froak][Froak] had a few annoying bugs where the frogs would get stuck in limbo on the lily pads, and the AI was particularly eccentric. The AI is now slightly less eccentric, and the limbo bug should no longer occur.<br />
[Pocket Planets][PocketPlanets] was locked to it's resolution of 1280x720 and didn't work in HTML5 at all.. I've fixed both these issues, though it's not playable on mobile devices as it uses a right click.<br />
[Mini Dungeon Adventures][MiniDungeonAdventures] also had a strange resolution limitation; which has now been lifted and should work on mobile devices too.<br />
[Blast Zone][BlastZone] again didn't scale, and wasn't mobile friendly. Now it is.

Still a few issues to get to in some games ( Froak doesn't scale yet, for instance ) and likely there'll be new ones from wedging in the scaling code without a huge amount of testing.. but at the very least, the GDPR issues have been dealt with for now.

[Germies]: http://germies.arcadebadgers.co.uk
[Grim]: https://arcadebadgers.itch.io/grim
[Froak]: https://arcadebadgers.itch.io/froak
[Sploosh]: https://arcadebadgers.itch.io/sploosh
[SnakeARoid]: https://arcadebadgers.itch.io/snake-a-roid
[MiniDungeonAdventures]: https://arcadebadgers.itch.io/mini-dungeon-adventures
[PocketPlanets]: https://arcadebadgers.itch.io/pocket-planets
[js1k]: http://www.js1k.com
[pollute]: https://js1k.com/2018-coins/demo/3088
[BlastZone]: https://arcadebadgers.itch.io/blast-zone
