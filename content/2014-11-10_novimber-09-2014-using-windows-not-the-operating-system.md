Title: NoVIMber 09, 2014 - Using Windows (not the operating system)
Date: 2014-11-10 02:44:42
Modified: 2014-11-10 02:44:42
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-09-2014-using-windows-not-the-operating-system
Authors: Nathan Chowning

In "yesterday's" post, we covered the basics of buffers. Today we're going to talk about windows in Vim. A window is basically a viewport that buffers can attach to. This gives us access to the buffer so that we can manipulate its contents. A buffer can be attached to mulitple windows or no windows. When you initially start Vim, a single window is created by default. If you're starting Vim with multiple files, you can use the "-o" or "-O" flags (on the commandline, not in Vim) to open all of the files in multiple windows:

```
-o  Open all files in windows split horizontally
-O  Open all files in windows split vertically

vim -o file1 file2 file2
```

As a general rule, window related commands will start with **CTRL-W**.

##Creating & Closing Windows##
There are lots of ways to create new windows:

```
:split    Split current window horizontally to create a new window. Both windows will be a viewport to the same file
CTRL-W s  Same as :split

:vsplit   Same as :split except split vertically
CTRL-W v  Same as :vsplit

:new      Same as :split except new window is an empty file
CTRL-W n  Same as :new

:vnew     Same as :new except split vertically

CTRL-W ^  Split current window and edit alternate file in new window
```

There are also several different ways to close windows. The most common would be **:q**uit. That's right, the quit command that we all use regularly closes our current window. When there is only one window, this will exit Vim. Let's look at some more ways to close windows:


```
CTRL-W q  Same as :quit
:qall!    Closes all windows and exits Vim. Fails if any buffers are unmodified unless ! is given.

:close!   Closes the current window. If buffer is unchanged, hidden is set, or ! is given the buffer becomes hidden. Otherwise the command fails
CTRL-W c  Same as :close

:only!    Make current window the only window on the screen. Other buffers will be hidden. 
CTRL-W o  Same as :only
```

It's important to note that passing ! to **:close** and **:only** is "safe". If modified buffers would be closed, the buffers will become hidden and modifications will be preserved.

##Moving Between Windows##
The basic commands to move your cursor between multiple windows are the same as the default cursor movement keys - "h", "j", "k", and "l" - with CTRL-W in front of them. You can also use CTRL-W with the arrow keys.


```
CTRL-W h  Move cursor to window that is left of current window
CTRL-W j  Move cursor to window that is below current window
CTRL-W k  Move cursor to window that is above current window
CTRL-W l  Move cursor to window that is right of current window

CTRL-W t  Move cursor to top-left window
CTRL-W b  Move cursor to bottom-right window
CTRL-W p  Move cursor to previous window
```

##Conclusion##
There's a lot more that I'd like to cover (moving windows around, resizing windows, etc...) but I'll save those for another post. At this point, you should be able to reasonably use buffers and windows to edit multiple files inside of a single instance of Vim. As it stands, I'm not really sure if this would improve my workflow (multiple Vim instances inside of a screen/tmux session). Only time will tell! Happy Viming!

##Reference Material##
[Vim documentation: windows](http://vimdoc.sourceforge.net/htmldoc/windows.html)
