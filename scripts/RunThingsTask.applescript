on run argv
	tell application "TimingHelper"
		set pr to front project whose name is (item 2 of argv)
		start task with title (item 1 of argv) project pr
	end tell
end run