#!/usr/bin/env bash
# c: c install repo_url

#
# setup
#
repoinfo=()
svnurl=""

#
# error_exit <error msg>
# file descriptor 1 is the stdout
# file descriptor 2 is the stderr
# 2>&1: stderr redirect 2 stdout
#
function error_exit()
{
    echo "$1" 1>&2
}

#
# magic <git_url>
#
function magic()
{
    giturl=$1
    local IFS="/"

    repoinfo=($giturl)
    repoinfo[5]="trunk"
    unset repoinfo[6]

    git2svn=${repoinfo[@]}
    svnurl=${git2svn// //}
}

#
# check <git_url>
#
function check()
{
    hostname = ${repoinfo[2]}
    if hostname != "github.com"
        error_exit "qin! need github repo url o"
    fi
}

#
# bar <git_url>
#

#
# test
#
giturl="https://github.com/gevent/gevent/tree/master/src/gevent"
magic $giturl
# echo $svnurl
echo ${repoinfo[2]}
echo ${repoinfo[${#repoinfo[@]}]}
