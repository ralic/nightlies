#!/usr/local/bin/bash

dataset="rpool/src/freebsd"
branch="svn_stable_9"

directory=$(zfs get -H -ovalue mountpoint ${dataset})

cd ${directory}

git fetch upstream
git merge upstream/${branch}
git push github
