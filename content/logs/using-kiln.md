---
title: Using Kiln
date: 2021-06-29
---
Setting up [Kiln](https://git.sr.ht/~adnano/kiln) for this site has been quite the adventure, i've been using [Hugo](https://gethugo.com) for a few years and have grown accustomed to the way of working, ideally I would of continued using it for this site but getting Hugo to support Gemini markup is difficult at best. Kiln is in that sweet-spot of pure functionality and simplicity, keeping the key tools from other static site generators like Templates and link building, but using the in-built Go template language and a few extra actions to keep it simple.

I'm a newbie to Go development, but the code for Kiln is simple and easy to understand. I encountered a strange bug on [dimension.sh](https://dimension.sh) that would cause Kiln to SEGV on a build due to path walking, i've still not been able to identify _why_ but I was at least able to identify where the error occurred and how to mitigate it for the meanwhile.

Since i've been digging deep into the tool and how to configure it, i've been keeping notes of anything useful i've discovered. The documentation for Kiln is sparse at the moment but enough to get people working, hopefully over time it'll improve. I still have to navigate SourceHut's submission by mailing list patching, something i've not done for the best part of 15 years.

[Kiln Notes](/~nikdoof/notes/kiln.gmi)