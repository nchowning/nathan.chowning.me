Title: NoVIMber 03, 2014 - Dealing with tabs and indentation
Date: 2014-11-03 23:10:46
Modified: 2014-11-03 23:10:46
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-03-2014-dealing-with-tabs-and-indentation
Authors: Nathan Chowning

If you're tasked with maintaining scripts written by other people (including your past self), consistent indentation is a problem. I can't count how many times I've opened a script and found it littered with tab characters and varying numbers of spaces. Before I can even attempt to fix a bug or add a feature, I have to clean it up and, depending on the length of the script, this can be a very time consuming endeavour. There has to be a better way!

First let's tackle some vim config options to set your preferred method of indentation. My preference is to use 4 spaces so my config would look something like this (keep in mind that a single double quote indicates that the remainder of a line is a comment):

```
set tabstop=4     " Width of a tab character
set shiftwidth=4  " Affects how automatic indentation occurs as well as the <<, >>, and == commands (see below)
set expandtab     " Changes intepretation of the <TAB> key. If set, <TAB> will insert 'softtabstop' spaces
" If softtabstop is unset, its default value will be tabstop
```

*__Note:__ For more details, the "Identing source code" post on the Vim Wiki (linked in the reference material below) has some useful information.*

Now it's time to get rid of those tab characters. Sure you could write up a little regex to do this (think :%s/\t/    /g) but let's take a look at some built-in commands for easily displaying & replacing tab characters.

```
:set list  Displays white characters in a file. Tab characters display "^I" by default and end-line
:retab     Converts all tab characters to the number of spaces set in tabstop if expandtab is set
```

So we've got our tab characters out of the way. What about lines that are indented with more/less than 4 spaces? We've got some nifty commands for that as well:

```
<<  Shift current line left by "shiftwidth"
>>  Shift current line right by "shiftwidth"
==  Trigger auto-indent on current line
```

So if I've got a line that's indented 2 spaces, I can use "==" to autoindent it. If that's not where I want it, I can use "<<" or ">>" to shift it (using spaces) in my desired direction. I don't know about you, but I think that's definitely more efficient than hopping into insert mode and adding slapping the space bar.

Until next time, Happy Viming!

__Reference Material__: [Beautiful Vim Cheat-Sheet Poster](http://vimcheatsheet.com/)

__Reference Material__: [Vim Wiki - Indenting source code](http://vim.wikia.com/wiki/Indenting_source_code)
