activate application "Finder"
tell application "Finder"
	set source to (choose folder with prompt "Select directory")
	set my_files to get every file in source as alias list
	repeat with f in my_files
		set txt to (read f)
		set nm to my Summary(txt)
		set txt to my Strip(txt)
		my MakeNote(nm, txt)
	end repeat
end tell

on Summary(txt)
	set txt to strrep(txt, "'", "'\"'\"'")
	set cmd to "echo '" & txt & "' |sed -En 's/SUMMARY:(.*)/\\1/p'"
	set ret to do shell script cmd
	return ret
end Summary

on Strip(txt)
	set txt to strrep(txt, "'", "'\"'\"'")
	set txt to strrep(txt, "\\;", ";")
	set cmd to "echo '" & txt & "' |sed 's/^ //' |tr -d '\\r\\n' |sed 's/^[^<]*//' |sed 's/>[^>]*$/>/'"
	set ret to do shell script cmd
	return ret
end Strip

on strrep(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end strrep

on MakeNote(noteName, html)
	set html to strrep(html, "<BODY>", "<BODY><b>" & noteName & "</b><br/><br/>")
	tell application "Notes"
		set my_folder to "Entourage Notes"
		
		set my_acct to the name of account 1
		tell account my_acct
			if not (exists folder my_folder) then
				make new folder with properties {name:my_folder}
			end if
		end tell
		
		make new note at folder my_folder of account my_acct with properties {name:noteName, body:html}
	end tell
end MakeNote

