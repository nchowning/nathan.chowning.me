Title: NoVIMber 07, 2014 - Advanced searching
Date: 2014-11-08 02:42:25
Modified: 2014-11-08 02:42:25
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: novimber-07-2014-advanced-searching
Authors: Nathan Chowning

It's Friday night, I've got a glass of wine, an episode of Stargate SG-1 is playing in the background, and I'm ready to type some words about Vim! This little project has been way more rewarding than I could have expected!

Searching in an open file is an important aspect of efficiently editing in Vim. I briefly mentioned the basics of searching (forward and backward) in yesterday's post but let's see it again:

```
/searchstring  Forward search
?searchstring  Backward search
```

If you reach the end/beginning of a file, the default behavior is to "wrap" to the top/bottom of the file and start again. Sometimes this is really useful but sometimes it's annoying. Fortunately, it's easy to enable/disable:

```
:set nowrapscan  Disable search wrapping in a file
:set wrapscan    Enable search wrapping in a file
```

__Case Sensitive Searching:__

By default, search is case-sensitive. Searching for "thing" will not match "Thing", "THING", or "thinG". If you'd like to ignore casing you can do:

```
:set ignorecase            Ignore case when searching
:set ignorecase smartcase  Ignores case if pattern is all lower-case. Conforms to case if pattern contains any upper-case letters
```

__Regex Searching:__

You can also do some regex style searching, you just need to remember to escape certain things such as (), +, |, etc... For example:

```
/\(dog\)*        Matches empty string, dog, dogdog, dogdogdog, etc...
/dog\+           Matches dog, dogg, doggg, etc...
/dog\|cat        Matches dog or cat
/dogg\(y\|ies\)  Matches doggy and doggies
/[0-9]           Matches a number
/[^0-9]          Matches any non-number
```

There are also "predefined ranges" that you can use to match certain types of characters:

```
\a  Matches an alpha character [a-zA-z]
\d  Matches a digit
\D  Matches a non-digit
\s  Matches whitespace
\S  Matches non-whitespace
```

There are more of these predefined ranges that could be useful. I just found these to be the most useful!

Hopefully this will help you when you're searching for that special thing inside of a file! For more information and a more thorough explanation of the topics I mentioned here, check out the reference material below! Happy Viming!

__Reference Material__: [Vim documentation: usr_27](http://vimdoc.sourceforge.net/htmldoc/usr_27.html)
