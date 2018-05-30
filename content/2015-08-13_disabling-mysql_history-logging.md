Title: Disabling ~/.mysql_history logging
Date: 2015-08-13 13:23:44
Modified: 2015-08-13 13:23:44
Category: Linux
Tags: linux, mysql
slug: disabling-mysql_history-logging
Authors: Nathan Chowning

If you haven't heard, there was a [nasty Firefox vulnerability](https://www.mozilla.org/en-US/security/advisories/mfsa2015-78/) discovered last week. The "tldr" is, malicious ads were able to read the contents of local files on your computer. According to Mozilla, there exploit leaves no traces behind so you can't really know if you were a victim. The jury is still out on whether or not ad-blocker software would have saved you either.

This situation has made me reevaluate some of the bad computing habits that I've formed over the years. This post is about disabling the mysql client's logging to ```~/.mysql_history```. It's easy enough to empty the contents of ```~/.mysql_history``` after adding a user or some such "sensitive" query... but that's also easy to forget. It's easier/safer for me to just disable the client logging entirely. There are two ways to accomplish this. The first (and probably easiest):

```
ln -sf /dev/null ~/.mysql_history
```

The other way is by setting the ```MYSQL_HISTFILE``` environment variable to ```/dev/null```:

```
export MYSQL_HISTFILE=/dev/null
```

I prefer the symlink approach since it didn't require me to update any of my dot files etc...
