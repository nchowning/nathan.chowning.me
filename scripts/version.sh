#!/bin/bash
DOCKER_REPO_NAME="yesimnathan/nathan.chowning.me"

VERSION=$(docker images|grep ${DOCKER_REPO_NAME}|awk '{print $2}'|grep -v latest|sort|tail -1)

# If no image exists, start us off at 0.1
if [ -z ${VERSION} ]; then
    echo -n "0.1"
    exit
fi

# Should we output the current version or iterate it by 1
ITERATE=0

while getopts ":hn" opt; do
    case $opt in
        h)
            cat << EOF
Usage: $(basename "$0") [-n]

Outputs the container image versions. If no flag is passed, outputs the
current container image version.

  -n    Output the next image version
EOF
            exit
            ;;
        n)
            ITERATE=1
            ;;
    esac
done

if [ ${ITERATE} -eq 1 ]; then
    if [ $(echo ${VERSION}|cut -d'.' -f2) -eq 9 ]; then
        echo -n "$(($(echo ${VERSION}|cut -d'.' -f1) + 1)).0"
        exit
    else
        echo -n "$(echo ${VERSION}|cut -d'.' -f1).$(($(echo ${VERSION}|cut -d'.' -f2) + 1))"
        exit
    fi
else
    echo -n ${VERSION}
fi
