#!/bin/bash

TITLE='=Emacs='

running=`ps -eo fname | grep emacs | wc -l`

if [ $running -ne 0 ]
then
  if [ $# -ne 0 ]
  then
    emacsclient -n $*
  fi
  wmctrl -a "$TITLE"
else
  xfce4-terminal --title="$TITLE" --icon="~/.icons/emacs.png" --maximize -x emacs $*
fi
