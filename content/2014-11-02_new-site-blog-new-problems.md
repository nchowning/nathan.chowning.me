Title: New site & blog, new problems!
Date: 2014-11-02 00:10:50
Modified: 2014-11-02 00:10:50
Category: Vim
Tags: NoVIMber 2014, linux, vim
slug: new-site-blog-new-problems
Authors: Nathan Chowning

I've been working on this rewrite of my site/blog for about a day now. Everything was going smoothly until I went to deploy it to my web server. Long story short, I wrote the site using Python 2.7 and Django 1.7. My web server is CentOS 6 which currently only provides Python 2.6.x. Django 1.7 has a hard dependency for Python 2.7.x. Getting this to run on my existing web server was going to be a bit of a chore.

I decided to take a different route and stand this up on one of my CentOS 7 servers. After a couple of hours (and a little fighting with SELinux), here we are! This won't be a permanent home for my personal site but it'll do for now. I eventually plan on rebuilding my web server on CentOS 7. Once that happens, I'll migrate this back over.

Let's talk a little about the new site! I'll preface this by saying that I'm not an aspiring front-end developer haha. I considered going the twitter bootstrap route but writing my own html & css would be a good opportunity to at least TRY and become more competent in the front-end department. As for functionality - it's a work in progress. I whipped this up in a day so it's certainly no Wordpress clone but it does what I need it to do - for now. It'll be a fun little project to maintain and learn from. Heck I've already learned quite a bit just from tonight's deployment escapades.

I'll try to post here regularly when I add features or have anything cool to mention about the site.

__Update:__
You may notice that I'm currently using a self-signed cert. I plan on resolving that (buying a cert) in the future. The self-signed cert is just an intermediary solution.
