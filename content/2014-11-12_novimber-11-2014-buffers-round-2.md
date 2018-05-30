Title: NoVIMber 11, 2014 - Buffers round 2
Date: 2014-11-12 00:15:16
Modified: 2014-11-12 00:15:16
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-11-2014-buffers-round-2
Authors: Nathan Chowning

Before we get into Vim's tabs, I'd like to cover a couple more things that you can do to manipulate buffers in Vim.

##Adding & Deleting Buffers##
In my previous buffer post, I talked about creating new buffers with the **:e** command. That will create a new buffer, load its contents, and attach it to your current window. Let's say that you want to create a new buffer but you don't want to load the corresponding file's contents into memory and attach it to your current window:

```
:badd filename    Add a new buffer for filename to the buffer list without loading its contents
:badd N filename  Same as :bad filename except positions cursor on line number N
```

I failed to cover the deletion of buffers in my previous post. There are a few different ways to "delete" buffers. You can unload the buffer (freeing the memory it was consuming), you can make the buffer "unlisted", or you can completely delete the buffer. In the following examples, BUFF can represent a unique buffer number or buffer name.

```
:bunload BUFF   Unloads buffer BUFF freeing the memory it previously consumed. It will remain in the buffer list
:bdelete BUFF   Delete (make unlisted) buffer BUFF
:bwipeout BUFF  Same as :bd BUFF except actually deletes buffer instead of unlisting
```

It's important to note that "unlisted" buffers will not be displayed in **:ls** or **:buffers** by default. You can display listed and unlisted buffers by adding ! to either command (**:ls!**).

##Additional Buffer Movement Commands##
We've already covered displaying a specific buffer with **:b N** and flipping through the buffers sequentially with **:bn** and **:bp**. There are a few additional methods to navigate buffers.


```
:brewind  Go to the first buffer in your buffer list
:bfirst   Same as :br
:blast    Go to the last buffer in your bufferlist
```

With pretty much all of these buffer commands, you can add "s" to the beginning (**:sbn**) to split your current window and load the resulting buffer into a new window. In the example case of **:sbn**, it would split your current window (horizontally) and attach your "next" buffer to the new window. To accomplish this with a vertical split, you would do something like **:vert sbn**.

##Conclusion##
That's all for today. I'd like to mention that I forgot to add "Reference Material" links to yesterday's post. This oversight has been corrected! Happy Viming!

##Reference Material##
[Vim Wiki: Buffer FAQ](http://vim.wikia.com/wiki/Vim_buffer_FAQ)

[Vim documentation: windows - buffer-list](http://vimdoc.sourceforge.net/htmldoc/windows.html#buffer-list)
