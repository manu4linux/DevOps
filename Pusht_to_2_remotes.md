$ git remote add all git@github.com:manu4linux/DevOps.git

$  git config -l | grep '^remote\.'
remote.github.url=git@github.comcast.com:mpaduri/DevOps.git
remote.github.fetch=+refs/heads/*:refs/remotes/origin/*
remote.origin.url=git@github.com:manu4linux/DevOps.git
remote.origin.fetch=+refs/heads/*:refs/remotes/github/*
remote.all.url=git@github.com:manu4linux/DevOps.git
remote.all.fetch=+refs/heads/*:refs/remotes/all/*

$ git remote set-url --add --push all git@github.comcast.com:mpadur001c/DevOps.git
$ git remote set-url --add --push all git@github.com:manu4linux/DevOps.git

$  git config -l | grep '^remote\.'
remote.github.url=git@github.comcast.com:mpadur001c/DevOps.git
remote.github.fetch=+refs/heads/*:refs/remotes/origin/*
remote.origin.url=git@github.com:manu4linux/DevOps.git
remote.origin.fetch=+refs/heads/*:refs/remotes/github/*
remote.all.url=git@github.com:manu4linux/DevOps.git
remote.all.fetch=+refs/heads/*:refs/remotes/all/*
remote.all.pushurl=git@github.comcast.com:mpadur001c/DevOps.git
remote.all.pushurl=git@github.com:manu4linux/DevOps.git

$  git push all master

