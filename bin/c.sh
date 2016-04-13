#!/usr/bin/env bash
# c: c install repo_url

#
# setup
#
svnurl=""

#
# magic <git_url>
#
function magic()
{
    giturl=$1
    local IFS="/"

    arr=($giturl)
    arr[5]="trunk"
    unset arr[6]

    git2svn=${arr[@]}
    svnurl=${git2svn// //}
}

#
# check <git_url>
#

#
# bar <git_url>
#

#
# test
#
# giturl="https://github.com/gevent/gevent/tree/master/src/gevent"
# magic $giturl
# echo $svnurl


