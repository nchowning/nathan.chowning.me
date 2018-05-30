Title: NoVIMber 10, 2014 - Continuing with Windows
Date: 2014-11-11 03:30:23
Modified: 2014-11-11 03:30:23
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-10-2014-continuing-with-windows
Authors: Nathan Chowning

Today we'll be picking up where we left off with windows in Vim. We're going to cover a couple more of the basic aspects: Moving windows around and resizing windows.

##Moving Windows##
There are a couple of ways to move windows around in Vim. The first one is "rotation" based. These rotation based movements will only work in the current row or column that the window exists in. It should also be noted that your cursor will remain in the same window when rotated.

```
CTRL-W r  Rotate windows right (row) or down (column)
CTRL-W R  Rotate windows left (row) or up (column)
```


You can also swap the current window with the "next" window. The next window would be the window to the right (row) or below (column) depending on your current layout. This command will move the cursor to the new window as well (which will be move to replace the previous window).

```
CTRL-W x  Swap current window with next window
```

When you're moving windows around, it's sometimes useful to change your current layout. Notice that the following movements correspond to the usual "h", "j", "k", "l" movement keys except they are capitalized. Also keep in mind that following commands will use the full height of your screen when moving left/right or the full width when moving up/down.

```
CTRL-W H  Make the current window the far-left window
CTRL-W J  Make the current window the bottom-most window
CTRL-W K  Make the current window the top-most window
CTRL-W L  Make the current window the far-right window
```

##Resizing Windows##
The basic operations for resizing windows in Vim are probably what you'd expect: you grow/shrink the current windows's height/width. As with most things in Vim, there is a bit more to it than that. To start off, let's look at making all of the windows consume an "equal" (or close to equal) height/width on your screen. This command can be a bit more complicated by the "winheight", "winwidth", "winfixheight", and "winfixwidth" settings. I'll touch on those in a later post. For now, let's just assume that none of those values have been set.

```
CTRL-W =  Make all windows equal in height & width
```

Now let's look at increasing/decreasing height/width of a window. Keep in mind that, as with pretty much every Vim command, you can preface these commands with a "count" to perform the action more than once. This can be particularly useful when resizing windows since adding/decreasing a single row/column at a time (the default if a count is not specified) is quite tedious.

```
:resize -N           Decreases window height by N rows
CTRL-W -             Same as :res -N

:resize +N           Increases window height by N rows
CTRL-W +             Same as :res +N

:vertical resize -N  Decrease window width by N columns
CTRL-W <             Same as :vertical res -N

:vertical resize +N  Increase window width by N columns
CTRL-W >             Same as :vertical res +N
```

Sometimes it's also useful to specify an explicit height/width of a window. We can do that too and as you'd imagine, the commands are strikingly similar to growing/shrinking a window. If a value is not given to these commands, they will default to "as big as possible" in which ever direction you're resizing.

```
:resize N           Set the height of the current window to N
CTRL-W _            Same as :res N
zN<CR>              Useful shortcut to get similar behavior to :res N. See note below

:vertical resize N  Set the width of the current window to N
CTRL-W |            Same as :vertical res N
```

**zN<CR>** does not share the same "default" behavior (if N is not provided) as **:res**. In my experience, **z<CR>** seems to have the same effect as **zt** (moving the current line to the top of the buffer).

That about covers it for today's post. At this point you should be able to move your windows around and resize them to fit your workflow more adequately. There are still other tricks that you can do to manipulate window sizes differently but that's a topic for yet another post! Happy Viming!

##Reference Material##
[Vim documentation: windows - window-moving](http://vimdoc.sourceforge.net/htmldoc/windows.html#window-moving")

[Vim documentation: windows - window-resize](http://vimdoc.sourceforge.net/htmldoc/windows.html#window-resize)
