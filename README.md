Entourage To Mountain Lion Notes
================================

This script will convert Entourage notes on a Mac to Mountain Lion notes.

<h2>Install</h2>
<br/>
Download this script and save it into your <tt>~/Library/Scripts/Applications/Notes</tt> 
folder.  If this folder does not exist, just create it - please see the Notes section below

<h2>Use</h2>
To import your notes from Entourage follow the steps below:

1. In Entourage, select the File/Export menu.
2. In the dialogue, check the "Items to an Entourage archive" radio button.
3. Select only the "Notes" type, click the next button
4. Keep the items in Entourage after they're archived (recommended)
5. Save the archive to a known location e.g. your desktop

Using the Finder:

1. Right-mouse click on the archive and select the "Show package contents" item from the context menu
2. Inside the archive there is a folder called "Notes", move it to a location outside the archive, like your desktop

If installing the script was successful:

1. Open the Notes application (located on your dock)
2. Click down the Script menu (located on the OSX menu bar) and select "Import Entourage Notes"
3. Select the "Notes" folder you placed on your desktop
4. Wait a bit and watch your notes appear!

If you couldn't install the script but just saved it to the Desktop:

1. Double-click on the script to open it
2. the AppleScript Editor will open
3. press the Run button
4. Select the "Notes" folder you placed on your desktop
5. Wait a bit and watch your notes appear!

<h2>Notes</h2>
Below you'll find some guidance with the above process:

<h3>Accessing the <tt>~/Library</tt> folder</h3>
On <i>Lion</i> and <i>Mountain Lion</i> this folder is hidden, thus to select it in the <i>Save As...</i> dialogue of the browser
it needs to be unhidden first.  You can accomplish this in a Terminal window with the following command:
<code style="display: block">
  # sudo chflags nohidden ~/Library
</code>
Note that you'll need sudo access to accomplish this.

<h3>Saving the script to the Desktop</h3>
If the above is too complicated for you, save the script into your Desktop and run it there instead

<h3>Github and Safari</h3>
Github doesn't offer functionality to download a single file so what you need to do is click on the github
link for the script file, click on the Raw button and save the page (Cmd-S) in <i>Page Source</i> format

<h2>Developer notes</h2>

Notes within a Entourage archive are stored in a VCalendar format, which is plain text, the body of which is essentially
HTML.  Since ML Notes are also HTML, it's only necessary to strip the headers of the files for the import to occur

<b>If the Script menu item is not visible on your machine:</b>

1. Run the Applications/Utilities/AppleScript Editor application
2. Invoke the Preferences dialogue (press Command-,)
3. Check the "Show Script menu in menu bar" box
4. Close the dialogue and exit the application

<h2>Possible enhancements</h2>

1. it would be nice if the script could look into the archive directly.  this would save the user the task of extraction

<h2>Support</h2>

I don't have much time to support stuff but you're always welcome to e-mail me and I'll see 
what I can do.  My address is e at arix dot com.

If you feel generous, donations are always welcome.  Here's my bitcoin address: 1NfcAiyjn6TJNdUqVnoA56xbHWHXj1uwts
