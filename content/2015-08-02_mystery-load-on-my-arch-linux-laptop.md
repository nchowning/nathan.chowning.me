Title: Mystery load on my Arch Linux laptop
Date: 2015-08-02 10:46:39
Modified: 2015-08-02 10:46:39
Category: Linux
Tags: arch, linux
slug: mystery-load-on-my-arch-linux-laptop
Authors: Nathan Chowning

This weekend [PyOhio](http://pyohio.org) was taking place at the Ohio State University Union building. While sitting in one of the presentations yesterday, I noticed that my battery was a bit lower than I expected. This also lead to me noticing that my load average was hovering between 1 and 1.5 despite having very little running on my computer. I started investigating. I stopped a lot of services & applications, rebooted, booted into rescue.target (systemd's "single user-ish" mode), etc... No matter what, the load was consistently above 1 no matter what.

After poking around for a while, I tried unloading the virtualbox kernel modules - ```vboxdrv```, ```vboxnetflt```, and ```vboxnetadp```). My load started dropping like a bag of hammers. It looks like the problem driver is specifically ```vboxdrv```:

```
[root@earth ~]# modprobe vboxdrv
[root@earth ~]# uptime
 13:34:34 up 22:17,  1 user,  load average: 0.06, 0.17, 0.14
[root@earth ~]# uptime
 13:34:45 up 22:17,  1 user,  load average: 0.20, 0.20, 0.14
[root@earth ~]# uptime
 13:35:46 up 22:19,  1 user,  load average: 1.00, 0.42, 0.22
```

As you can see, load just immediately starts climbing. Let's unload it!

```
[root@earth ~]# rmmod vboxdrv
[root@earth ~]# uptime
 13:59:57 up 22:43,  1 user,  load average: 0.99, 1.07, 0.92
[root@earth ~]# uptime
 14:00:17 up 22:43,  1 user,  load average: 0.71, 1.00, 0.91
[root@earth ~]# uptime
 14:02:42 up 22:45,  1 user,  load average: 0.08, 0.63, 0.78
[root@earth ~]# uptime
 14:02:58 up 22:46,  1 user,  load average: 0.06, 0.60, 0.77
```

And just like that, load returns to normal. I guess now's a good time to switch to libvirt!
