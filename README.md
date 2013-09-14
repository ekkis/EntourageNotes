Entourage To Mountain Lion Notes
================================

This script will convert Entourage notes on a Mac to Mountain Lion notes.

<h2>Install</h2>
<br/>
Download this script and save it into your <tt>~/Library/Scripts/Applications/Notes</tt> 
folder.  If this folder does not exist, just create it.

<h2>Use</h2>
To import your notes from Entourage following the steps below:

1. In Entourage, select the File/Export menu.
2. In the dialogue, check the "Items to an Entourage archive" radio button.
3. Select only the "Notes" type, click the next button
4. Keep the items in Entourage after they're archived (recommended)
5. Save the archive to a known location e.g. your desktop

Using the Finder:

1. Right-mouse click on the archive and select the "Show package contents" item from the context menu
2. Inside the archive there is a folder called "Notes", move it to a location outside the archive, like your desktop

Open the Notes application:

1. Click down the Script menu (located on the OSX menu bar) and select "Import Entourage Notes"
2. Select the "Notes" folder you placed on your desktop
3. Wait a bit and watch your notes appear!

<h2>Notes</h2>
If the Script menu item is not visible on your machine:

1. Run the Applications/Utilities/AppleScript Editor application
2. Invoke the Preferences dialogue (press Command-,)
3. Check the "Show Script menu in menu bar" box
4. Close the dialogue and exit the application

<h2>Developer notes</h2>

Notes within a Entourage archive are stored in a VCalendar format, which is plain text, the body of which is essentially
HTML.  Since ML Notes are also HTML, it's only necessary to strip the headers of the files for the import to occur

<h2>Possible enhancements</h2>

1. it would be nice if the script could look into the archive directly.  this would save the user the task of extraction

<h2>Support</h2>

I don't have much time to support stuff but you're always welcome to e-mail me and I'll see 
what I can do.  My address is e at arix dot com.

