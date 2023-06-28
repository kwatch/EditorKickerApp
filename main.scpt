on open location input
	set appdir to POSIX path of (path to current application) as string
	set scriptfile to appdir & "/Contents/SharedSupport/bin/editorkicker"
	do shell script scriptfile & " " & (quoted form of input)
end open location

set commandfile to (system attribute "HOME") & "/.config/EditorKicker/command"
try
	POSIX file commandfile as alias
on error
	set appdir to POSIX path of (path to current application) as string
	do shell script (appdir & "/Contents/SharedSupport/bin/editorkicker")
end try
