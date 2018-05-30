Title: NoVIMber 05, 2014 - Commands in insert mode
Date: 2014-11-06 00:19:02
Modified: 2014-11-06 00:19:02
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-05-2014-commands-in-insert-mode
Authors: Nathan Chowning

This post is going to cover commands that can be executed while in insert mode. There are a lot of these commands but I only plan on touching a few that were interesting to me.

First let's take a look at how you can get out of insert mode:

```
Getting out of Insert mode
<Esc>   End insert or replace mode finishing abbreviation
CTRL-[  Same as <Esc>
CTRL-C  Quit insert mode without checking for abbreviations. Does not trigger the "InsertLeave" autocommand.
```

If you don't like moving your hand to the <Esc> key, you could use CTRL-[ as a replacement. CTRL-C would probably work just as well in most cases but if you have anything that depends on the InsertLeave autocmd, that will not trigger with CTRL-C. If CTRL-C (or any other sequence) is easier for you, you could always map that to <Esc>. I personally map ndc> so that I can just mash the two together (in any order) and hop out of insert mode:

```
inoremap jk <esc>
inoremap kj <esc>
```

What if we want to delete some text without leaving insert mode?

```
Deleting text in Insert mode
CTRL-W  Deletes the word before your cursor
CTRL-U  Deletes all characters in the current line before your cursor
```

We can also insert the contents of a register without leaving insert mode!

```
Inserting text from a register in Insert mode
CTRL-R {register}         Insert the contents of a register. Once you press CTRL-R, a " (double quote) will appear under your cursor. Text is inserted as if you typed it with your keyboard.
CTRL-R CTRL-R {register}  Same as CTRL-R except the text will be inserted literally rather than as if you had typed it.
```

There are a couple of other CTRL-R variants. Check out the Vim documentation linked below for more details on those.

You can also manage line indentation without needing to go to command mode! I've already started using this one and it has made my life a lot better!

```
Managing indentation in Insert mode
CTRL-T    Insert a single "shiftwidth" size indent at the beginning of the current line
CTRL-D    Delete a single "shiftwidth" size indent from the beginning of the current line
0 CTRL-D  Delete all indentation in the current line
```


The last thing I'd like to cover is the ability to "literally" insert a character. For example, let's say that you have expandtab set but you want to insert a real tab character:

```
Inserting a "literal" character in Insert mode
CTRL-V  Insert follwing character literally
Example: CTRL-V <TAB> would insert a tab character at cursor location
```


There's a lot more that you can do inside of insert mode. I intentionally wanted to keep this post brief. I may touch on more of these commands in a later post.

Happy Viming!

__Reference Material__: [Beautiful Vim Cheat-Sheet Poster](http://vimcheatsheet.com/)

__Reference Material__: [Vim Documentation: insert - Special keys](http://vimdoc.sourceforge.net/htmldoc/insert.html)
