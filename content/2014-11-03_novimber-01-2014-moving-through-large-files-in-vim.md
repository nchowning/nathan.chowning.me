Title: NoVIMber 01, 2014 - Moving through large files in VIM
Date: 2014-11-03 12:00:00
Modified: 2014-11-03 12:00:00
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-01-2014-moving-through-large-files-in-vim
Authors: Nathan Chowning

Let's get this NoVIMber 2014 movement under way with some simple movement shortcuts that I hadn't memorized previously. While using emacs, I really liked using C-v and M-v instead of having to move my hand and hit Page Up/Down. I've never put the time into learning the equivalent shortcuts in Vim until now. Vim actually has a couple of ways to navigate large files.

__Moving halfway through pages:__

```
^u - Half Page Up
^d - Half Page Down
```

Pretty self-explanatory. I'm commiting this to memory by remembering that "u" corresponds to "up" and "d" corresponds to "down".

__Moving through full pages__:

```
^b - Back a full page
^f - Forward a full page
```

Also self-explanatory. I'm remembery this as "b" for "Back" and "f" for "Forward".

One more thing I'd like to cover in this NoVIMber update - Moving to the first and last line of a file. Typically if I wanted to get to the first line in a file, I would just do ":1". That's not a *bad* way to do it but the recommended way is...

__Moving to the beginning and end of a file:__

```
gg - First line of file
G - Last line of file
```

For "gg", I'm remembering it as "go go" (yes, Inspector Gadget reference). It actually refers to the "goto line" command. If you provide a number to "gg" (ex: 5gg) you'll go to the *n*th line (line 5 in our example). If you provide no number, it defaults to line 1. "G" actually refers to the same command ("goto line") but defaults to the last line in a file rather than the first. "5gg" and "5G" would give you the same result.

That's all for this first NoVIMber 2014 update! I'll hopefully have another before the end of the day! Happy Viming!

__Reference Material__: [Beautiful Vim Cheat-Sheet Poster](http://vimcheatsheet.com/)

__Reference Material__: [Vim documentation: motion - Up-down motions](http://vimdoc.sourceforge.net/htmldoc/motion.html#up-down-motions)
