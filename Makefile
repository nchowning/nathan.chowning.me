PY?=python
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

PORT=8000

DOCKER_REPO_NAME="yesimnathan/nathan.chowning.me"

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

RELATIVE ?= 0
ifeq ($(RELATIVE), 1)
	PELICANOPTS += --relative-urls
endif

help:
	@echo 'Makefile for nathan.chowning.me                                               '
	@echo '                                                                              '
	@echo 'Usage:                                                                        '
	@echo '   make html                    (re)generate the web site                     '
	@echo '   make clean                   remove the generated files                    '
	@echo '   make devserver [PORT=8000]   start/restart develop_server.sh               '
	@echo '   make stopserver              stop local server                             '
	@echo '   make image                   built & tag new container image               '
	@echo '   make container [PORT=8000]   run the latest container image                '
	@echo '   make push                    push current image to docker hub              '
	@echo '   make deploy-playbook         run deploy.yaml ansible playbook              '
	@echo '   make deploy                  runs image, push, and deploy-playbook actions '
	@echo '                                                                              '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html       '
	@echo 'Set the RELATIVE variable to 1 to enable relative urls                        '
	@echo '                                                                              '

html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
	[ -e keybase.txt ] && cp keybase.txt $(OUTPUTDIR)/

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

devserver:
ifdef PORT
	$(BASEDIR)/develop_server.sh restart $(PORT)
else
	$(BASEDIR)/develop_server.sh restart
endif

stopserver:
	$(BASEDIR)/develop_server.sh stop
	@echo 'Stopped Pelican and SimpleHTTPServer processes running in background.'

image:
	docker build -t $(DOCKER_REPO_NAME):latest -t $(DOCKER_REPO_NAME):$$($(BASEDIR)/scripts/version.sh -n) .

container:
	docker run --rm -p $(PORT):80 $(DOCKER_REPO_NAME):latest

push:
	docker push $(DOCKER_REPO_NAME):$$($(BASEDIR)/scripts/version.sh)
	docker push $(DOCKER_REPO_NAME):latest

deploy-playbook:
	ansible-playbook deploy.yaml

deploy: image push deploy-playbook

.PHONY: html help clean devserver stopserver image container push deploy-playbook deploy
