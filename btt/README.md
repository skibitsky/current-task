# BetterTouchTool
Shows Current Task on MacBook's Touch Bar.

This is how my Touch Bar looks like with the active Current Task on the left:

![My Touch Bar](https://github.com/skibitsky/current-task/raw/master/images/Touch%20Bar%20Shot%202019-07-15%20at%2016.08.32.png)
## Instruction

0. Create `Shell Script/Task` widget
1. Add `Run Apple Script (async in background)`  action and insert the following code into it:
```applescript
tell application id "com.runningwithcrayons.Alfred" to run trigger "stop current task" in workflow "com.skibitsky.currenttask" 
```
You will need it if you want to stop the task.  [Alfred workflow](https://github.com/skibitsky/current-task/raw/master/alfred-workflow/current-task-v1.0.alfredworkflow) is required. If you don't use Alfred, you can add more actions to run these scripts:
Clear Curren Task file
```shell
echo > $HOME/Library/Mobile\ Documents/iCloud~is~workflow~my~workflows/Documents/Current\ Task/ct.txt
```
Stop Timing Task
```applescript
tell application "TimingHelper"
    stop current task with notification
end tell
```
Stop Focus app
```shell
open focus://unfocus
```
2. In the "Widget Specific" section add the following script to show Current Task on Touch Bar:
```
{ cat $HOME/Library/Mobile\ Documents/iCloud~is~workflow~my~workflows/Documents/Current\ Task/ct.txt }
```
