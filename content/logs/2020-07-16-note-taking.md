---
title: Note Taking
date: 2021-07-16T09:42:00-01:00
---

For some time i've been using [LogSeq](https://logseq.com) as my primary note taking tool, essentially an open source version of [Roam Research](https://roamresearch.com) it quick became a prime choice due to its offline first design. Over the past year it has been my source of reference and a method to store fleeting knowledge in a way I can easily access.

Like all good software tools, over time everything develops competitors. Roam gave birth to multiple tools in its wake, and many other tools gave birth to Roam. All have been missing some sort of killer feature for me, that was until last week.

[Obsidian](https://obsidian.md) has been on my radar for some time, primarily desktop based and more of a general note taking tool than outliner, I had always played a little with it and then moved back to LogSeq. Obsidian's big selling point is its modularity and a wealth of community plugins that bring new and exciting features into a normal note taking tool. Since my workflow mostly consisted around daily journals and outlining I was happy to see that Obsidian finally had plugins to support it. 

Last week, Obsidian announced the final missing piece of the jigsaw: a [mobile application](https://obsidian.md/mobile). Combined with their paid-for sync service you can now have access to your notes on the go! I think its finally time for me to move away from LogSeq.

The problem is, i've got nearly a year of notes in my LogSeq; 3090 commits to the repo, hundreds of journals, hundreds of pages. Thankfully, a recent LogSeq update allowed the conversion from their "LogSeq Markdown" to a more standard one, but Obsidian doesn't support Frontmatter and it'll require some sort of manipulation to convert between the two systems easily.

So today, i've decided that i'll work on a set of tooling to allow for easy migration, quick i've dubbed as "ObsSeq". The repository is created and the license is set to MIT, and hopefully over the next few weeks I can provide some decent tooling to assist with the migration.

[ObsSeq](https://github.com/nikdoof/obsseq)