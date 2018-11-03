#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Nathan Chowning'
SITENAME = 'nathan.chowning.me'
SITEURL = 'https://nathan.chowning.me'
SITETITLE = 'Nathan Chowning'
SITESUBTITLE = 'GNU/Linux System Engineer'
SITE_THUMBNAIL = 'https://www.gravatar.com/avatar/0b008feb00337569fdf13cbc7edfbe81?s=200'  # noqa

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

HEADER_LINKS = (
    ('authorization_endpoint', 'https://indieauth.com/auth'),
    ('token_endpoint', 'https://tokens.indieauth.com/token'),
    ('microsub', 'https://aperture.p3k.io/microsub/143'),
    ('micropub', ''),
)

# Menu
DISPLAY_PAGES_ON_MENU = True
# MENUITEMS = (
#     ('Projects', 'pages/projects.html'),
#     ('Résumé', 'pages/resume.html'),
# )
# Blogroll
LINKS = ()

# Social widget
SOCIAL = (
    ('email', 'mailto:nathan@chowning.me'),
    ('github', 'https://github.com/nchowning'),
    ('soundcloud', 'https://soundcloud.com/bosscillator'),
    ('telegram', 'https://t.me/yesimnathan'),
    ('twitch', 'https://twitch.tv/zashdance'),
    ('twitter', 'https://twitter.com/nbchowning'),
    ('youtube', 'https://youtube.com/channel/UC96H-DJgLzedz53KYSIutBw'),
)
INDIEAUTH = True
DISQUS_SITENAME = 'yesimnathan'

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True
