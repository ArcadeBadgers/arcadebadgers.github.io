---
layout: post
author: "Stuckie"
title:  "January Prototype 2 - Derelict"
date:   2015-01-19 22:51:00
categories: prototype devlog derelict
---

Bit late with this but, life is really getting in the way of development again.

The derelict_ project was originally a Ludum Dare entry as well.

This time, I wanted to do a sortof Space Crusade style game, and completely overshot what I could cram into 48 hours.. as such, it was woefully incomplete, with the biggest gripe being a complete lack of feedback as to what was going on. You’d be able to attack, but you didn’t know if that attack was successful or not, so it always looked like nothing was happening. This was further compounded in that your characters had action points, and not everything cost the same, so you’d end up a bit stuck with a single action point left over that you perhaps couldn’t use, and no way of knowing without bringing up the bare UI, and switching characters and ending your turn.

It wasn’t great.

However, there was something there that interested me. So, I’ve stored it away, and added bits and pieces to the design doc over time, which has made it grow into quite the monster.

And it’s this monster I’ll be trying to prototype. Now, derelict_ does have some assets done already from the Ludum Dare experiment. They’re not great, and they certainly don’t quite fit what the ideas are for it going forward, however they’re still a starting point. Therefore the first hour was stripping out the assets from the old spritesheet and doing some tidyup, then importing them into GameMaker. Once this was done, some basic objects were made and a quick test room was thrown together to check everything looked ok on phone and tablet.

The original derelict_ had a three floor ship that was hastily designed and thrown together in a very short time. This time, I want procedurally generated ships - not too unlike your general procedural dungeon crawler, but to templated ship designs. Each ship is generally going to have a few core features - engines, cabins, airlocks, etc… but how they are laid out can be generated against a few blueprints. The blueprints are to effectively stop completely mental ship designs that just wouldn’t “feel” reasonable. We’ll want a core set of ship types - transporters, research, traders, seeders, scouts, etc… with some alien ones thrown in for fun. This gives plenty of generic missions to deal with too - rescue scientists, purge aliens, recover research… so lots of playability for not much work. Then of course, whose to say we’re confined to ships? We could do some space stations and planetary missions too. In fact, what will likely come first, is that of planetary stations, as they more closely resemble your standard cavern like design of a roguelike.

Sadly I didn’t get much further.

I spent a few more hours going over random generation of caverns and things ( of which there is a HUGE amount of information and support online for - roguelikes are popular after all ) and got some basic level generation done, but that was all.

It seems that trying to squeeze four prototypes out this month isn’t going to go quite to plan, so I may well stop now and just settle on derelict. I’ll see how the week pans out, and if I can even find time to start the next one!

> Stuckie