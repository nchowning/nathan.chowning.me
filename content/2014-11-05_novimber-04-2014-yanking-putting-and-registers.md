Title: NoVIMber 04, 2014 - Yanking, Putting, and Registers
Date: 2014-11-05 01:27:19
Modified: 2014-11-05 01:27:19
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-04-2014-yanking-putting-and-registers
Authors: Nathan Chowning

It's November 4th which means it is time for my 4th NoVIMber blog post! Before I get into that, I wanted to throw out my plan for the next couple of weeks. So far, I've been covering fairly basic (but useful) topics. I plan on continuing that trend for the rest of the first week. Next week I'll be covering windows & buffers in a reasonable amount of detail: The week of windows & buffers! While using Emacs, I loved that I could have multiple files open in different buffers and flip through them without needing to drop back into a shell. Unfortunately I never put the time into learning this as a Vim user. Hopefully we'll all be proficient at windows & buffers next week! Onto the main course of this post!

##Yanking & Putting##
I'm primarily covering yanking & putting as a prerequisite to registers - the primary focus of this post. Registers are a very powerful feature of Vim that I didn't even know existed until yesterday. Think of a register as a variable inside of vim. If I delete or yank a word, that goes into a register which I can easily use to "put" the word later. Before we get into that too much, let's look at some basic yank and put commands:

```
d  The delete operator is essentially equivalent to "cut" unless the "null register" is used
y  The yank operator is basically equivalent to "copy"
p  The put operator "puts" the contents of a register after your cursor (for a value less than a line) or after your current line.
P  Same as "p" except the contents of a register are "put" before your cursor (for a value less than a line) or before your current line.
```

You can use these commands in combinaton with a "count" and a "motion". For example:

```
d2w  deletes the following 2 "words"
y5j  yanks the following 5 lines
dd   deletes the current line
5dd  deletes the current line and four more below it (for a total of 5 lines)
yy   yanks the current line
5yy  yanks the current line and four more below it (for a total of 5 lines)
```

##Registers##
Now that we've reviewed deleting & yanking a bit, let's talk about registers! Registers are accessed using the '"' (double-quote) command. For example, if you wanted to access register 0, you could use '"0'. There are 9 different types of registers but I'm only going to cover a few in this post.

__Unnamed Register__ - ""
If you've done something like "dd" or "yy" and then performed a put with "p", you've been using the unnamed register. This register is *almost* always filled with the values from delete, change, substitute, and yank commands regardless of whether a different register is specified. If you perform a put command with no specified register, the unnamed register is used by default.

__Numbered Registers__ - "0 through "9
Register 0 will always contain text from the most recent yank command unless another register is specified. 
Register 1 contains text from the most recent delete/change command unless another register is specified or the deleted/changed data is less than a line.

Registers 1 through 9 are basically "rotating" registers. Register 1 contains data from your most current delete/change, register 2 contains data from the previous delete/change, etc... When a new "non-small" delete/change takes place, the data from register 9 is dropped, the data from register 8 is moved to register 9, etc...

__Small delete Register__ - "-
The small delete register holds data from the most recent delete/change operation that is smaller than a full line unless a different register is specified.

__Named Register__ - "a though "z or "A through "Z
The named registers can be used as you see fit. Specifying a lowercase named register, "a for example, will replace the current value of the register with the text from your current yank/delete/change operation. Specifying an uppercase named register, "A, will append the text from your current yank/delete/change operation to any text that currently resides in that register.

Now how can we specify a register?

```
"zdd    deletes your current line and puts its contents into register "z
"Z10dd  deletes 10 lines (starting at current line) and appends their contents in register "z
"zp     puts the data from register "z below current line
```

So what if we want to see the contents of our registers? Glad you asked! There's a command for that too!

```
:registers  Displays the current contents of your registers
```

Now that we've covered the concept of registers, I'm sure your head is spinning with ideas that will help you use Vim more efficiently. I know mine was! There is a lot of ground to cover on this topic - I've only hit 4 of the 9 register types in this post. I'll probably cover the remaining registers and some other cool features in a later post.

Until tomorrow, Happy Viming!

__Reference Material__: [Vim documentation: change - registers](http://vimdoc.sourceforge.net/htmldoc/change.html#registers)
