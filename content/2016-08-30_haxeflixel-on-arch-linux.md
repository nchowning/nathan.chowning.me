Title: HaxeFlixel on Arch Linux
Date: 2016-08-30 20:00
Modified: 2016-08-30 20:00
Category: Gamedev
Tags: Gamedev, video games
slug: haxeflixel-on-arch-linux
Authors: Nathan Chowning

I've been meaning to play around with HaxeFlixel for a while now. I've heard that it's great for rapid game development and can easily compile to several platforms. Today I decided to start digging in and give it a shot. Getting everything working on Arch hasn't been completely straight-forward so I figured I'd write a blog post about my experience in the hopes that it will help someone else in the future!

To start off, you'll need to install Haxe. Arch makes this part pretty easy but there are a couple of gotchas:

```
$ sudo pacman -S haxe
$ sudo mkdir /usr/share/haxe/lib
$ sudo chown USERNAME /usr/share/haxe/lib
$ sudo mkdir /usr/lib/haxe
```

`/usr/share/haxe/lib` is where we'll be installing our Haxe libraries. I opted to make my user the owner of that directory so I could avoid using `sudo` to install & switch versions of libraries. `/usr/lib/haxe` is where `haxelib` tries to place scripts etc... I'll come back to why that's important later.

Next you'll need OpenFL. This is where the complication begins. The current version of HaxeFlixel (4.1.1) does not support OpenFL > 3.6.1. To install 3.6.1, we can do:

```
$ haxelib install openfl 3.6.1
$ haxelib run openfl setup
```

This step will probably ask you for your Haxe library path. For me, the default was `/usr/share/haxe/lib` and that was fine with me. This will also install some other stuff.

Lastly we need to install HaxeFlixel:

```
$ haxelib install flixel
$ haxelib install flixel-tools
$ haxelib run flixel-tools setup
```

The last step will ask you if you'd like for it to place a `flixel` script in `/usr/bin`. If you did not create `/usr/lib/haxe` in the previous steps, this will fail. At the end, it will ask you which IDE you're using. I don't use an IDE so I selected the "None" option.

Everything should be installed now. It's a good idea to check & see which versions are installed/active:

```
$ haxelib list
actuate: [1.8.7]
box2d: [1.2.3]
flixel-addons: [2.1.0]
flixel-demos: [2.2.0]
flixel-templates: [2.0.2]
flixel-tools: [1.1.3]
flixel-ui: [2.1.0]
flixel: [4.1.1]
hxcpp: [3.3.49]
layout: [1.2.1]
lime-samples: [2.6.0]
lime: [2.9.1] 3.0.3
openfl-samples: [4.0.0]
openfl: [3.6.1] 4.0.3
swf: [2.2.3]
```

As you can see, I'm running lime version 2.9.1 and openfl version 3.6.1. That's perfect. If for some reason your current version is incorrect, you can fix that with:

```
$ haxelib set openfl 3.6.1
$ haxelib set lime 2.9.1
```

At this point, the [HaxeFlixel Getting Started page](http://haxeflixel.com/documentation/getting-started/) has you create a 'Hello World' application. If you have flash installed, testing your application with `lime test flash` should work just fine. Unfortunately `lime test neko` yields unpleasant results:

```
$ lime test neko

export/linux64/neko/haxe/ApplicationMain.hx:205: characters 57-75 : Warning : Use programPath instead
export/linux64/neko/haxe/ApplicationMain.hx:89: characters 42-60 : Warning : Use programPath instead
Called from /usr/share/haxe/std/neko/_std/EReg.hx line 200
Uncaught exception - load.c(237) : Failed to load library : ./regexp.ndll (libpcre.so.3: cannot open shared object file: No such file or directory)
```

My "gross" fix for this was:

```
$ sudo pacman -S pcre
$ sudo ln -s /usr/lib/libpcre.so /usr/lib/libpcre.so.3
```

That's definitely not an awesome solution to the problem and could cause other issues down the line but for now, it has resolved the issue for me. At this point, I was able to run the 'Hello World' application just fine!

I'm sure there will be other gotchas down the road. As I come across them, I'll attempt to document them here!
