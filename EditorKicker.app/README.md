EditorKicker.app
================

$Release: 0.2.1 $


Overview
--------

EditorKicker.app is a small macOS application to handle `texteditor://` URL schema.
This application invokes any your favorite editor when you clicked 'texteditor://'
URL (for example texteditor://open?url=file://<file>&line=<number> ) in your browser.

This is very useful for web application development as you can open and edit
program files in your favorite editor with just one click in your browser.

EditorKicker.app is implemented in AppleScript and shell script, therefore
it will work on any macOS version and any CPU architecture.


Install
-------

1. Download [zip file](https://github.com/kwatch/EditorKickerApp/archive/refs/tags/v0.2.1.zip)
   from [download page](https://github.com/kwatch/EditorKickerApp/tags) and unzip it.
2. Control-click (or Right-click) `Setup.command` script and select 'Open'.
   Confirmation dialog will be displayed, then click 'Open' button.
3. Move EditorKicker.app to '/Applications' folder.
4. Double click EditorKicker.app under '/Applications' folder.
   This will generates `$HOME/.config/EditorKicker/command` file.
5. Open `$HOME/.config/EditorKicker/command` file and edit it to select text editor command.
6. Install command line tool of your favorite editor.
   See the next section for details.
7. Run `open texteditor://open?url=file://<filepath>&line=<number>` in Terminal.app
   and confirm that your favorite text editor will open the file.
   For example, `open texteditor://open?url=file:///Applications/EditorKicker.app/README.md&line=21`.


Command Line Tool for Editor
----------------------------

To use EditorKicker.app, you must install command line tool of your favorite
text editor into `/usr/local/bin`.
For example, if you like VS Code, you must install `/usr/local/bin/code` command.

The following sections show how to install command line tool for each text editor.


### VS Code

See: https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line

Or:

```console
[Terminal]$ sudo ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/
[Terminal]$ which code
/usr/local/bin/code
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/Visual Studio Code.app"
[Terminal]$ ls -d "$d"
/Applications/Visual Studio Code.app
[Terminal]$ x="$d/Contents/Resources/app/bin/code"
[Terminal]$ ls "$x"
/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which code
/usr/local/bin/code
```
-->

### TextMate

1. Menu: TextMate > Settings...
2. Select 'Terminal' icon tab.
3. Press 'Install' button.

Or:

```console
[Terminal]$ sudo ln -s "/Applications/TextMate.app/Contents/MacOS/mate" /usr/local/bin/
[Terminal]$ which mate
/usr/local/bin/mate
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/TextMate.app"
[Terminal]$ ls -d "$d"
/Applications/TextMate.app
[Terminal]$ x="$d/Contents/MacOS/mate"
[Terminal]$ ls "$x"
/Applications/TextMate.app/Contents/MacOS/mate
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which mate
/usr/local/bin/mate
```
-->

### Sublime

See: https://www.sublimetext.com/docs/command_line.html#mac

Or:

```console
[Terminal]$ sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/
[Terminal]$ which subl
/usr/local/bin/subl
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/Sublime Text.app"
[Terminal]$ ls -d "$d"
/Applications/Sublime Text.app
[Terminal]$ x="$d/Contents/SharedSupport/bin/subl"
[Terminal]$ ls "$x"
/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which subl
/usr/local/bin/subl
```
-->

### PyCharm

See: https://www.jetbrains.com/help/pycharm/working-with-the-ide-features-from-command-line.html

Or:

```console
[Terminal]$ sudo ln -s "/Applications/PyCharm CE.app/Contents/MacOS/pycharm" /usr/local/bin/
[Terminal]$ which pycharm
/usr/local/bin/pycharm
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/PyCharm CE.app"  # for community edition
[Terminal]$ ls -d "$d"
/Applications/PyCharm CE.app
[Terminal]$ x="$d/Contents/MacOS/pycharm"
[Terminal]$ ls "$x"
/Applications/PyCharm CE.app/Contents/MacOS/pycharm
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which pycharm
/usr/local/bin/pycharm
```
-->

### Emacs

```console
[Terminal]$ sudo ln -s "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient" /usr/local/bin/
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/Emacs.app"
[Terminal]$ ls -d "$d"
/Applications/Emacs.app
[Terminal]$ x="$d/Contents/MacOS/bin/emacsclient"
[Terminal]$ ls "$x"
/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which emacsclient
/usr/local/bin/emacsclient
```
-->

### MacVim

```console
[Terminal]$ sudo ln -s "/Applications/MacVim.app/Contents/bin/mvim" /usr/local/bin/
[Terminal]$ which mvim
/usr/local/bin/mvim
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/MacVim.app"
[Terminal]$ ls -d "$d"
/Applications/MacVim.app
[Terminal]$ x="$d/Contents/bin/mvim"
[Terminal]$ ls "$x"
/Applications/MacVim.app/Contents/bin/mvim
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which mvim
/usr/local/bin/mvim
```
-->

### CotEditor

See: https://coteditor.com/cot

Or:

```console
[Terminal]$ sudo ln -s "/Applications/CotEditor.app/Contents/SharedSupport/bin/cot" /usr/local/bin/
[Terminal]$ which cot
/usr/local/bin/cot
```

<!--
Or:

```console
## step by step way
[Terminal]$ d="/Applications/CotEditor.app"
[Terminal]$ ls -d "$d"
/Applications/CotEditor.app
[Terminal]$ x="$d/Contents/SharedSupport/bin/cot"
[Terminal]$ ls "$x"
/Applications/CotEditor.app/Contents/SharedSupport/bin/cot
[Terminal]$ sudo ln -s "$x" /usr/local/bin/
[Terminal]$ which cot
/usr/local/bin/cot
```
-->

### Zed

1. Menu: Zed > Install CLI

Or:

```console
[Terminal]$ sudo ln -s "/Applications/Zed.app/Contents/MacOS/cli" /usr/local/bin/zed
[Terminal]$ which zed
/usr/local/bin/zed
```

<!--
Or:

```console
[Terminal]$ d="/Applications/Zed.app"
[Terminal]$ ls -d "$d"
/Applications/Zed.app
[Terminal]$ x="$d/Contents/MacOS/cli"
[Terminal]$ ls "$x"
/Applications/Zed.app/Contents/MacOS/cli
[Terminal]$ sudo ln -s "$x" /usr/local/bin/zed
[Terminal]$ which zed
/usr/local/bin/zed
```
-->


Custom URL Schema Format
------------------------

EditorKicker.app supports the following URL format.

* `texteditor://<filepath>?line=<number>`
* `texteditor://open?file=<filepath>&line=<number>`
* `texteditor://open?url=file://<filepath>&line=<number>`

Examples:

* texteditor:///Applications/EditorKicker.app/README.md?line=21
* texteditor://open?file=/Applications/EditorKicker.app/README.md&line=21
* texteditor://open?url=file:///Applications/EditorKicker.app/README.md&line=21


Internal Details
----------------

EmacsKicker.app just runs shell script
`/Applications/EmacsKicker.app/Contents/SharedSupport/bin/emacskicker`.
You can customize this script as you like.


How to Create a Hander App in macOS
-----------------------------------

1. In Finder: 'Applications' > 'Utilities' > 'Script Editor.app'.
2. Menu: 'File' > 'New...'
3. Write the AppleScript program to invoke shell script (see below).
4. Menu: 'File' > 'Save...'.
   Enter 'Name', select 'File format' as 'Application', and press 'Save' button.
5. Create shell script `<YourApp>.app/Contents/SharedSupport/bin/<script>`
   and make it executable by `chmod` command.
6. Edit `<YourApp>.app/Contents/Info.plist` and register custom URL schema (see below).
7. Copy '<YourApp>.app' to 'Applications' folder.

AppleScript:

```applescript
--
-- please replace '<script>' with your script name
--
on open location input
	set appdir to POSIX path of (path to current application) as string
	set scriptfile to appdir & "/Contents/SharedSupport/bin/<script>"
	do shell script scriptfile & " " & (quoted form of input)
end open location
```

Shell script:

```sh
#!/bin/sh

set -eu

if [ $# = 0 ]; then
  echo "Usage: <script> foobar://open?url=file://<file>&line=<number>"
  exit 1
fi

link="$1"
file=$(echo $link | sed -E 's/foobar:\/\/open\?url=file:\/\/([^&]+)&.*/\1/')
line=$(echo $link | sed -E 's/foobar:\/\/open\?[^&]+&line=([0-9]+).*/\1/')

code -g "$file:$line"    # VS Code (for example)
```

Make the script executable:

```console
[bash]$ chmod +x <YourApp>.app/Contents/SharedSupport/bin/<script>
```

Info.plit: (add the following to the top of `<dict>`)

```xml
	<key>CFBundleURLTypes</key>
	<array>
		<dict>
			<key>CFBundleURLName</key>
			<string>YourApp URL</string>
			<key>CFBundleURLSchemes</key>
			<array>
				<string>foobar</string>
			</array>
		</dict>
	</array>
```


License and Copyright
---------------------

$License: MIT License $

$Copyright: copyright(c) 2023 kuwata-lab.com all rights reserved $
