Title: NoVIMber 02, 2014 - Screen alignment based on cursor position
Date: 2014-11-03 17:00:00
Modified: 2014-11-03 17:00:00
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-02-2014-screen-alignment-based-on-cursor-position
Authors: Nathan Chowning

The ideas are flowing in! I think I've already come up with enough ideas for NoVIMber posts to last me a week or so!

Far too often I find myself typing on the top or bottom line of my window and wanting to reference lines above or below that are no longer visible. In emacs, C-l would make your current cursor line the center line in the buffer. Pressing C-l again would make your current cursor line the top line of the buffer. Pressing C-l a third time would make your current cursor line the bottom line of the buffer. This is very handy but how can we do it in Vim? Easy!

__Bringing your cursor line to the top of the window:__

```
zt - Redraw cursor line at the top of the window
```

Alternatively, you can do z&lt;CR&gt; (&lt;CR&gt; represents "carriage return" or "enter" on your keyboard). The primary difference between z&lt;CR&gt; and zt is that zt will maintain your cursor's position (column) on the cursor line whereas z&lt;CR&gt; will bring your cursor to the beginning of the first non-whitespace character on the cursor line once redrawn.

__Bringing your cursor line to the middle of the window:__

```
zz - Redraw cursor line at the center of the window
```

As with zt & z&lt;CR&gt;, we have a second command that can perform a similar operation. "z." will redraw the cursor line at the center of the window but will not preserve your cursor's position (column) on the line. __It should also be noted__ that you'll want to be careful using zz if you're also a regular caps lock user. zz and ZZ (write & exit) are two VERY different commands.

__Bringing your cursor line to the bottom of the window:__

```
zb - Redraw cursor line at the bottom of the window
```

Just like the previous examples, there is a second command that performs similarly to zb: "z-". Again, "z-" will not preserve your cursor's position (column) on the line.

That's all for today! Happy Viming!

__Reference Material__: [Beautiful Vim Cheat-Sheet Poster](http://vimcheatsheet.com)

__Reference Material__: [Vim documentation: scroll - Scrolling relative to cursor](http://vimdoc.sourceforge.net/htmldoc/scroll.html#scroll-cursor)
