Title: NoVIMber 06, 2014 - The much neglected Command-line mode
Date: 2014-11-07 01:57:18
Modified: 2014-11-07 01:57:18
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-06-2014-the-much-neglected-command-line-mode
Authors: Nathan Chowning

Command-line mode allows you to execute "Ex" commands, searches, and filters. Ex is a line editor. Vi was originally written as a **v**isual **i**nterface for Ex. I know a lot of people that use command-line mode exclusively for a few common things:

```
:w   Write a file
:q   Quit a file without saving (append ! if you have made changes)

:[range]s/search/replace/  Basic search & replace

/searchstring  Forward search
?searchstring  Backward search
```

Until recently, I was also one of those people. In previous posts we've touched on a few specific Ex commands (:retab, :set list, and :reg come to mind). For today's post, I'd like to cover a few additional commands that could be useful.

__Help:__

For starters, let's cover a very useful and surprisingly underused/under-known command:

```
:help  Display Vim's help documentation in a new window

:help {command/subject}  Same as :help except jump to relevant section in documentation. Can include wildcards *, ?, and [a-z].
```

You'd be surprised how often this *could* come in handy... but I know very few people (myself included) that actually use it with any regularity. If you're not exactly sure what you're searching for, just try searching for something. I have had good success with finding information this way.

__History:__

```
:history  Display the history of ":" Ex commands

: + CTRL-P/CTRL-N  Scroll through your history (CTRL-P is "previous" line and CTRL-N is "next" line... like Emacs!)
```

This one is a no-brainer as well but is very underused. Let's say that you've executed several search & replace commands but you're missing more data than you thought. The first place you should look is at the :history of your search & replace commands to make sure you typed them correctly. It's also really useful to be able to scroll through your history and execute Ex commands again (by pressing <CR> once you've selected your desired command).

__Text Manipulation:__

The next few commands are going to kinda be lumped together since they're mostly dealing with the processing of text. Most of these commands follow the same syntax pattern:

```
:[range] command [arguments ...]
```

Before we get into commands that follow this syntax pattern, let's see how we can represent different ranges:

```
.  The current line
$  The last line of your file
%  Every line of your file
7  Line 7 of your file
```

You can also represent ranges and do basic math in these ranges:

```
1,5  Every line from line 1 to line 5 including lines 1 and 5
+10  10th line below current line (. is assumed in this case)
$-8  8th line from the bottom
```

__Global Actions__

Global actions are so powerful! Let's look at the syntax and a few examples.

```
:[range]g/pattern/command  Find *pattern* within *range* and execute *command* on that line

:g/redhat/p  Print lines matching "redhat"
:g/suse/d    Delete all lines matching "suse" (no bias here at all)
```

Fun fact: this is where the command line utility "grep" got its name (:g/re/p). I can't count the number of times that I've (incorrectly) used the search & replace command to remove entire lines that match a pattern. This is so much easier! I've linked the Vim Wiki page for Global actions below in the reference material. Check it out to see more of the cool stuff you can do.

__Filter Command__

If search & replace and global actions aren't powerful enough, you can even leverage external command line utilities to help you out.

```
:range!command  Execute *command* on *range* lines

:%!sort  Uses the "sort" command line utility to sort all lines in your file
```

If you do not specify a range, the command will just be executed and the results will temporarily be displayed on your window. You could also see why it's a bad idea to grant users sudo access to Vim haha!

Well that about covers it for today! We're almost a week into NoVIMber and there's still so much to cover. I might eventually double-back and pull from previous posts to elaborate on certain subjects since a few things have been skimmed.

Until next time, Happy Viming!

__Reference Material__: [Vim documentation: helphelp - :help](http://vimdoc.sourceforge.net/htmldoc/helphelp.html#:help)

__Reference Material__: [Vim Wiki - Power of g](http://vim.wikia.com/wiki/Power_of_g)

__Reference Material__: [Vim documentation: usr_20](http://vimdoc.sourceforge.net/htmldoc/usr_20.html)

__Reference Material__: [Vim documentation: cmdline](http://vimdoc.sourceforge.net/htmldoc/cmdline.html)
