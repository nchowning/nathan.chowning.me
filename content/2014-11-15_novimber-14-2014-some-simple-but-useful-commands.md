Title: NoVIMber 14, 2014 - Some simple but useful commands
Date: 2014-11-15 03:20:38
Modified: 2014-11-15 03:20:38
Category: Vim
Tags: linux, vim, NoVIMber 2014
slug: novimber-14-2014-some-simple-but-useful-commands
Authors: Nathan Chowning

I didn't get the opportunity to catch up on posts today. I'm thinking that researching a topic and writing a post every single day was a bit too ambitious. To give myself some additional project time and avoid burn-out, I'm going to cut it back to 3-4 posts per week (probably during the work week). Today's post is going to be something simple and short.

##Read Commands##

```
:read FILE  Insert the contents of FILE below cursor in current file
:read !CMD  Execute CMD and insert its output below cursor in current file
```

If I had known about these read commands earlier, it would've saved me so much time. For the first, if no filename is specified, it defaults to your current file (in its "saved" form). For the second, it's important to note that CMD is a shell command, not a Vim command. Notice the **!** filter command that I mentioned in <a href="http://nathan.chowning.me/blog/post/novimber-06-2014-the-much-neglected-command-line-mode/">NoVimber 06, 2014's post</a>.

##Replacing & Changing Text##

```
r CHAR  Replace character under cursor with CHAR
R       Enter "replace" mode
```

I already knew about the **r**eplace command. It's easy enough to use and I use it very reguarly. As for **replace mode**, I've frequently found myself getting into **replace mode** by accident. Long story short, **replace mode** is basically insert mode that replaces text instead of shifting existing text to insert new text.

```
~  Changes the case of character(s) under cursor
```

I've been meaning to commit this one to memory for a while. This also works for highlighted/selected text in visual mode. I'll cover visual mode in more depth in a later post. A quick explanation - you can enter visual mode with **v**, select some text with the movement keys (**h,j,k,l** or arrow keys), then press **~** to change the case of all selected text.

##Conclusion##
That's it for today. Like I said, simple and short! I'd still like to cover tabs in Vim but I haven't had a lot of time to actually learn about them myself. That's a task for next week. Until then, Happy Viming!
