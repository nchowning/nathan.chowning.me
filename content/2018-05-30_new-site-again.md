Title: New site again
Date: 2018-05-30 18:50
Modified: 2018-05-30 18:50
Category: General
Tags: python, pelican, docker
slug: new-site-again
Authors: Nathan Chowning

I've finally decided to give my site/blog some love again. To start out, look at this:

![Dat green lock]({filename}/images/green_lock.png)

Yep, I finally got SSL setup on here after many years of neglecting it. That's not all of the changes though.

### Source on github
I finally put the [source code for this site on github](https://github.com/nchowning/nathan.chowning.me). There's not much that's really terribly interesting with it - it's just a plain ole [Pelican](https://getpelican.com) static site generator setup. The most interesting thing is probably the [Dockerfile](https://github.com/nchowning/nathan.chowning.me/blob/master/Dockerfile) that installs all of Pelican's dependencies, builds the static files for my site, moves them to the right place for nginx, and then cleans up the source & extra python libraries. I'm also thinking about hacking the Makefile to build & auto-tag the container for me.

### Running in a container
I mentioned the Dockerfile for this site previously so I'd assume you figured out that the site is now running in a container. It's nothing fancy - static site files being served by nginx in a container - but it's a start!

### Traefik & Let's Encrypt
This part's pretty cool. I'm running a [Traefik](https://traefik.io/) container as a reverse proxy to this website's container (and more in the future). The way that Traefik learns about where to route traffic is super near & the config is very minimal. I love it so far.

On top of that, Traefik is handling every bit of the SSL encryption for me. Once I had the config setup, it reached out to [Let's Encrypt](https://letsencrypt.org/) to get the certs and started serving them. It was super easy to setup. I just followed [this guide](https://docs.traefik.io/user-guide/docker-and-lets-encrypt/).

### Using Ansible to automate this
All of this has been automated via [Ansible](https://www.ansible.com/) and it's awesome! I haven't made my ansible playbook source public yet since I need to potentially scrub some data but eventually I'll gladly share it!
