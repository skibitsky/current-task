#!/bin/sh

TASK=$1
PROJECT=$2

echo $TASK > $HOME/Library/Mobile\ Documents/iCloud~is~workflow~my~workflows/Documents/Current\ Task/ct.txt
open focus://focus?minutes=25

osascript RunThingsTask.applescript $TASK $PROJECT