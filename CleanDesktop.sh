#!/bin/sh

ICON_STATUS=`defaults read com.apple.finder CreateDesktop`
if [ $ICON_STATUS -eq 0 ]
then
    NEW_STATUS=true
else
    NEW_STATUS=false
fi

defaults write com.apple.finder CreateDesktop -boolean $NEW_STATUS
killall Finder
