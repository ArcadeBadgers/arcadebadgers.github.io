---
layout: post
author: "Stuckie"
title:  "January Prototype 1 - Germies!"
date:   2015-01-11 20:34:00
categories: prototype devlog germies
---

So the first week is up, and real life got in the way as usual.

However, a few days were spent on Germies! and there’s enough to get a good feel of where it could go.

To begin with, some background on Germies… Germies was an accident. Originally made for Ludum Dare 19 in the final seven hours of the Jam, because I was ill from overworking and couldn’t do what I originally intended to do ( a sort of JetPac clone with a grappling hook, effectively. ) It was quite a hack job, had horrendous controls, and the entire game sat in one large cpp file. It then sat on the proverbial code shelf for quite a while until Arcade Badgers got underway and we revisted it for the One Game A Month challenge - to which it’s our only contribution so far! This version of Germies was written in HTML5 using the ImpactJS framework, and was more or less a direct port. And done in the last three days of the month, if I remember correctly. As this went fairly well, we decided to use this as the first official Badger game, and we reworked it - again in HTML5 and using ImpactJS - to the Germies! that got released via clay.io, and ended up on a few portals ( hello ToonGoggles! ) However, it didn’t quite get the success we hoped.. or any at all, really. I tried pushing the game around a few places, but got standard rejection notices with little in the way of what to fix or anything. We had had big plans for it, with updating it every so often with new features.. but we only pushed out one ( albeit with features we should’ve had day one ) and then we lost our passion for about a year until Grim came around. Getting rejected without any reason really knocks your confidence.

So, we certainly have a lot of new content waiting for the new Germies ( including a new sub-title ) from the original, and some new ideas we’ve had along the way.

On a more personal note, my Mum played Germies an awful lot, and we found out that she sits proudly on the top of one of the leaderboards. Sadly, we found this out only after her passing, but we’d love to have a new version of Germies in her memory and get it infront of as many people as we can.

With that, on with the dev log.

First thing to do, was to basically recreate the core of the last version in GameMaker. An easy enough thing to do. Surprisingly, the hardest part was figuring out how to structure the sprites and objects - do I want separate objects for each degradation, or simply use a stopped animation and change each frame ( effectively what happened in the HTML5 version anyway. ) And then, of course, are the Dr Pus animations. Again, separate objects, or one big one with frames to jump about with? In this case, I went with frames for the germs, and separate animated objects for Dr Pus - to make it easier to extend.

With the assets in, it was time to move on to the logic. Entity wise, the Germies are very simple. They keep track of their health, and change their animation as required. That’s it. All the chaining logic was performed via the game’s global manager ( or in what seems to be GM-speak, a Controller object ) GM also permits use of parents, so the core Germie logic was able to be put into a base entity, and the different types derived from it.

Now, the new Germies literally has different types of Germs that DO do different things… but that’s for later. For now, we’re just wanting to get the original up and running.

Anyway, back to the task at hand. The base Germ gets an alarm to handle losing it’s health over time, which decrements the image in 25% intervals until it becomes infected. Quick test of putting some Germs in a room and running it shows it all works. The core element to Germies is grouping them into squares and rectangles to clear them off the grid before they became infected. You get extra points for whatever is within the outline as well. The way it used to work was that it counted the sides of the shape - so for example, the circle germ was worth 1 point, the triangle germ worth 3, square and rhombus being 4, pentagon 5 and the hexagon 6. You effectively wanted to farm hexagons for the best score. This acted as a multiplier to the health of the Germ. The closer the germs got to infected, the higher your score. Fully infected germs were worth the most to clear - but, you had to encapsulate them to get rid of them. This actually made them slightly valuable in that the inner germs counted as multipliers again to the base germ multiplier. However; to keep the risk/reward ratio in balance, infected germs also caused adjacent germs to become infected quicker. So, if you weren’t careful, the infection could spread very quickly, and you’d lose all your hard work. That is Germies’ little hook. You can group squares together to get things cleared all you like.. but for the big points, you had to risk keeping some infected germs on your grid to use them as extra multipliers.

The HTML5 version deals with the grid in a bizarre way, in that I created a level in ImpactJS with the grid laid out - including the incubator areas where the germs spawn. I then offset this onto the screen, and just drew around it manually. I keep a separate array for where the germs are placed, and just splat this on top of the background grid. Not entirely sure why I went this way, as it’s somewhat redundant - especially as the only thing in the level was the grid… all the other elements were manually placed depending upon the orientation of the screen/device.

This time, I’m not doing any orientation flipping. I’ll have an option to switch outside of gameplay this time, rather than trying to handle it all dynamically. So we need a base game object - as we want more than just one mode this time - that handles the placement of germs, and the chaining of them.

Once that was done, we had the base HTML5 game running in GameMaker.

Now we want to extend it and see where we can take it. We want “Puzzle” levels, where a pre-set layout of Germies is available, and the player is then tasked with clearing them - like the staple of most puzzle games. We already have our “Survival” or “Endless” mode, as that’s effectively what we have just done. Ideally, we want to create our puzzle levels within GameMaker’s room editor so that we have a direct visual representation of what’s going on. To do this, we basically take what I did with the HTML5 version again, and work out offsets to the grid. Once we have that, we just iterate over the entities that have been created, and plonk them in our internal grid. The Survival mode will just be it’s own single room - same with any other modes that may be created - the only difference will be which grid object gets created.

So it looks like Germies will would work out fine, and be nice and extendible to what we were originally wanting. This is good news and - real life issues aside this week - has given us a bit of a boost to get things done.

Next week’s prototype will be derelict_, where most of the code won’t be quite as useful as Germies was, so hopefully I get to spend a bit more time on it.

> Stuckie