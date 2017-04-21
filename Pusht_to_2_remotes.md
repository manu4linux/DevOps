$ git remote add all git@github.com:manu4linux/DevOps.git

$  git config -l | grep '^remote\.'

`remote.github.url=git@github.comcast.com:mpaduri/DevOps.git
remote.github.fetch=+refs/heads/*:refs/remotes/origin/*
remote.origin.url=git@github.com:manu4linux/DevOps.git
remote.origin.fetch=+refs/heads/*:refs/remotes/github/*
remote.all.url=git@github.com:manu4linux/DevOps.git
remote.all.fetch=+refs/heads/*:refs/remotes/all/* `

$ git remote set-url --add --push all git@github.comcast.com:mpaduri/DevOps.git

$ git remote set-url --add --push all git@github.com:manu4linux/DevOps.git

$  git config -l | grep '^remote\.'

`remote.github.url=git@github.comcast.com:mpaduri/DevOps.git
remote.github.fetch=+refs/heads/*:refs/remotes/origin/*
remote.origin.url=git@github.com:manu4linux/DevOps.git
remote.origin.fetch=+refs/heads/*:refs/remotes/github/*
remote.all.url=git@github.com:manu4linux/DevOps.git
remote.all.fetch=+refs/heads/*:refs/remotes/all/*
remote.all.pushurl=git@github.comcast.com:mpaduri/DevOps.git
remote.all.pushurl=git@github.com:manu4linux/DevOps.git `

$  git push all master

`Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 525 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local objects.
To github.comcast.com:mpaduri/DevOps.git
   20a164b..803ea4c  master -> master
Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 525 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:manu4linux/DevOps.git
   20a164b..803ea4c  master -> master `

