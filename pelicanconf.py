#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Nathan Chowning'
SITENAME = 'nathan.chowning.me'
SITEURL = 'http://nathan.chowning.me'
SITETITLE = 'Nathan Chowning'
SITESUBTITLE = 'GNU/Linux System Administrator'
SITE_THUMBNAIL = 'http://www.gravatar.com/avatar/0b008feb00337569fdf13cbc7edfbe81?s=200'

THEME = 'themes/plumage'
DISPLAY_PAGES_ON_MENU = None
DISPLAY_CATEGORIES_ON_MENU = None
SUMMARIZE = False

COPYRIGHT_YEAR = 2018
MAIN_MENU = True

PATH = 'content'

TIMEZONE = 'EST'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = 'feeds/all.atom.xml'
CATEGORY_FEED_ATOM = None
TAG_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Menu
MENUITEMS = (
    ('Résumé', 'pages/resume.html'),
)
# Blogroll
LINKS = ()

# Social widget
SOCIAL = (
    ('twitter', 'http://twitter.com/nbchowning'),
    ('github', 'http://github.com/nchowning'),
)
DISQUS_SITENAME = 'yesimnathan'

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True
