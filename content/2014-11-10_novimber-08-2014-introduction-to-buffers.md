Title: NoVIMber 08, 2014 - Introduction to Buffers
Date: 2014-11-10 00:23:46
Modified: 2014-11-10 00:23:46
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-08-2014-introduction-to-buffers
Authors: Nathan Chowning

I got this out a little later than I had anticipated! Hopefully I'll have time to finish up my next post by the end of the day. I'd hate to perpetually be a day behind going forward! This is going to cover the very basics of buffers. Buffers can be a difficult concept to explain. A buffer is defined as the text of a file that is currently in memory. Think of it like this: when you open a file in Vim, it loads the contents of that file into memory and then displays that file to your current "window". A buffer does not have to be attached to a window though. We'll touch on windows a bit more in another post. For now we'll focus on buffers and the default single window that gets created when Vim starts.

##Buffer Types##
There are 3 different buffer types:

```
Active    Is displayed to a window and file contents have been loaded into the buffer
Hidden    Is not displayed to a window but file contents have been loaded into the buffer
Inactive  Is not displayed and does not contain any text
```

##Buffer Basics##
You can open a file in a new buffer with:

```
:edit /path/to/file
```

By default this will open /path/to/file into a new buffer and attach that buffer to your active window. If your current active buffer has been modified, you might see *"E37: No write since last change (add ! to override)"*. By default an active buffer cannot become a hidden buffer if it has unsaved modifications. If you give it the ! to override, it will revert all of your modifications in the buffer. If you want to keep your modifications, you can do so with:


```
:set hidden  Allows a buffer to become hidden when on
```

It's useful to be able to see what buffers currently exist and to be able to switch between them at will. The next couple of commands will help with that:

```
:buffers  Displays a list of current buffers
:ls       Same as :buffers
```

Let's look at some example output of that:

```
:buffers
  1 #h   "file1"                        line 1
  2      "file2"                        line 0
  3 %a + "file3"                        line 2
```

Each buffer is assigned a unique number that will not change - the number in the first column. The values in the second column are "indicators". Here are a few of the indicators that are relevant to this example:

```
#  Alternate buffer (more on that below)
h  Hidden buffer
%  Buffer that is in the current window
a  Active buffer
+  Modified buffer
=  Readonly buffer
```

All of those are self-explanatory except for the alternate buffer.

##The Alternate Buffer##
The alternate buffer provides an easy way to flip between two buffers in Vim. In the above example, file3 is our active buffer attached to our current window. file1 is our alternate buffer. We can switch to the alternate buffer with:

```
:edit #  Edit the alternate buffer
CTRL-^   Same as :e #. On most keyboards ^ is on the 6 key, in that case this command would be CTRL-6
```

Once I've flipped to the alternate buffer, my previous buffer will become the new alternate buffer. I can get back to it by flipping a second time.

##Moving Between Buffers##
If you're editing more than two buffers, things get a little more complicated. There are several ways to switch between multiple buffers.

```
:buffer [N]  Edit buffer N
:bnext       Edit next buffer
:bNext       Edit previous buffer
:bprevious   Same as :bNext
```

All of these commands are referencing the buffer number. If you're on buffer 2 and you use __:bn__, that will put you on the next highest numbered buffer. If 2 is the highest numbered buffer, it will wrap you around to the lowest numbered buffer. As you'd imagine, __:bp__/__:bN__ works the same way.

##Conclusion##
That's about all I'm going to cover in today's post. We'll cover more buffer related stuff after we've covered the basics of windows in Vim. Happy Viming!

##Reference Material##
[Vim documentation: windows](http://vimdoc.sourceforge.net/htmldoc/windows.html)
