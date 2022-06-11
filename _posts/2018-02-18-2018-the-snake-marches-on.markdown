---
layout: post
author: "Steven"
title:  "The Snake Marches On"
date:   2018-02-18 12:30:00
categories: snake-a-roid releases
---

I should've put up a post last month but entirely forgot! It's been a hectic start to the year already with family life being somewhat challenging.
Ideally, we'd have had [Snake-A-Roid][SnakeARoid] out around the end of the month... sadly that's not looking very likely, as I've only just found time to sit down and get poking at the tutorial and attract modes.
They're going well, though... and once they're in, I've got the Steam integration to do, then a final pass over everything to tighten things up... so we're looking at end of March at the earliest. Which isn't too long away, so fingers crossed!

I'm strongly thinking on taking part in the 7DRL competition this year as well - the Seven Day Rogue-Like. I attempted to start it last year, did my usual of biting off more than I could chew, and promptly ran out of time.
I don't think I even had a player being able to wander around a grid... I started with infrastructure of being able to generate this and that, and stubs for everything that never got filled.. so there was a nice framework of stubbed code and not much else!
This year, I've been doing a few lunchtime experiments in preparation.. generating a few procedural levels in various ways and plomping a player character down to wander about.
I've also been pulling apart [Mini Dungeon Adventures][MiniDungeonAdventures] to try and modularise it so I can pinch bits from that, as it has a few nice little things that I was trying with last year's 7DRL that actually worked - a blueprint system for the levels. Granted, Mini Dungeon Adventures was always a fixed grid, but the logic behind it actually didn't care.. you could use any shape you wanted.

So we'll be going in with the idea of Mini Space Adventures... it'll be a bit different from a standard roguelike like Mini Dungeon Adventures was, but hopefully we can pull it off. From the few tests I've been doing, I've had all sorts of idea I want to try and implement... lets just hope I don't go overboard again! Lets just start with moving around a grid first, and progress from there, eh?

The 7DRL is the first full week of March, so that'll be a good break off from Snake-A-Roid, before going back for the final pass over as I won't be too close to it... I've previously found I've swung the difficulty between too easy and too hard, depending on how much I've worked on it before doing a gameplay pass, so a week of doing something else sound like it'll help with that.

Once Snake-A-Roid and Mini Space Adventures is done and out the way, we'll be looking at tidying up some of the jam games we've done, fixing a few bugs here and there, and then looking towards the next project.
For example, [Froak][Froak] has a few nasty bugs that actually halts play - it can get confused as to what grid cell it's sitting in. [Pocket Planets][PocketPlanets] also has a crash bug lurking around, that I never managed to find.. nor has it any win/lose condition so should add that. And Mini Dungeon Adventures is still too damn small on some monitors to play!
Also, looking at the stats, our next project should really be a new version of either Mini Dungeon Adventures or Pocket Planets... they've been the most popular things we've ever released. Pocket Planets still confuses us the most as it was meant for LD38 but not released till afterwards so it missed the usual exposure from being in a jam - yet it's over taken everything bar Mini Dungeon Adventures! [Sploosh][Sploosh] is sitting just below both of them as well... which is entirely different from either of them.

But first, it's Snake-A-Roid!
Here's hoping the next month goes well and there's no other surprises for us!

... OR MAYBE NOT!

I've just spent a few hours poking about in JavaScript for the [js1k][JS1k] competition and came up with [pollute][Pollute].
It's a little arcade shootery thing.. move the mouse to generate waste then turn around and shoot the waste for points.. you generate your own baddies, effectively.
Works better than I expected too!
Just a little bit of fun for a few hours... since I missed JS13k last year.

[Froak]: https://arcadebadgers.itch.io/froak
[Sploosh]: https://arcadebadgers.itch.io/sploosh
[SnakeARoid]: https://arcadebadgers.itch.io/snake-a-roid
[MiniDungeonAdventures]: https://arcadebadgers.itch.io/mini-dungeon-adventures
[PocketPlanets]: https://arcadebadgers.itch.io/pocket-planets
[js1k]: http://www.js1k.com
[pollute]: https://js1k.com/2018-coins/demo/3088
